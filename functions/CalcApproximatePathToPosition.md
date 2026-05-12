# CalcApproximatePathToPosition

Returns an array of world positions representing the approximate path an actor will take.  Calculating an approximate path will cause the AI to clear their current path.

Example:
```c++
self CalcApproximatePathToPosition( position )
```

### Parameters
Parameter | Summary
| - | - |
*position | The goal position for the path
[clear path] | True to clear path, false otherwise. Defaults to True

<sub>* = mandatory</sub>

