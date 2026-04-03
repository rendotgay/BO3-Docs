# Disable Dog Rounds
1. Copy `zm_usermap.gsc` from `Call of Duty Black Ops III/share/raw/scripts/zm`
2. In your maps folder in usermaps, paste `zm_usermap.gsc` into `scripts/zm`
3. Inside the pasted `zm_usermap.gsc`, find the line:
	```c
	DEFAULT(level.dog_rounds_allowed,1);
	```
	and change the 1 to a 0
4. In your maps folder in usermaps, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
5. Add the following line at the bottom:
	```zone
	scriptparsetree,scripts/zm/zm_usermap.gsc
	```
