# Electric Cherry
How to add Electric Cherry to your custom map
1. Download the file [here](https://mega.nz/#!Ud5DWBiZ!rqAOjEk1EJH7sr827jBZy3Ph6dkjzOD5FeaGU94VCM8) to:
	```
	Call of Duty Black Ops III/map_source/_prefabs/zm/
	```
	in either zm_core or your maps folder
2. Extract the model with Wraith and import it into APE
## Option 1 (Download premade GSC):
3. Download [`_zm_perk_electric_cherry.gsc`](files/_zm_perk_electric_cherry.gsc) and save it:
	```
	Call of Duty Black Ops III/share/raw/scripts/zm
	```
4. Open your map `.gsc` file in your maps `scripts/zm` folder
5. At the bottom of your perk imports, under
	```cpp
	#using scripts\zm\_zm_perk_staminup;
	```
	add:
	```cpp
	#using scripts\zm\_zm_perk_electric_cherry;
	```
6. Open your map `.csc` file in your maps `scripts/zm` folder
7. Repeat step 4 for your `.csc file`
8. In your maps folder in `Call of Duty Black Ops III/usermaps`, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
9. Add the following lines:
	```zone
	xmodel,p6_zm_vending_electric_cherry_off
	xmodel,p6_zm_vending_electric_cherry_on
	scriptparsetree,scripts/zm/_zm_perk_electric_cherry.gsc
	scriptparsetree,scripts/zm/_zm_perk_electric_cherry.csc
	```
## Option 2 (Create GSC Manually):
3. Open `_zm_perk_electric_cherry.gsc` in:
	```
	Call of Duty Black Ops III/share/raw/scripts/zm
	```
4. Find the line:
	```
	//TODO update these to proper settings
	```
	and change the `#define`'s to:
	```cpp
	#define ELECTRIC_CHERRY_PERK_COST                   2000
	#define ELECTRIC_CHERRY_PERK_BOTTLE_WEAPON          "zombie_perk_bottle_cherry"
	#define ELECTRIC_CHERRY_SHADER                      "specialty_blue_electric_cherry_zombies"
	#define ELECTRIC_CHERRY_MACHINE_DISABLED_MODEL      "p6_zm_vending_electric_cherry_off"
	#define ELECTRIC_CHERRY_MACHINE_ACTIVE_MODEL        "p6_zm_vending_electric_cherry_on"
	#define ELECTRIC_CHERRY_RADIANT_MACHINE_NAME        "vending_electriccherry"
	#define ELECTRIC_CHERRY_MACHINE_LIGHT_FX            "electric_cherry_light"
	```
5. Find:
	```CPP
	function enable_electric_cherry_perk_for_level()
	{

	}
	```
	and replace the entire function with:
	```cpp
	function enable_electric_cherry_perk_for_level()
	{	
		zm_perks::register_perk_basic_info( PERK_ELECTRIC_CHERRY, "electric_cherry", ELECTRIC_CHERRY_PERK_COST, "Hold ^3[{+activate}]^7 for Electric Cherry [Cost: &&1]", GetWeapon( ELECTRIC_CHERRY_PERK_BOTTLE_WEAPON ) );
		zm_perks::register_perk_precache_func( PERK_ELECTRIC_CHERRY, &electric_cherry_precache );
		zm_perks::register_perk_clientfields( PERK_ELECTRIC_CHERRY, &electric_cherry_register_clientfield, &electric_cherry_set_clientfield );
		zm_perks::register_perk_machine( PERK_ELECTRIC_CHERRY, &electric_cherry_perk_machine_setup );
		zm_perks::register_perk_host_migration_params( PERK_ELECTRIC_CHERRY, ELECTRIC_CHERRY_RADIANT_MACHINE_NAME, ELECTRIC_CHERRY_MACHINE_LIGHT_FX );
		
		zm_perks::register_perk_threads( PERK_ELECTRIC_CHERRY, &electric_cherry_reload_attack , &electric_cherry_perk_lost  );
		
		if( IS_TRUE( level.custom_electric_cherry_perk_threads ) )
		{
			level thread [[ level.custom_electric_cherry_perk_threads ]]();
		}

		init_electric_cherry();
	}
	```
6. Find:
	```CPP
	function electric_cherry_perk_machine_setup()
	{

	}
	```
	and replace the entire function with:
	```cpp
	function electric_cherry_perk_machine_setup( use_trigger, perk_machine, bump_trigger, collision )
	{
		use_trigger.script_sound = "mus_perks_ec_jingle";
		use_trigger.script_string = "electriccherry_perk";
		use_trigger.script_label = "mus_perks_ec_sting";
		use_trigger.target = "vending_electriccherry";
		perk_machine.script_string = "electriccherry_perk";
		perk_machine.targetname = "vending_electriccherry";
		if ( IsDefined( bump_trigger ) )
		{
			bump_trigger.script_string = "electriccherry_perk";
		}
	}
	```
7. Save and close the file
8. Open your map `.gsc` file in your maps `scripts/zm` folder
9. At the bottom of your perk imports, under
	```cpp
	#using scripts\zm\_zm_perk_staminup;
	```
	add:
	```cpp
	#using scripts\zm\_zm_perk_electric_cherry;
	```
10. Open your map `.csc` file in your maps `scripts/zm` folder
11. Repeat step 8 for your `.csc file`
12. In your maps folder in `Call of Duty Black Ops III/usermaps`, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
13. Add the following lines:
	```zone
	xmodel,p6_zm_vending_electric_cherry_off
	xmodel,p6_zm_vending_electric_cherry_on
	scriptparsetree,scripts/zm/_zm_perk_electric_cherry.gsc
	scriptparsetree,scripts/zm/_zm_perk_electric_cherry.csc
	```