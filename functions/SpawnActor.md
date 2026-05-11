# SpawnActor

Spawns an actor from an actor spawner, if possible (the spawner won't spawn if the player is looking at the spawn point, or if spawning would cause a telefrag)

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*AIType | AI type (constant string)
*origin | The position of the vehicle (vector)
*angles | The angle to spawn the vehicle at (vector)
[targetname] | sets the targetname of the spawned entity
[forcespawn] | forces a guy to spawn even if the spawn may be visible to the player
[fullyaware] | gives the AI full awareness of all enemies
[spawnerEnt] | if passed in, then the fields of the spawnerEnt will be duplicated to the newly spawned actor

<sub>* = mandatory</sub>

