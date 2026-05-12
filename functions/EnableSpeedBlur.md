# EnableSpeedBlur

Sets a speed blur on on the screen with parameters

Example:
```c++
EnableSpeedBlur( localClientNum, .02, .5, .75, true, 300.0 )
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | Client number of the player
*amount | Blur Amount ( 0.0 - 1.0 )
*inner radius | The size of the inner radius ( 0.0 - 1.0 )
*inner outerradius | The size of the inner radius ( 0.0 - 1.0 )
velocityShouldScale | false don't scale with velocity, true scale
velocityScale | Specify the velocity when the scale is 1.0
blurInTime | Specify the time it takes to complete a blur in
blurOutTime | Specify the time it takes to complete a blur out
shouldOffset | Specify whether the blur should change as you move left/right or up/down

<sub>* = mandatory</sub>

