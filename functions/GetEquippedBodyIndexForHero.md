# GetEquippedBodyIndexForHero

Returns the index of the equipped body model of a specific hero

Example:
```c++
bodyIndex = GetEquippedBodyIndexForHero( localClientNum, 0 )
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | The localClientNum of the player in question
*sessionMode | Character Session Mode
*heroIndex | The index of the hero in the current game-mode's character table or in case of lobby client, his queue position
[getForLobbyClient] | If this is set then we are supposed to retrieve for lobby client

<sub>* = mandatory</sub>

