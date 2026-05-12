# SpawnTimedFX

Spawns a broadcast entity that plays an oriented timed FX using the weapon's property projExplosionEffect

Example:
```c++
ent = SpawnTimedFX( smokeGrenade, position, directionUp, duration )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*weapon | weapon to spawn fx on
*origin | the position to spawn fx at
[direction default (0,0,1) | 
[time] | default 10 seconds
[team] | defaults to TEAM_FREE

<sub>* = mandatory</sub>

