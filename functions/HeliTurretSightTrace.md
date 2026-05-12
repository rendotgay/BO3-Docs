# HeliTurretSightTrace

Determines if you helicopter turret can see an the players eyes.

Example:
```c++
if (0 == (copter HeliTurretSightTrace(heli_turret_point, player, lastHit))
```

### Parameters
Parameter | Summary
| - | - |
*position | place that check if you can see if being performed
*player | the player that the helicopter wants to see
*hitNum | if you run this more than once make sure to populate this with the return of the last as it will increase efficiency

<sub>* = mandatory</sub>

