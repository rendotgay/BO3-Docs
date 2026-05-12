# GetControllerPosition

get current deflection of control, returns values via an array with vector values for "look" and "move" which correspond to those controls.  Values are -1 to 1 and represent the given axis on the vector

Example:
```c++
pos = self GetControllerPosition() ...
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | Client number of the controller you want the position of

<sub>* = mandatory</sub>

