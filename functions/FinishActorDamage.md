# FinishActorDamage

Does damage to an actor - usually as part of the damage callback

Example:
```c++
self FinishActorDamage( eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, vDir, sHitLoc, vDamageOrigin, psOffsetTime, iBoneIndex, iSurfaceType, vSurfaceNormal )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*Inflictor | The entity that causes the damage.(e.g. a turret)
*Attacker | The entity that is attacking.
*Damage | Integer specifying the amount of damage done
*Damage Flags | Integer specifying flags that are to be applied to the damage
*Means Of Death | Integer specifying the method of death
*Weapon | The weapon number of the weapon used to inflict the damage
*Direction | (vector) The direction of the damage
*Hit Loc | The location of the hit
*Damage Origin | Position of the originator of the damage
*Offset Time | The time offset for the damage
*Bone Index | Index of nearest bone
[Surface Type] | The surface type of the hit location
[Surface Normal] | The surface normal at hit location

<sub>* = mandatory</sub>

