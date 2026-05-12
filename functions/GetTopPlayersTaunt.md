# GetTopPlayersTaunt

Returns the selected taunt of type CharacterTauntTypes for the given player

Example:
```c++
taunt_anim = GetTopPlayersTaunt( localClientNum, 2, 0 );	// TAUNT_TYPE_FIRST_PLACE = 0
```


### Parameters
Parameter | Summary
| - | - |
*localClientNum | The localClientNum of the player in question
*topPlayerIndex | The index of the top player
*CharacterGestureTypes | The CharacterTauntTypes enum value of the taunt to use

<sub>* = mandatory</sub>

