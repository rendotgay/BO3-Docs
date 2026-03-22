# Power Lag Fix
Fixes lag caused by turning on the power
1. Open your map `.gsc` file
2. In the function `main()` add:
	```c
	level thread fix_powerlag();
	```
3. Under the `main()` function, outside of any other functions, add the following:
	```c#
	function fix_powerlag()
	{
	    level waittill( "all_players_connected" );
	 
	    str_trig = Spawn( "trigger_radius", (0, 0, 0), 0, 16, 16 );
	    str_trig SetInvisibleToAll();
	 
	    register_this_string(str_trig, &"ZOMBIE_PERK_ADDITIONALPRIMARYWEAPON", 4000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_CHUGABUD", 2000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_DEADSHOT", 1500);
	    register_this_string(str_trig, &"ZOMBIE_PERK_DIVETONUKE", 2000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_DOUBLETAP", 2000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_FASTRELOAD", 3000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_JUGGERNAUT", 2500);
	    register_this_string(str_trig, &"ZOMBIE_PERK_MARATHON", 2000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH", 5000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH", 1000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH_AAT", 2500);
	    register_this_string(str_trig, &"ZOMBIE_PERK_PACKAPUNCH_AAT", 500);
	    register_this_string(str_trig, &"ZOMBIE_PERK_QUICKREVIVE", 1500);
	    register_this_string(str_trig, &"ZOMBIE_PERK_QUICKREVIVE", 500);
	    register_this_string(str_trig, &"ZOMBIE_PERK_TOMBSTONE", 2000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_VULTURE", 3000);
	    register_this_string(str_trig, &"ZOMBIE_PERK_WIDOWSWINE", 4000);
	 
	    str_trig delete();
	}
	 
	function register_this_string(str_trig, string, insert = undefined)
	{
	    if(!isDefined(insert))
	        str_trig SetHintString(string);
	    else
	        str_trig SetHintString(string, insert);
	    WAIT_SERVER_FRAME;
	}
	```