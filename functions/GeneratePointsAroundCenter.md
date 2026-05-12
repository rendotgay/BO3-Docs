# GeneratePointsAroundCenter

generate uniformly distributed points around a center in 2D (XY) plane

Example:
```c++
array = GeneratePointsAroundCenter( enemy.origin, 500, 80, 100, 40, (-0.3,0,0) )
```

### Parameters
Parameter | Summary
| - | - |
*origin | Position to start the search around.
*maxSearchRadius | the maximum radius away from origin.
*innerSpacing | the distance between points at the minRadius.
[minRadius] | the minimum radius away from origin. should be between 0 and maxRadius (both inclusive).
[outerSpacing] | if defined, the distance between points will be Lerped from <innerSpacing> to [outerSpacing], to create a gradual distribution from minRadius to maxRadius.
[distributionBias] | (vec2) if defined, the density of the points will be changed gradually along the direction of this vector. the magnitude will be use as scalar, with 1 being the norm scale.

<sub>* = mandatory</sub>

