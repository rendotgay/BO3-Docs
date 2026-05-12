# AddBoltedFXExclusionVolume

Create a bolted volume that will exclude FX that are flagged as "Respect Exclusion Volumes". Returns volume ID.

Example:
```c++
volumeID = AddBoltedFXExclusionVolume( 0, entity, tag_origin, (10, 10, 10) )
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | The local client to create the volume on.
*entity | The entity to attach the volume to.
*tag name | The tag to use as the volume's origin.
*half extents | The half extents of the volume.
offset | An offset from the tag name for the volume's origin; default is 0 0 0.

<sub>* = mandatory</sub>

