# SoundPlayAutoFX

This function is used to play audio on createfx ents.

Example:
```c++
SoundPlayAutoFX( "fx_fire_barrel", "amb_fire_small", 5, -10, 5, false, 20, 5, "amb_fire_large" )
```


### Parameters
Parameter | Summary
| - | - |
*fxid | The ID of the FX you want to play alias off.
*alias | Audio alias.
[offsetx] | Offset x from effect origin to play the sound.
[offsety] | Offset y from effect origin to play the sound.
[offset] | Offset z from effect origin to play the sound.
[onground] | Do a trace to ground to ensure audio is played above ground.
[area] | If #threshold multiple effects of same id in target radius #area, play alias_override at center of fx instead.
[threshold] | If #threshold multiple effects of same id in target radius #area, play alias_override at center of fx instead.
[alias_override] | If #threshold multiple effects of same id in target radius #area, play alias_override at center of fx instead.

<sub>* = mandatory</sub>

