# AnimScripted

Runs an animscript on an entity.

Example:
```c++
driver AnimScripted( "germantruck_driver_closedoor", org , angles, driver.closedooranim )
```

### Parameters
Parameter | Summary
| - | - |
*notify | The notify to send
*origin | The starting position of the anim script
*angles | The starting angle of the anim script
*animation | The animation
[mode] | Valid modes are "normal" and "deathplant"
[root] | The root animation
[rate] | The playback rate of animation
[blend] | The blend time for the animation
[lerp] | The lerp time for an aligned animation
[animation time] | The starting animation time in 0-1 range
[is_scene_animation] | Should be true for player scene animations or scripted animations where the player has no control, can be ignored for non-players
[showPlayerWeaponInFirstPerson] | determines if the first person player should have his weapon during cinematics

<sub>* = mandatory</sub>

