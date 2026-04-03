# Electric Cherry
How to add Electric Cherry to your custom map
<sub>Just a heads up, this is a long and tedious process!</sub>

## Step 1: Exporting the model (Skip if using a different model!)
**Sharing the following model would be distributing copyrighted assets which is a crime!**
1. [Download Wraith](https://github.com/Scobalula/Greyhound) and run `Greyhound.exe`
2. Open Settings and ensure the following settings are checked:
### In-Game Settings
- ☑️ Load "XModels" from the game
### Model Settings
- ☑️ Export images with models
- ☑️ Export all available LODs
- ☑️ Export .XMODEL_BIN
### Image Settings
- ☑️ Export format: `TIFF`
3. Open Black Ops II from Steam and launch Mob of the Dead
4. In Greyhound, click `Load Game` and search for `p6_zm_vending_electric_cherry`
5. Highlight both the `_on` and `_off` models and click `Export Selected`

## Step 2: Porting the model (Skip if using a different model!)
1. From your Greyhound folder, open `exported_files\black_ops_2\xmodels`
2. Copy your `.XMODEL_BIN`'s to `Call of Duty Black Ops III\model_export\electric_cherry\` `p6_zm_vending_electric_cherry_off` and `p6_zm_vending_electric_cherry_on` respectively:
Copy your `.tiff`'s' in `/_images` and it's subfolders to `Call of Duty Black Ops III\texture_assets\electric_cherry\` `p6_zm_vending_electric_cherry_off` and `p6_zm_vending_electric_cherry_on` respectively
3. Open Asset Property Editor (APE) and create a new GDT if you don't already have one and save it to `Call of Duty Black Ops III\source_data`

## Step 3: p6_zm_vending_electric_cherry_off (Skip if using a different model!)
1. Create a new asset
```
Asset Name: p6_zm_vending_electric_cherry_off
Asset Type: xmodel
GDT File: <your gdt>
```
2. Scroll down to LOD 0 and add your `p6_zm_vending_electric_cherry_off.XMODEL_BIN` file
3. Under `Materials` create a new Material for `mtl_p6_zm_al_glass_frosted_clear_center` and set it up like so:
```
Material Type: glass_transparent
Surface Type: glass
Gloss Range: glass
Usage: tools
```
4. Under `Color` create a new image for `Color Map` and set the `Texture` to `~-gzombie_vending_electric_cherry_c.tiff`
5. Under `Specular and Gloss` create a new image for `Gloss Map` and set the `Texture` to `~~-gglass_frosted_panel_spc-r~568cfc3f.tiff`
6. Back to the model, create a new Material for `mtl_p6_zm_vending_electric_cherry_off` and set it up like so:
```
Material Type: lit
Surface Type: metal
Gloss Range: metal
Usage: tools
```
7. Under `Color` create a new image for `Color Map` and set the `Texture` to `~-gzombie_vending_electric_cherry_c.tiff`
8. Under `Normal` create a new image for `Normal Map` and set the `Texture` to `zombie_vending_electric_cherry_n.tiff`
9. Back to the model, create a new Material for `zm_al_blood_drips_run_medium` and set it up like so:
```
Material Type: lit_alphatest
Surface Type: metal
Gloss Range: metal
Usage: tools
```
10. Under `Color` create a new image for `Color Map` and set the `Texture` to `~-gglo_dec_mature_blood_splt_~c028c2d0.tiff`
11. Under `Normal` create a new image for `Normal Map` and set the `Texture` to `glo_dec_blood_splat_drip_run_medium_n.tiff`

## Step 4: p6_zm_vending_electric_cherry_on (Skip if using a different model!)
1. Create a new asset
```
Asset Name: p6_zm_vending_electric_cherry_on
Asset Type: xmodel
GDT File: <your gdt>
```
2. Scroll down to LOD 0 and add your `p6_zm_vending_electric_cherry_on.XMODEL_BIN` file
3. Under `Materials` enter `mtl_p6_zm_vending_electric_cherry_off` in the text box to the right of `mtl_p6_zm_vending_electric_cherry_on`

## Step 5: Setting up the code
1. [Download the file](https://mega.nz/#!Ud5DWBiZ!rqAOjEk1EJH7sr827jBZy3Ph6dkjzOD5FeaGU94VCM8)
2. Save it to:
	```
	Call of Duty Black Ops III/map_source/_prefabs/zm/
	```
	in either zm_core or your maps folder
### Option 1 (Download premade GSC):
1. Download [`_zm_perk_electric_cherry.gsc`](files/_zm_perk_electric_cherry.gsc) and save it:
	```
	Call of Duty Black Ops III/share/raw/scripts/zm
	```
### Option 2 (Create GSC Manually):
1. Open `_zm_perk_electric_cherry.gsc` in:
	```
	Call of Duty Black Ops III/share/raw/scripts/zm
	```
2. Find the line:
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
3. Find:
	```cpp
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
4. Find:
	```cpp
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
5. Save and close the file

## Step 6: Loading the perk
1. Open your map `.gsc` file in your maps `scripts/zm` folder
2. At the bottom of your perk imports, under
	```cpp
	#using scripts\zm\_zm_perk_staminup;
	```
	add:
	```cpp
	#using scripts\zm\_zm_perk_electric_cherry;
	```
3. Open your map `.csc` file in your maps `scripts/zm` folder
4. Repeat step 4 for your `.csc file`
5. In your maps folder in `Call of Duty Black Ops III/usermaps`, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
6. Add the following lines:
	```zone
	xmodel,p6_zm_vending_electric_cherry_off
	xmodel,p6_zm_vending_electric_cherry_on
	scriptparsetree,scripts/zm/_zm_perk_electric_cherry.gsc
	scriptparsetree,scripts/zm/_zm_perk_electric_cherry.csc
	```