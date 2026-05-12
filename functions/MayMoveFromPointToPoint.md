# MayMoveFromPointToPoint

Check whether the actor can move from a given point to a given point. Does not check friendly fire and in goal radius unlike maymovetopoint

Example:
```c++
if ( !self MayMoveFromPointToPoint( startPoint endPoint ) )...
```

### Parameters
Parameter | Summary
| - | - |
*start | (point) start position.
*end | (point) end position.
[check drop] | checks if the point would cause the AI to drop. Defaults to true.
[check direct] | checks if there are no obstructions between actor origin and <Position>.

<sub>* = mandatory</sub>

