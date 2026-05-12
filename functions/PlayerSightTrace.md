# PlayerSightTrace

Determines if you can see an item.  Checks distance and view cone before the trace to increase efficency.

Example:
```c++
if (0 == (self Playersighttrace(positionOfFlare, 200, lastHit))
```

### Parameters
Parameter | Summary
| - | - |
*position | place that check if you can see if being performed
*maxDistance | if the position is further than this -1 will be returned
*hitNum | if you run this more than once make sure to populate this with the return of the last as it will increase efficiency

<sub>* = mandatory</sub>

