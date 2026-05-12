# DoDamage

Does damage to this entity

Example:
```c++
player DoDamage(25, gasEffectArea.origin, player.lastPoisonedBy, grenade_obj, 0, "MOD_EXPLOSIVE", 0, GetWeapon("tabun_gas_mp"), -1, false)
```


### Parameters
Parameter | Summary
| - | - |
*health | The amount of damage to do
*source position | The position that the damage comes from
[attacker] | The entity that dealt the damage (such as an AI or player)
[inflictor] | The entity that the damage came from (such as a grenade or turret)
[hitloc] | The location of the damage, default is none; one of: { 'none', 'torso_upper', 'torso_lower', 'helmet', 'head', 'neck', 'left_arm_upper', 'left_arm_lower', 'left_hand', 'right_arm_upper', 'right_arm_lower', 'right_hand', 'left_leg_upper', 'left_leg_lower', 'left_foot', 'right_leg_upper', 'right_leg_lower', 'right_foot' }
[mod] | . The means of death string. Otherwise, the means of death will be 'MOD_UNKNOWN'.
[dflags] | . Damage flags.
[weapon] | . Weapon used.
[infdestructible_piece_indexlictor] | The destructible piece index from the destructible def gdt"
[forcePain] | true/false; If true, actor->painDeath.iPainTime will be reset to zero"

<sub>* = mandatory</sub>

