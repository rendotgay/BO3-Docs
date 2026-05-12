# MagicMissile

Launches a weapon from the given position with the given velocity.  Velocity determines direction.

Example:
```c++
bomb = player MagicMissile( "artillery_mp", (100,100,0), ( 0.1, 0.1, 0.1 ) )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*weapon | - Weapon name.
*position | - Position to launch from.
*velocity | - Direction and force of launch.
[targetent] | The target of the bullet

<sub>* = mandatory</sub>

