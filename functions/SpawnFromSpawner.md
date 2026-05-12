# SpawnFromSpawner

Spawns an actor or vehicle from a spawner, if possible (the spawner won't spawn if the player is looking at the spawn point, or if spawning would cause a telefrag) Unsupplied optional fields will use flag values from the entity

Example:
```c++
spawned = spawnerent SpawnFromSpawner( "george", false )
```


**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
[targetname] | sets the targetname of the spawned entity
[forcespawn] | forces a guy to spawn even if the spawn may be visible to the player
[makeroom] | will remove an undeletable entity if necessary to spawn a new one
[infinitespawn] | don't increment the spawn count
[classnameOverride] | override the spawner's classname

<sub>* = mandatory</sub>

