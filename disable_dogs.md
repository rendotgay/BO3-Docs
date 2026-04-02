# Disable dog rounds
1. Copy `zm_usermap.gsc` from `Call of Duty Black Ops III/share/raw/scripts/zm`
2. In your maps folder in usermaps, paste `zm_usermap.gsc` into `scripts/zm`
3. Inside the pasted `zm_usermap.gsc`, find the line `DEFAULT(level.dog_rounds_allowed,1);` and change the 1 to a 0
4. In your maps folder in usermaps, open your `.zone` file in `zone_source`, or open it from the Mod Tools Launcher by right clicking your map
5. Replace the following line:
	```
	scriptparsetree,scripts/zm/<YOUR MAP NAME>.csc
	```
	With this line:
	```
	scriptparsetree,scripts/zm/zm_usermap.gsc
	```