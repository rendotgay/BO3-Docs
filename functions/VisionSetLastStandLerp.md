# VisionSetLastStandLerp

Sets players' last stand vision.  Optionally give a transition time from the current vision.

Example:
```c++
VisionSetLastStandLerp( localClientNum, curr_info.visionset_to, curr_info.visionset_from, state.curr_lerp )
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | The local client which will have his vampire vision set changed
*vision name to | Vision to transition to.
*vision name from | Vision to transition from.
*lerp fraction | The lerp fraction to use when transitioning to the new vision set if a transition is possible.  Default is one second.

<sub>* = mandatory</sub>

