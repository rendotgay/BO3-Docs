# GetTurretLimitsYaw

Get the furthest relative yaw angles the turret can aim, all numbers are positive

Example:
```c++
limit = veh GetTurretLimits( 1 ); limitMin = -limit[0]; limitMax = limit[1]
```

### Parameters
Parameter | Summary
| - | - |
[turret index] | 0 for turret, 1-4 for gunners

<sub>* = mandatory</sub>

