# PositionQuery_Filter_DistanceToGoal

Calculate the distance to &lt;entity&gt;.goalpos. If the point is in &lt;entity&gt;.goalradius, the distance will be 0. the result is in pointStruct.distToGoal

Example:
```c++
PositionQuery_Filter_DistanceToGoal( queryResult, self )
```


### Parameters
Parameter | Summary
| - | - |
*queryStruct | result from PositionQuery_Source function."
*entity | the entity used to check goal."

<sub>* = mandatory</sub>

