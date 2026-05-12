# PlaySoundToTeam

Play the sound alias as if coming from the entity, so that only one team can hear it

Example:
```c++
self PlaySoundToTeam( "frag_out", "axis", self )
```


### Parameters
Parameter | Summary
| - | - |
*aliasname | The sound alias to play
*teamname | The team that will be able to hear the sound. Must be either 'axis' or 'allies' or 'team3'.
[ignoreplayer] | If present, this player will not hear the sound.

<sub>* = mandatory</sub>

