#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#insert scripts\shared\shared.gsh;
#insert scripts\shared\version.gsh;

#using scripts\shared\ai\zombie_death;
#using scripts\shared\ai\zombie_utility;
#using scripts\shared\ai\systems\gib;

#using scripts\zm\_zm_daily_challenges;
#using scripts\zm\_zm_powerups;
#using scripts\zm\_zm_score;
#using scripts\zm\_zm_spawner;
#using scripts\zm\_zm_utility;

#insert scripts\zm\_zm_powerups.gsh;
#insert scripts\zm\_zm_utility.gsh;
#insert scripts\shared\ai\systems\gib.gsh;

#define NUKE_EFFECT "zombie/fx_powerup_nuke_zmb"

#precache( "string", "ZOMBIE_POWERUP_NUKE" );
#precache( "fx", NUKE_EFFECT );

#namespace zm_powerup_nuke_custom;

REGISTER_SYSTEM( "zm_powerup_nuke_custom", &__init__, undefined )

#define N_NUKE_SPAWN_DELAY 3
#define POINTS_PER 100

function __init__()
{
    level thread post_init();
    zm_powerups::add_zombie_powerup( "nuke", "p7_zm_power_up_nuke", &"ZOMBIE_POWERUP_NUKE", &zm_powerups::func_should_always_drop, !POWERUP_ONLY_AFFECTS_GRABBER, !POWERUP_ANY_TEAM, !POWERUP_ZOMBIE_GRABBABLE, NUKE_EFFECT );
}

function post_init()
{
    level flag::wait_till( "start_zombie_round_logic" );

    if( IsDefined( level._custom_powerups ) && IsDefined( level._custom_powerups[ "nuke" ] ) )
    {
        level._custom_powerups[ "nuke" ].grab_powerup = &grab_nuke;
    }
}

function grab_nuke( player )
{
    level thread nuke_powerup( self, player.team );
    player thread zm_powerups::powerup_vo( "nuke" );
    zombies = GetAiTeamArray( level.zombie_team );
    player.zombie_nuked = ArraySort( zombies, self.origin );
    player notify( "nuke_triggered" );
}

function nuke_powerup( drop_item, player_team )
{
    level thread nuke_delay_spawning( N_NUKE_SPAWN_DELAY );
    
    location = drop_item.origin;

    if( isdefined( drop_item.fx ) )
        PlayFx( drop_item.fx, location );

    level thread nuke_flash( player_team );
    wait( 0.5 );
    
    zombies = GetAiTeamArray( level.zombie_team );
    zombies = ArraySort( zombies, location );
    zombies_nuked = [];

    for( i = 0; i < zombies.size; i++ )
    {
        if( IS_TRUE( zombies[i].ignore_nuke ) ) continue;
        if( IsDefined( zombies[i].marked_for_death ) && zombies[i].marked_for_death ) continue;
        if( IsDefined( zombies[i].nuke_damage_func ) )
        {
            zombies[i] thread [[ zombies[i].nuke_damage_func ]]();
            continue;
        }
        if( zm_utility::is_magic_bullet_shield_enabled( zombies[i] ) ) continue;

        zombies[i].marked_for_death = true;
        if( !IS_TRUE( zombies[i].nuked ) && !zm_utility::is_magic_bullet_shield_enabled( zombies[i] ) )
        {
            zombies[i].nuked = true;
            zombies_nuked[ zombies_nuked.size ] = zombies[i];
            zombies[i] clientfield::increment( "zm_nuked" );
        }
    }

    for( i = 0; i < zombies_nuked.size; i++ )
    {
        wait( randomfloatrange( 0.1, 0.7 ) );
        if( !IsDefined( zombies_nuked[i] ) ) continue;
        if( zm_utility::is_magic_bullet_shield_enabled( zombies_nuked[i] ) ) continue;
        if( !IS_TRUE( zombies_nuked[i].isdog ) )
        {
            if( !IS_TRUE( zombies_nuked[i].no_gib ) )
                zombies_nuked[i] zombie_utility::zombie_head_gib();
            zombies_nuked[i] playsound( "evt_nuked" );
        }
        zombies_nuked[i] dodamage( zombies_nuked[i].health + 666, zombies_nuked[i].origin );
        level thread zm_daily_challenges::increment_nuked_zombie();
    }

    level notify( "nuke_complete" );

    n_points = zombies_nuked.size * POINTS_PER;
    if( n_points < 400 )
    {
        n_points = 400;
    }

    players = GetPlayers( player_team );
    for( i = 0; i < players.size; i++ )
        players[i] zm_score::player_add_points( "nuke_powerup", n_points );
}

function nuke_flash( team )
{
    if( IsDefined( team ) )
        GetPlayers()[0] PlaySoundToTeam( "evt_nuke_flash", team );
    else
        GetPlayers()[0] PlaySound( "evt_nuke_flash" );

    lui::screen_flash( 0.2, 0.5, 1.0, 0.8, "white" );
}

function nuke_delay_spawning( n_spawn_delay )
{
    level endon( "disable_nuke_delay_spawning" );
    
    if( IS_TRUE( level.disable_nuke_delay_spawning ) ) return;

    b_spawn_zombies_before_nuke = level flag::get( "spawn_zombies" );
    level flag::clear( "spawn_zombies" );
    level waittill( "nuke_complete" );

    if( IS_TRUE( level.disable_nuke_delay_spawning ) ) return;

    wait( n_spawn_delay );
    
    if( b_spawn_zombies_before_nuke )
        level flag::set( "spawn_zombies" );
}