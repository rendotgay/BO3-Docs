# Adding zones
## Adding a new zone
1. Create an info_volume
2. Set `targetname`
3. Add KVP `script_noteworthy` and set to `player_volume`
4. Add KVP `target` and set to zone spawner `targetname`

## Linking zones
1. Add [buyable door](buyable_doors.md)
2. Open your map `.gsc` file
3. At the top of function `usermap_test_zone_init()` add:
	```c#
	zm_zonemgr::add_adjacent_zone("zone1", "zone2", "zone1_zone2");
	```