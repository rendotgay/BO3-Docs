# PathDistance

Returns the approximate/semi-accurate path distance between two points or undefined if no path can be found.

Example:
```c++

```

### Parameters
Parameter | Summary
| - | - |
*start | .
*end | .
generatePathForAccurateDist | If set to true, a real path will be generated and the total length of the path segments will be returned.
pathEnt | Only used when generatePathForAccurateDist is set. pathEnt will be used for generating a path, so it will respect the movement type. Only supported for actors.
pathDistanceType | The method of pathdistance calculation. Two options are PATHDIST_APPROXIMATE(using getApproximateFuturePositions), PATHDIST_CORNERPREDICTED (using getCornerPredictor).
maxCornerPredictions | Maximum number of cornerPrediction steps when PATHDIST_CORNERPREDICTED is used. Handles the edge case when cornerPrediction may not ever finish stepping the path all the way.

<sub>* = mandatory</sub>

