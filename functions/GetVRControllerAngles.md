# GetVRControllerAngles

gets the world-space angles of the tracked VR controller

Example:
```c++
pos = self GetVRControllerAngles( 0, (60, 0, 0) ) ...
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | Client number of the controller you want the orientation of
*handIdx | 0 for dominant hand, 1 for secondary hand. Secondary hand is not guaranteed to exist

<sub>* = mandatory</sub>

