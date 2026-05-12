# setgoalvolume

Set this AI 's goal. Any of the above function name will work. They all call into SetGoal function internally.

Example:
```c++
self SetGoal( node )
```


### Parameters
Parameter | Summary
| - | - |
*pos | /<node>/<entity>/<volume>
[forced] | (bool) should go directly to this pos/node/entity. Forced means AI will get within approx 4 units of the entity.
[goalradius] | radius of the goal. Applicable for entity and position/node and not the volume or forcedGoal.
[goalheight] | height of the goal. Applicable for entity and position/node and not the volume or forcedGoal.

<sub>* = mandatory</sub>

