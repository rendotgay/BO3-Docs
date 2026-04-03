# Widows Wine
How to add Widows Wine to your custom map
1. Download the file [here](https://www.mediafire.com/file/v3r32pxhp5fb5tf/vending_widowswine_struct.map/file) [(or here)](https://mega.nz/#!1RAUQJIT!mPuMmkYN7zjAGBweBIroIedzt3WLoLtsq8EjOMuoicc) to:
	```
	Call of Duty Black Ops III/map_source/_prefabs/zm/
	```
	in either zm_core or your maps folder
2. Open your map `.gsc` file in your maps `scripts/zm` folder
3. At the bottom of your perk imports, under
	```cpp
	#using scripts\zm\_zm_perk_staminup;
	```
	add:
	```cpp
	#using scripts\zm\_zm_perk_widows_wine;
	```
4. Open your map `.csc` file in your maps `scripts/zm` folder
5. Repeat step 3 for your `.csc file`