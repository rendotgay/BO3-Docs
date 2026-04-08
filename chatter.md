# Chatter
Make the character talk to the player

## Self Audio
Plays audio only the player who triggers it can hear:
```cpp
function play_dialog( key )
{
    alias = self resolve_dialog( key );
    if( !IsDefined( alias ) )
        return;

    self playsoundtoplayer( alias, self );
}
```

## Positional Audio
Plays audio from the player who triggered it's position:
```cpp
function play_dialog_positional( key )
{
    alias = self resolve_dialog( key );
    if( !IsDefined( alias ) )
        return;

    playsoundatposition( alias, self.origin );
}
```

## Global Audio
Plays audio every player can hear:
```cpp
function play_dialog_global( key )
{
    alias = self resolve_dialog( key );
    if( !IsDefined( alias ) )
        return;

    players = GetPlayers();
    for( i = 0; i < players.size; i++ )
        players[i] playsoundtoplayer( alias, players[i] );
}
```

## Sound Aliases
1. Create or modify an imported audio alias `.csv`
2. Set the alias to `plr_` + `0-3` + `_alias_` + `0++`
	`0-3` repesents what player is saying the line, if you have multiple characters in your map
	Replace `alias` in `_alias_` with your alias name
	`0++ ` is an incremented count of variants for that alias.
	For example, an audio file for player 0 that is the third variant with the name `alias` would be:
		`plr_0_alias_2`

## Register Audio
```cpp
function __init__()
{
    callback::on_spawned( &on_player_spawned );
    level thread post_init();
}

function post_init()
{
    level flag::wait_till( "initial_blackscreen_passed" );

    if( !IsDefined( level.sndPlayerVox ) )
        level.sndPlayerVox = [];

    // Register dialog entries here
    // 30 is the cooldown in seconds
    // 4 is the number of variants that alias has
    register_dialog( "name", "alias", 30, 4 );
}


function register_dialog( key, suffix, cooldown, num_variants )
{
    if( !IsDefined( level.custom_dialog ) )
        level.custom_dialog = [];

    entry = SpawnStruct();
    entry.suffix       = suffix;
    entry.cooldown     = cooldown;
    entry.num_variants = num_variants;

    level.custom_dialog[ key ] = entry;
}

function on_player_spawned()
{
    self endon( "death" );
    self endon( "disconnect" );

    // Register dialog trigger scripts here
    self thread watch_trigger();
}
```

## Get Random Player
Select a random player to play the audio from
```cpp
function get_random_player()
{
    players = GetPlayers();
    return players[ RandomInt( players.size ) ];
}

function get_random_other_player()
{
    players = GetPlayers();

    // Solo check
    if( players.size <= 1 )
        return undefined;

    // Build a pool of everyone except self
    others = [];
    for( i = 0; i < players.size; i++ )
    {
        if( players[i] != self )
            others[ others.size ] = players[i];
    }

    return others[ RandomInt( others.size ) ];
}
```

## Examples
- No ammo dialog that repeats every 30 seconds until the player swaps to a weapon with ammo
	```cpp
	function watch_no_ammo()
	{
	    self endon( "death" );
	    self endon( "disconnect" );

	    while( true )
	    {
	        self waittill( "weapon_fired" );

	        currentWeapon = self GetCurrentWeapon();
	        if( !IsDefined( currentWeapon ) )
	            continue;

	        if( currentWeapon.clipsize <= 0 )
	            continue;

	        ammoInClip  = self GetWeaponAmmoClip( currentWeapon );
	        ammoInStock = self GetWeaponAmmoStock( currentWeapon );

	        if( ammoInClip == 0 && ammoInStock == 0 )
	        {
	            self play_dialog_positional( "ammo" );
	            while( true )
	            {
	                wait 30.0;

	                currentWeapon = self GetCurrentWeapon();
	                if( !IsDefined( currentWeapon ) )
	                    break;

	                ammoInClip  = self GetWeaponAmmoClip( currentWeapon );
	                ammoInStock = self GetWeaponAmmoStock( currentWeapon );

	                if( ammoInClip > 0 || ammoInStock > 0 )
	                    break; // they got ammo, exit inner loop

	                self play_dialog_positional( "ammo" );
	            }
	        }
	    }
	}
	```
- Close call dialog triggers when player drops below 25% health and then recovers
	```cpp
	function watch_close_call()
	{
	    self endon( "death" );
	    self endon( "disconnect" );

	    min_threshold = int( self.maxhealth * 0.25 );
	    max_threshold = int( self.maxhealth * 0.9 );
	    was_low = false;

	    while( true )
	    {
	        wait 0.2;

	        if( !IsDefined( self.health ) )
	            continue;

	        if( self.health <= min_threshold )
	        {
	            was_low = true;
	        }
	        else if( was_low && self.health >= max_threshold )
	        {
	            was_low = false;

	            if( !self laststand::player_is_in_laststand() )
	                self play_dialog( "close_call" );
	        }
	    }
	}
	```
- Grenade throw dialog (can be expanded for any grenade, not just frags)
	```cpp
	function watch_grenade()
	{
	    self endon( "death" );
	    self endon( "disconnect" );

	    while( true )
	    {
	        self waittill( "grenade_fire", grenade, weapon );
	        if( weapon.name == "frag_grenade" )
	            self play_dialog_positional( "frag" );
	    }
	}
	```
- Player downed dialog that has other players react to dialog if not solo, else downed player reacts
	```cpp
	function watch_downed()
	{
	    self endon( "death" );
	    self endon( "disconnect" );

	    while( true )
	    {
	        self waittill( "player_downed" );

	        // Pick a random player
	        players = GetPlayers();

	        if( players.size > 1 )
	        {
	            speaker = self get_random_other_player();
	            speaker play_dialog_global( "downed_other" );
	        }
	        else {
	            self play_dialog_global( "downed_self" );
	        }
	    }
	}
	```
- Player revived dialog
	```cpp
	function watch_revived()
	{
	    self endon( "death" );
	    self endon( "disconnect" );

	    while( true )
	    {
	        self waittill( "player_revived" );
	        self play_dialog_positional( "thankful" );
	    }
	}
	```