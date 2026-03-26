# Customize Mystery Box Weapons
1. Copy `zm_levelcommon_weapons.csv` from `Call of Duty Black Ops III/share/raw/gamedata/weapons/zm`
2. In your maps folder in usermaps, create the directory `gamedata/weapons/zm` and paste `zm_levelcommon_weapons.csv`
3. Back in your maps folder in usermaps, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
4. Copy the following line into the `.zone` file on a new line:
	```
	stringtable,gamedata/weapons/zm/zm_levelcommon_weapons.csv
	```
5. Edit `zm_levelcommon_weapons.csv` to your hearts content