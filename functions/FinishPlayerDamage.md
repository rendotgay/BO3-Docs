# FinishPlayerDamage

Does damage to a player - usually as part of the damage callback

Example:
```c++
self FinishPlayerDamage( eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, vDir, sHitLoc, iBone, vDamageOrigin, psOffsetTime, vSurfaceNormal )
```


### Parameters
Parameter | Summary
| - | - |
*Inflictor | The entity that causes the damage.(e.g. a turret)
*Attacker | The entity that is attacking.
*Damage | Integer specifying the amount of damage done
*Damage Flags | Integer specifying flags that are to be applied to the damage
*Means Of Death | Integer specifying the method of death
*Weapon | The weapon number of the weapon used to inflict the damage
*Point | Damage point
*Direction | (vector) The direction of the damage
*Hit Loc | The location of the hit
*Damage Origin | Where the damage originated from.
*Offset Time | The time offset for the damage
*bone index | Which bone was the closest to the hit
*Surface Normal | The normal of the surface impacted.

<sub>* = mandatory</sub>

