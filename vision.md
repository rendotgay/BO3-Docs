# Vision Files

Vision files can be used in GSC to adjust post-processing

## Color Correction
Value | Type | Default | Summary
| - | - | - | - |
vkTT | float | 6500 | Color temperature
vkTS | float | 0 | Saturation (-1 to 1)
vkTC | vector | 1 1 1 0 | Color tint R G B (0 to 1) and stops
vkTO | vector | 0 0 0 | Color offset (0 to 1)
vkRGB | vector | 0 0 0 | Color for color ramp (0 to 1)
vkL | float | 0 | Anchor location for color ramp (0 to 1)
vkM | float | 0.5 | Midpoint location for color ramp
vkRM | float | 0 | Blend ammount for color ramp (0 to 1)

## Static Overlays
<sub>Overlays are optional, you can skip this step if you'd like</sub>
1. In APE, create a new `Material` for your overlay texture
Key | Value
| - | - |
Material Category | 2d
Material Type | refract_reveal_blend
Surface Type | none

2. Then add your image
Key | Value
| - | - |
Image Usage | 2d
Compression | Uncompressed
Mipmap Disable | ☑️
Streamable | ☑️

3. Add a normal map if you want your overlay to refract light
4. Add a `postfxbundle` to your GDT and add your material
Key | Value
| - | - |
Looping | ☑️
First Person Only | ☑️
Number of shader constants | 1
Name | scriptVector0
Animation | hold
Number of channels | 2

## Animated Overlays
<sub>Overlays are optional, you can skip this step if you'd like</sub>
1. In APE, create a new `Material` for your overlay texture
Key | Value
| - | - |
Material Category | 2d
Material Type | warp_aberration_refract_screen
Surface Type | none

2. Then add an aberration mask
Key | Value
| - | - |
Image Usage | revealMap
Mipmap Disable | ☑️

and adjust the Aberration values

3. Add a normal map if you want your overlay to refract light
4. Add a warp mask
5. Add a sprite sheet as the color map
Key | Value
| - | - |
Image Usage | diffuseMap
Compression | Uncompressed
Mipmap Disable | ☑️
Streamable | ☑️

Then enter the number of rows and columns in your sprite sheet color map and set flipbook time to animation duration divided by total number of frames

6. Add a `postfxbundle` to your GDT and add your material
Key | Value
| - | - |
Looping | ☑️
First Person Only | ☑️
Number of shader constants | 1
Name | scriptVector0
Animation | hold
Number of channels | 3
Start value | 0 0 1

## Add To Script
1. At the top of your `.gsc`, add:
```c++
#using scripts\shared\visionset_mgr_shared;
#using scripts\shared\system_shared;
```
2. Then in your `init` function, add:
```c++
visionset_mgr::register_info("visionset", VISIONSET_NAME, VERSION, PRIORITY, LERP_STEP_COUNT, SHOULD_ACTIVATE_PER_PLAYER);
visionset_mgr::register_info("overlay", POSTFX_NAME, VERSION, PRIORITY, LERP_STEP_COUNT, SHOULD_ACTIVATE_PER_PLAYER);
```
and replace the values
Value | Summary
| - | - |
VISIONSET_NAME | The name of the visionset you created
POSTFX_NAME | Create a name for your `postfxbundle` to reference later
VERSION | Doesn't matter, set to 1
PRIORITY | Not important, set to 31
LERP_STEP_COUNT | Linear interpolation step count, not important, set to 1
SHOULD_ACTIVATE_PER_PLAYER | Set to 1

3. Now, wherever you want to activate a visionset, add:
```c++
visionset_mgr::activate("visionset", VISIONSET_NAME, player);
visionset_mgr::activate("overlay", POSTFX_NAME, player);
```
and wherever you want to deactivate a visionset, add:
```c++
visionset_mgr::deactivate("visionset", VISIONSET_NAME, player);
visionset_mgr::deactivate("overlay", POSTFX_NAME, player);
```
4. At the top of your `.csc`, add:
```c++
#using scripts\shared\visionset_mgr_shared;
#using scripts\shared\system_shared;
```
5. Then in your `init` function, add:
```c++
visionset_mgr::register_visionset_info(VISIONSET_NAME, VERSION, LERP_STEP_COUNT, VISIONSET_FROM, VISIONSET_TO);
visionset_mgr::register_overlay_info_style_postfx_bundle(POSTFX_NAME, VERSION, LERP_STEP_COUNT, BUNDLE, DURATION);
```
and replace the values
Value | Summary
| - | - |
VISIONSET_NAME | The name of the visionset you created
POSTFX_NAME | The name you set for your `postfxbundle`
VERSION | Doesn't matter, set to 1
LERP_STEP_COUNT | Linear interpolation step count, not important, set to 1
VISIONSET_FROM | Transition from visionset, set to undefined if only one
VISIONSET_TO | Transition to visionset, set to VISIONSET_NAME
BUNDLE | Name of your `postfxbundle` in APE
DURATION | Can be left out

6. Add to your map `zone` file:
```zone
rawfile,vision/VISION_FILE
scriptbundle,BUNDLE
```
Replace `VISION_FILE` with the name of your `.vision` file you created earlier, and `BUNDLE` with the name of your `postfxbundle` in APE