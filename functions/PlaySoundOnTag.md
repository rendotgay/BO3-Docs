# PlaySoundOnTag

Play the sound alias as if coming from the tag

Example:
```c++
self PlaySoundOnTag( soundAlias, "J_Head")
```


### Parameters
Parameter | Summary
| - | - |
*aliasname | The sound alias to play, this can be the string name, or the integer hash
[tag] | If present, the sound will play at the position of the given tag
[team] | If present or not undefined the sound will only be heard by the specified team
[ent] | If present the sound will also be heard on the specified entity

<sub>* = mandatory</sub>

