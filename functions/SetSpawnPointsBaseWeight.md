# SetSpawnPointsBaseWeight

If the spawn point is facing the objective position then it will have an additional score applied

Example:
```c++
SetSpawnPointsBaseWeight( team_mask, point, 30, 100 )
```


### Parameters
Parameter | Summary
| - | - |
*team mask | teams that this command will affect
*objective position | Position of the objective that will be used in the facing calculations
*angle | max angle that will be accepted
*score | additional score that will be applied

<sub>* = mandatory</sub>

