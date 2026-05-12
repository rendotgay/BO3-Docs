# CheckGrenadeThrow

Checks whether the actor can throw a grenade at his target. If he can't then result will be undefined, otherwise the result is the resultant velocity vector

Example:
```c++
throwvel = self CheckGrenadeThrow( armOffset, "min energy", 0 )
```


### Parameters
Parameter | Summary
| - | - |
*hand offset | (vector) the estimated offset of the hand for the throw
*method | (string) The grenade toss method. Can be 'min energy', 'min time', and 'max tune'
*random range | (float) random range from target position to throw at

<sub>* = mandatory</sub>

