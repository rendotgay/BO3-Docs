# Remove Drops
Remove any chosen drop(s) from dropping from your map
## Warning: If you have gobblegums and it spawns a powerup you removed, the game will crash!
1. Open your map `.gsc` file
2. In the function `main()` under:
	```gsc
	zm_usermap::main();
	```
	add:
	```
	zm_powerups::powerup_remove_from_regular_drops( "minigun" );
	```
	and replace `minigun` with whatever drop you'd like removed