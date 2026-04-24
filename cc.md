# Color Correction
Adjusting the visual appearance of colors on your map

## Setting up a custom lut
1. Copy `luts_t7_default` material and `img_luts_t7_zm_factory` into a new GDT with unique names
2. Update the material with the new image name
3. Open the directory of the existing image, <sub>`Call of Duty Black Ops III/texture_assets/t7_luts`</sub> create a copy of the file with a unique name, and open it
4. In Radiant, deselect everything <sub>Escape</sub> and set the `lutmaterial` to the material name you created
5. Open your maps folder in `Call of Duty Black Ops III/usermaps`, open your `.zone` file in `zone_source` <sub>or open it from the Mod Tools Launcher by right clicking your map</sub>
6. Replace `material,luts_t7_default` with your new material, keeping the `material,` prefix

## Editing your custom lut
1. Open your new texture in your photo editor of choice
2. Edit however you'd like. If you don't know what to change, try:
	- Contrast
	- Brightness
	- Saturation
	- Color Curves
<sub>If you don't see any changes after saving, try restarting Radiant</sub>