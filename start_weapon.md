# Custom Starting Weapon
Change the starting weapon on your map
## Basic
Add a single starting weapon for everybody
1. Open your map's GSC file in `usermaps/scripts/zm`
2. In your `main()` function, add:
	```cpp
	level.start_weapon = (getWeapon("GUN_NAME"));
	```
3. Replace `GUN_NAME` with the developer name for the weapon
## Scripted
Add a scripted event to decide the starting weapon
1. If you haven't already, copy `zm_usermap.gsc` from `Call of Duty Black Ops III/share/raw/scripts/zm`
2. In your maps folder in usermaps, paste `zm_usermap.gsc` into `scripts/zm`
### Randomized from list
1. Inside the `main()` function under `load::main();` in the pasted `zm_usermap.gsc`, add:
	```cpp
	level.start_weapons = [];
	level.start_weapons[level.start_weapons.size] = "GUN_ONE";
	level.start_weapons[level.start_weapons.size] = "GUN_TWO";
	level.start_weapons[level.start_weapons.size] = "GUN_THREE";
	```
2. Find the `giveCustomLoadout()` function and replace it with this:
	```cpp
	function giveCustomLoadout( takeAllWeapons, alreadySpawned )
	{
	    self GiveWeapon( level.weaponBaseMelee );  // Knife

	    if( !IsDefined( level.start_weapons ) || level.start_weapons.size == 0 )
	    {
	        self zm_utility::give_start_weapon( true );  // Fallback
	        return;
	    }

	    random_index = RandomInt( level.start_weapons.size );
	    start_wep_str = level.start_weapons[ random_index ];
	    start_wep = GetWeapon( start_wep_str );

	    self GiveWeapon( start_wep );
	    //self GiveMaxAmmo( start_wep );  // Full ammo
	    self SwitchToWeapon( start_wep );  // Auto-switch
	}
	```
### Set Weapon Per Character
1. Inside the `main()` function under `load::main();` in the pasted `zm_usermap.gsc`, add:
	```cpp
	level.start_weapons = [];
	level.start_weapons[level.start_weapons.size] = "GUN_ONE";
	level.start_weapons[level.start_weapons.size] = "GUN_TWO";
	level.start_weapons[level.start_weapons.size] = "GUN_THREE";
	```
2. Find the `giveCustomLoadout()` function and replace it with this:
	```cpp
	function giveCustomLoadout( takeAllWeapons, alreadySpawned )
	{
		self GiveWeapon( level.weaponBaseMelee );
		if( !IsDefined( level.start_weapons ) || level.start_weapons.size == 0 )
	    {
	        self zm_utility::give_start_weapon( true );  // Fallback
	        return;
	    }

		start_wep_str = level.start_weapons[ random_index ];
	    start_wep = GetWeapon( self.characterIndex );

	    self GiveWeapon( start_wep );
	    //self GiveMaxAmmo( start_wep );  // Full ammo
	    self SwitchToWeapon( start_wep );  // Auto-switch
	}
	```