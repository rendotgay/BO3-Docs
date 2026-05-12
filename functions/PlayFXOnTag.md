# PlayFXOnTag

Play fx on a particular tag of an entity

Example:
```c++
PlayFxOnTag( level._effect["character_fire_death_torso"], self, "J_Spine1" )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*fx name | Name of the fx. Fx has to be cached
*entity | The entity to play the fx on. Should have a model
*tag | The tag to play the fx on
[ignore pause] | True if the fx should play even when the game is paused.

<sub>* = mandatory</sub>

