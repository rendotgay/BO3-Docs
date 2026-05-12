# SetSpeedImmediate

Sets the speed and acceleration for this vehicle instantaneously. Direction will be toward the goal direction if there is a goal, otherwise the current direction.

Example:
```c++
self setspeedimmediate(60, 15, 5)
```


### Parameters
Parameter | Summary
| - | - |
*speed | The speed of the vehicle in miles per hour
[acceleration] | The acceleration of the vehicle in miles per hour per second
[deceleration] | Deceleration. If not specified, set to be equal to half of accleration

<sub>* = mandatory</sub>

