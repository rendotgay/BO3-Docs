# JoltBody

Jolts the vehicle.

Example:
```c++
self JoltBody( (self.origin + (0,0,64)), 0.5 )
```

### Parameters
Parameter | Summary
| - | - |
*jolt position | The position of the jolt
*intensity | The intensity of the jolt
[speedFrac] | A speed fraction to apply to the jolt. Most be betweeon 0 and 1.
[deceleration] | The deceleration to apply to this vehicle in miles per hour per second.

<sub>* = mandatory</sub>

