# Missile_CreateRepulsorEnt

Creates a missile repulsor at the origin of an entity

Example:
```c++
repulsor = Missile_CreateRepulsorEnt( enemy_chopper, 10000, 6000 )
```


### Parameters
Parameter | Summary
| - | - |
*entity | The entity that is to be a repulsor
*strength | The strength of the repulsor (maximum acceleration it can apply to a missile)
*affectDist | The effective distance at which the missile can be affected.  The effect of the attractor falls off from <strength> to zero from the center to this distance away from the center.
[affectAllProjectiles] | If set it will affect all projectiles inculding grenades and guided missiles.
[alert range] | If set it send notify when missile breaches range(but will not repulse).

<sub>* = mandatory</sub>

