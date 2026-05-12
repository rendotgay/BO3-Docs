# HeliTurretDogTrace

Determines if you helicopter turret can see the dog.

Example:
```c++
if (0 == (copter HeliTurretSightTrace(heli_turret_point, dog, lastHit))
```

### Parameters
Parameter | Summary
| - | - |
*position | place that check if you can see if being performed
*dog | the dog that the helicopter wants to see
*hitNum | if you run this more than once make sure to populate this with the return of the last as it will increase efficiency

<sub>* = mandatory</sub>

