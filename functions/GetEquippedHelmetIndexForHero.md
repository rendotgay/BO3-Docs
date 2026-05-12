# GetEquippedHelmetIndexForHero

Returns the index of the equipped helmet index of a specific hero

Example:
```c++
helmetIndex = GetEquippedHelmetIndexForHero( localClientNum, 0 )
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | The localClientNum of the player in question
*sessionMode | The character's sessionMode
*heroIndex | The index of the hero in the current game-mode's character table or in case of lobby client, his queue position
[getForLobbyClient] | If this is set then we are supposed to retrieve for lobby client

<sub>* = mandatory</sub>

