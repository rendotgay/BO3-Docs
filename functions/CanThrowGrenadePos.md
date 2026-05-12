# CanThrowGrenadePos

Checks whether the actor can throw a grenade at a given position. If he can't then result will be undefined, otherwise the result is the resultant velocity vector

Example:
```c++
throwvel = self CanThrowGrenadePos( armOffset, targetPos )
```

### Parameters
Parameter | Summary
| - | - |
*hand offset | (vector) the estimated offset of the hand for the throw
*targetpos | (vector) The target position, should be at ground level of potential target

<sub>* = mandatory</sub>

