# SSI's
SSI (Sun Scene Information) adjusts the lighting of your map, particularly from the skybox
- Your sun has a cap of 128 MB
## Creating an SSI
1. Start with a pre-existing ssi and open in APE
2. Copy the ssi into a new GDT with a unique name
3. Set the ssi in your `volume_sun` for the `Light State` you want to adjust to your new ssi <sub>APE may take a while to sync with Radiant, so if you don't see your new SSI right away, that's normal.</sub>
- If your ssi isn't set correctly right off spawn, add a KVP to your `volume_sun` with key: `ssi` and value of your new ssi. If you're still having issues, refer to [the power lighting documentation](power_lighting.md)
- You must set a unique ssi for each `Light State`
Setting|Explanation
| - | - |
Pitch|Vertical angle of the sun
Yaw|Horizontal angle of the sun
Stops|Brightness
Bounce Count|How many times probes will bounce light around (for naturally lit rooms)
Specular Comp|Increases material shine / reflection
Penumbra Inches|Shadow softening (keep below 5)

- If you're having trouble lining up the sun, try adding a lens flare! Just make sure lens flare offsets are 0!

## SSI Overrides
To adjust the lighting without changing what the skybox looks like:
1. Duplicate your ssi and name it with the suffix `_ovr` <sub>This is just for consistency sake, this is not necessary.</sub>
2. In your `volume_sun` set the `ssi_runtime_override` for your `Light State`

## Volume Sun
Some settings you may want to adjust in your `volume_sun`
Key|Value
| - | - |
shadowSplitDistance|Lower value means better shadow quality, only set as low as it needs to be since it increases sun size
