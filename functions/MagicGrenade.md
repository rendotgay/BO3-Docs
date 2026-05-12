# MagicGrenade

Creates a "Magic" grenade from an actor.

Example:
```c++
self MagicGrenade( self.origin, target.origin, 2.0 )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*origin | The starting point of the grenade toss
*target position | The target point of the grenade toss
[time to blow] | The grenade fuse time in seconds
[weapon] | The grenade weapon to use (defaults to equipped grenade weapon)

<sub>* = mandatory</sub>

