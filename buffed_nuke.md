# Buffed Nuke
Makes nukes award 100 points per zombie killed, with a minumum of 400 points. The amount of points can be customized
1. Open your map folder in `usermaps` and open `/scripts/zm`
2. Download [`zm_powerup_nuke_custom.gsc`](files/zm_powerup_nuke_custom.gsc) and [`zm_powerup_nuke_custom.csc`](files/zm_powerup_nuke_custom.csc) and save them to your `/scripts/zm` folder.
- If you want to modify the amount of points awarded, find:
	```cpp
	#define POINTS_PER 100
	```
	and change 100 to your desired points per zombie killed
3. Open your map's `.gsc` file.
4. Replace:
	```cpp
	#using scripts\zm\_zm_powerup_nuke;
	```
	with:
	```cpp
	#using scripts\zm\zm_powerup_nuke_custom;
	```
5. Back in your usermap folder, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
6. Under your existing `scriptree` lines, add:
	```zone
	scriptparsetree,scripts/zm/zm_powerup_nuke_custom.gsc
	scriptparsetree,scripts/zm/zm_powerup_nuke_custom.csc
	```