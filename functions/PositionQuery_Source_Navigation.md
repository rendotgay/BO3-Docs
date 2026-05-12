# PositionQuery_Source_Navigation

Generate points around &lt;origin&gt;, between &lt;minSearchRadius&gt; and &lt;maxSearchRadius&gt; and within &lt;halfHeight&gt; height difference. For ground AI, the points will be on Nav Mesh; for flying AI, the points will be in Nav Volume. Only the points in pathable area will be kept. If the &lt;origin&gt; itself is in pathable area, all the points are guaranteed to be reachable from &lt;origin&gt;. If the &lt;origin&gt; is outside pathable area, all the points will still be in pathable areas surrounding &lt;origin&gt;, but reach-abilities cannot be guaranteed.

Example:
```c++
queryResult = PositionQuery_Source_Navigation( goalpos, self.radius, self.radius * 8, heightRadius, AI_GOAL_POINT_STEP, self, AI_GOAL_POINT_STEP * 0.2 )if ( queryResult.centerOnNav ){foreach( pointStruct in queryResult.data ){position = pointStruct.origindist = pointStruct.distToOrigin2D...}}
```


### Parameters
Parameter | Summary
| - | - |
*origin | Position to start the search around.
*minSearchRadius | the minimum radius away from origin.
*maxSearchRadius | the maximum radius away from origin. can equal to minSearchRadius.
*halfHeight | the max height difference (both positive and negative) away from origin.
*innerSpacing | the distance between points in.
[reachableBy_Ent] | if defined, it will be used to make sure all the points are reachable by this entity from <origin> (not the entity's current position). Can pass in a float number radius to get points on NavMesh. Can also pass in string 'navvolume_small' or 'navvolume_big' to get points on navvolume. Note passing in entity radius only gives rough estimate, not correct result.
[outerSpacing] | if defined, the distance between points will be Lerped from <innerSpacing> to [outerSpacing], to create a gradual distribution.
[distributionBias] | (vec2) if defined, the density of the points will be changed gradually along the direction of this vector. the magnitude will be use as scalar, with 1 being the norm scale.

<sub>* = mandatory</sub>

