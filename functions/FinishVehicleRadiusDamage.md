# FinishVehicleRadiusDamage

Does damage to an vehicle - usually as part of the damage callback

Example:
```c++
self FinishVehicleRadiusDamage( eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, sWeapon, vPoint, fRadius, fConeRadius, fConeDir, psOffsetTime )
```


### Parameters
Parameter | Summary
| - | - |
*Inflictor | The entity that causes the damage.(e.g. a turret)
*Attacker | The entity that is attacking.
*Damage | Integer specifying the amount of damage done
*Inner Damage | Integer specifying the amount of inner damage done
*Outer Damage | Integer specifying the amount of outer damage done
*Damage Flags | Integer specifying flags that are to be applied to the damage
*Means Of Death | Integer specifying the method of death
*Weapon | The weapon number of the weapon used to inflict the damage
*Point | (vector) The Point of the damage
*Radius | (float) The radius of the damage
*ConeRadius | (float) The radius of the cone damage
*ConeDirection | (vector) The direction of the cone damage
*Offset Time | The time offset for the damage

<sub>* = mandatory</sub>

