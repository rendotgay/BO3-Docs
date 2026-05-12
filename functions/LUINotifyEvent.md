# LUINotifyEvent

Sends a notify from script to LUI.

Example:
```c++
LUINotifyEvent( &"update_objectives", 1, &"LEVEL_GOTO_NEXT_PLACE" )
```


### Parameters
Parameter | Summary
| - | - |
[player] | the player to notify. If not specified, all players are notified.
*lui event name | as an IString
*num of args | number of parameters
*args | argument to pass to LUI

<sub>* = mandatory</sub>

