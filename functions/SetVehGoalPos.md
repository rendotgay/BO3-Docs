# SetVehGoalPos

Set the target position for this vehicle. Returns true if it can find a path.  If it fails to find a path the vehicle will be stopped.

Example:
```c++
tank SetVehGoalPos( (0, 0, 0), 1 )
```


### Parameters
Parameter | Summary
| - | - |
*goalpos | The goal position
[stopAtGoal] | Whether the vehicle should slow down to stop at the goal position
[usepath] | set to 1 to use pathfinding

<sub>* = mandatory</sub>

