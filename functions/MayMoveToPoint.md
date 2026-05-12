# MayMoveToPoint

Check whether the actor can move to a given point.

Example:
```c++
if ( !self MayMoveToPoint( endPoint ) )...
```

### Parameters
Parameter | Summary
| - | - |
*position | (point) The position that the actor may be able to move to.
[check drop] | checks if the point would cause the AI to drop. Defaults to true.
[check direct] | checks if there are no obstructions between actor origin and <Position>.

<sub>* = mandatory</sub>

