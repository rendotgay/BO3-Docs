# Power Lighting
Adjusts lighting when power is enabled
1. In your `volume_sun`, set an ssi2
2. For any lights you want toggled by power, check/uncheck the lightingstate
3. In the function `main()` add:
	```cpp
	level thread MonitorPower();
	```
4. Under the `main()` function, outside of any other functions, add the following:
	```cpp
	function MonitorPower()
	{
	 level flag::wait_till("initial_blackscreen_passed");
	 level util::set_lighting_state(0);

	 level flag::wait_till("power_on");
	 level util::set_lighting_state(1);
	}
	```