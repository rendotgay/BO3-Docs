# PositionQuery_Filter_Sight

Sight filter do sight check on each of the positions to a target position, and store the result in pointStruct.visibility (boolean).

Example:
```c++
PositionQuery_Filter_Sight( queryResult, self.enemy.origin, self GetEye() - self.origin, self, 30, self.enemy );
```


### Parameters
Parameter | Summary
| - | - |
*queryStruct | result from PositionQuery_Source function. each point contained here will be used to check sight against <targetPosition>. "
*targetPosition | the position to check sight."
[offset] | offset to add on each point before sight checking. this is usually something like: offset = ai GetEye() - ai.origin. default to (0,0,0). "
[visibleBy_Ent] | if defined, the corresponding sight check function on Actor or Vehicle will be called. Otherwise the checks just do simple bullet tracing."
[numOfPassedToEarlyOut] | if defined and bigger than 0, the filter will early out after found this many passed sight checks. this is useful if the points are pre sorted by score and we don't care about lower scored ones."
[ignoreEnt] | ignore entity during trace. if [visibleBy_Ent] is defined, it is already ignored internally. "
[resultVarName] | by default the results will be stored in pointStruct.visibility, but can be override by this string. "

<sub>* = mandatory</sub>

