# GetBestSpawnPoint

Returns a sorted array of spawnpoints in order from best to worst for the given team

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
*point team | Team that we need the points for
*influencer team | Influencer teams to compare the points against
*vis team | Team mask to use for enemy vis tests
[player] | Player that we want the points for.  The first parameter will still be used for the team.
[predictedSpawn] | true if this is a predicted spawn request (used by texture streaming).
[array of lists] | if provided, the spawn point will be chosen from one of these lists. If a list is disabled already for a given team, it will not be considered.

<sub>* = mandatory</sub>

