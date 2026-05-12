# Objective_SetColor

Sets a color for the objective that the icon will then be drawn with.

Example:
```c++
Objective_SetColor( myObjNumber, 1.0, 0.0, 0.0, 1.0 )Objective_SetColor( myObjNumber, "FriendlyBlue" )
```


### Parameters
Parameter | Summary
| - | - |
*objective_index | The ID of the objective.
*r/colorName Red float value for objective, or color name set from the UIEditor as an IString. | 
[g] | Green float value for objective.
[b] | Blue float value for objective.
[a] | Alpha float value for objective. Default of 1.0 if not specified.

<sub>* = mandatory</sub>

