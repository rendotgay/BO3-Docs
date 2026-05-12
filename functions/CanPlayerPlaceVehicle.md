# CanPlayerPlaceVehicle

Try to place a vehicle in front of the player.  It'll return an array containing the placement "result", "origin", and "angles".

Example:
```c++
placement = level.player CanPlayerPlaceVehicle( 25, 45, 50, 40, 80, 0.7 )
```

### Parameters
Parameter | Summary
| - | - |
*radius | Radius of the bounds check
*height | Height of the bounds check
*forward Distance | Distance away from player origin.
*up Distance | Distance up from player origin.
*sweep Distance | Distance to sweep downwards.
*min normal | Minimum hit normal needed to be pass.

<sub>* = mandatory</sub>

