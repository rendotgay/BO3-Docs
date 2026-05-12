# PlayMainCamXCam

Plays an XCam on the main camera associated with the player starting at the current client time

Example:
```c++
PlayMainCamXCam( localClientNum, "ui_cam_ar_standard" )
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | The local client
*xcam name | The name of the xcam asset to play
[lerp_duration] | The duration to lerp the start of the xcam over
[camera_name] | The name of the sub camera from the XCam to play
[animation_name] | The name of the frame (notetrack) to play
[origin] | Base origin for the camera
[angles] | Base angles for the camera
[target] | If this xcam has model translation and rotation data, apply it to this entity.

<sub>* = mandatory</sub>

