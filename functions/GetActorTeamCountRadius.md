# GetActorTeamCountRadius

Returns number of human actor AI within a sphere on a given set of teams

Example:
```c++
nearbyOthersCount = GetActorTeamCountRadius( self.origin, 500, "axis", "neutral" )
```


### Parameters
Parameter | Summary
| - | - |
*origin | Center of sphere
*radius | Radius of sphere
[team] | any number of team names may be added, either 'axis', 'allies', or 'neutral' (no team implies all teams)

<sub>* = mandatory</sub>

