# Modern Max Ammo
Adds Black Ops 4 / Cold War max ammo, which automatically fills your current clip.
1. Open your map `.gsc` file
2. In the `main()` function, under `zm_usermap::main();`, add:
	```cpp
	callback::on_spawned( &watch_max_ammo );
	```
3. Under the `main()` function, outside of any other functions, add:
	```c
	function watch_max_ammo()
	{
	    self endon("bled_out");
	    self endon("spawned_player");
	    self endon("disconnect");
	    for(;;)
	    {
	        self waittill("zmb_max_ammo");
	        foreach(weapon in self GetWeaponsList(1))
	        {
	            if(isdefined(weapon.clipsize) && weapon.clipsize > 0)
	            {
	                self SetWeaponAmmoClip(weapon, weapon.clipsize);
	            }
	        }
	    }
	}
	```