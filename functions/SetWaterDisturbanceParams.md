# SetWaterDisturbanceParams

Sets parameters describing the water disturbance created by the (script mover) entity

Example:
```c++
self SetWaterDisturbanceParams( 0.5, 500, 1500, 0.2, 70 )
```

### Parameters
Parameter | Summary
| - | - |
*force | The force of the disturbance influences the height and size of the wave
*length | How long the wave is in the direction of travel
*width | How wide the wave is (across direction of travel)
*damping | How much the wave damps the water after it travels; larger values (>1) will cause the wave to leave very little wake, smaller values will leave lots of disturbance behind the wave.  Keep > 0.
*angle | The angle of the surge line in degrees; 0 -> +X

<sub>* = mandatory</sub>

