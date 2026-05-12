# IsVehicleImmuneToDamage

This checks the vehicle GDT settings related to bulletdamage, grenadedamage, etc.

Example:
```c++
if ( vehicle IsVehicleImmuneToDamage( flags, mod, weapon ) )
```


### Parameters
Parameter | Summary
| - | - |
*Damage Flags | Integer specifying flags that are to be applied to the damage
*Means Of Death | Integer specifying the method of death
*Weapon | The weapon number of the weapon used to inflict the damage

<sub>* = mandatory</sub>

