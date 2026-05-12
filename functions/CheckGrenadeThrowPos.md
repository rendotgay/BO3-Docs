# CheckGrenadeThrowPos

Checks whether the actor can throw a grenade at a given position. If he can't then result will be undefined, otherwise the result is the resultant velocity vector

Example:
```c++
throwvel = self CheckGrenadeThrowPos( armOffset, "min energy", targetPos )
```

### Parameters
Parameter | Summary
| - | - |
*hand offset | (vector) the estimated offset of the hand for the throw
*method | (vector) The grenade toss method. Can be 'min energy', 'min time', and 'max tune'
*targetpos | (vector) The target position, should be at ground level of potential target

<sub>* = mandatory</sub>

