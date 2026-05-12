# CamAnimScripted

Plays the camera script on a player.

Example:
```c++
CamAnimScripted( player, "proto_melee_cam", gettime(), origin, angles )
```

### Parameters
Parameter | Summary
| - | - |
*player | The player to play animation on
*cam_anim | The animation to play
*start_time | The start time of the animation
*align_origin | The origin to align to
*align_angles | The angles to align to
[lerp_duration] | The lerp duration
[camera_name] | The camera name
[ignoreProcessingInitialNoteTracks] | Ignores processing the initial notetracks if the camera time starts earlier

<sub>* = mandatory</sub>

