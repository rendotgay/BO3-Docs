# FireWeapon

Fire the vehicle's weapon

Example:
```c++
m_vehicle FireWeapon( 0, m_e_target, v_target_offset )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
[turret_index] | turret index, 0 being main turret, 1~4 being gunners
[target ent] | A target entity for guided missiles
[target offset] | Only used for projectile and bomb weapons
[attacker] | real attacker who should take credit of this shot

<sub>* = mandatory</sub>

