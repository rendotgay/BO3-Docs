# Reflection Probes
How to add reflections to make your map look nice
**I will cover the absolute basics here. I strongly recommend watching [VerK0's Reflection Probe Tutorial](https://www.youtube.com/watch?v=HOa08arAXlk) for a more in-depth tutorial**
*My understanding is, as long as the density isn't too high, the more reflection probes the merrier*
## Basic Probe
1. Place your reflection probe in the center of the area. You can drag it by holding `Ctrl + Shift` and left click dragging inside the probe box in the 2D view
2. Hold `Ctrl + Shift` and left click a wall to automatically snap the probe to that wall
3. Adjust the falloff by holding `Ctrl + Shift` and left click dragging outside of the probe box
	- The falloff is the blending between probes. You'll want a larger falloff for greater lighting differences
## Box Probe
1. Place your probe  in your area and uncheck the `box` KVP
2. Left click all of the faces (ceiling and floor too!)
3. You'll know it's good when the walls turn green in the 3D view, or the shape preview on the 3D view turns white
## Subtraction Probe
Subtract an area from a probe
1. Place your probe in the area you want another probe to be subtracted from
2. Check the `subtract` KVP
3. Set the `target` KVP of the subtract probe to the `targetname` KVP of the probe you want to subtract from
<sub>Or simply select the subtract probe, then select the target probe, and press `W`. `W` will automatically setup targetting for any entity.</sub>
## Probe Density
Adjusts probe coverage. 4x (or blue) is the target to aim for
1. Set a keybind (or toolbar) for `Show Probe Density`
	- Settings > Key Bindings... (or `Ctrl + K`)
2. Bake your lighting
3. Toggle `Show Probe Density` on
4. Adjust the `resolution` KVP of your probes to hit the 4x target
## KVPs
Optional KVPs you can set to adjust the look of your probe
Key|Value
| - | - |
ao_power|Shadow strength
ao_range|Shadow range from corners (Typically keep at 8)
brightnessAdjust|Manually adjust brightness
virtual|Contributes to other probes without baking
volumetric|Bakes sun rays

## Override Probe
Alternative to subtraction probe, this sets the probes priority over other probes.
1. Place your probe in the area you want to override
2. Enable the `override` KVP
## Tips
- Set a keybind for making unselected reflection probes visible:
	1. Settings > Key Bindings... (or `Ctrl + K`)
	2. Search "Unselected"
	3. Set a keybind for `Show Unselected Probe Boxes`
	- This will allow you to snap probes to other probes edges
- If `Ctrl` and left click doesn't work, ensure `Advanced Patch Editing Options` is closed
- The sun volume acts as a global probe, referencing your skybox, so you don't need to probe everything
- In your SSI, you can adjust your `Bounce Count` to adjust the light bouncing. Keep above 4 and under 6