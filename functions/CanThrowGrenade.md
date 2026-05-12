# CanThrowGrenade

Checks whether the actor can throw a grenade at a given position. If he can't then result will be undefined, otherwise the result is the resultant velocity vector

Example:
```c++
throwvel = self CanThrowGrenade( armOffset, 0 )
```


### Parameters
Parameter | Summary
| - | - |
*hand offset | (vector) the estimated offset of the hand for the throw
*random range | (float) random range from target position to throw at

<sub>* = mandatory</sub>

