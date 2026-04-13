# Zombie Health
Set custom health for zombies on your map
1. Open your map's `.gsc` file in usermaps
2. Inside your `main()` function, under `zm_usermap::main();`, add:
	```cpp
	//	cumulatively add this to the zombies' starting health each round (up to round 10)
	zombie_utility::set_zombie_var( "zombie_health_increase", 			100,	false,	column );
	//	after round 10 multiply the zombies' starting health by this amount
	zombie_utility::set_zombie_var( "zombie_health_increase_multiplier",0.1, 	true,	column );
	//	starting health of a zombie at round 1
	zombie_utility::set_zombie_var( "zombie_health_start", 				150,	false,	column );
	```
	Variable|Explanation
	| - | - |
	zombie_health_start|Health of zombies on round 1
	zombie_health_increase|Amount of health to increase by each round until round 10
	zombie_health_increase_multiplier|Amount of health to multiply by after round 10