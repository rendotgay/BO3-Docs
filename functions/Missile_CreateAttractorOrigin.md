# Missile_CreateAttractorOrigin

Creates a missile attractor at the given location

Example:
```c++
attractor = Missile_CreateAttractorOrigin( (100, 350, 10), 10000, 6000 )
```


### Parameters
Parameter | Summary
| - | - |
*origin | The center of the attractor
*strength | The strength of the attractor (maximum acceleration it can apply to a missile)
*affectDist | The effective distance at which the missile can be affected.  The effect of the attractor falls off from <strength> to zero from the center to this distance away from the center.
affectAllProjectiles | If set it will affect all projectiles inculding grenades and guided missiles.
alert range | If set it send notify when missile breaches range(but will not repulse).

<sub>* = mandatory</sub>

