# PositionQuery_Filter_Directness

Directness filter compute the direction information for each of the positions, relative to &lt;origin&gt; and &lt;target&gt;.

Example:
```c++
PositionQuery_Filter_Directness( queryResult, self.origin, self.enemy.origin )
```


### Parameters
Parameter | Summary
| - | - |
*queryStruct | result from PositionQuery_Source function. each point contained here will have direction info computed.
*origin | usually the position of AI before move.
*target | the position AI is trying to approach.
[resultVarName] | by default the result directness value will be stored in pointStruct.directness, but can be override by this string.

<sub>* = mandatory</sub>

