# ExtraCamAnimScripted

Plays the camera script on an extracam player.

Example:
```c++
ExtraCamAnimScripted( player, 0, "proto_melee_cam", gettime(), origin, angles )
```

### Parameters
Parameter | Summary
| - | - |
*player | The player to play animation on
*extra_cam_index | The extra camera index
*cam_anim | The animation to play
*start_time | The start time of the animation
*align_origin | The origin to align to
*align_angles | The angles to align to
[lerp_duration] | The lerp duration
[camera_name] | The camera name
[ignoreProcessingInitialNoteTracks] | Ignores processing the initial notetracks if the camera time starts earlier

<sub>* = mandatory</sub>

