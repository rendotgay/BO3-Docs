# AddFXExclusionVolume

Create a volume that will exclude FX that are flagged as "Respect Exclusion Volumes". Returns volume ID.

Example:
```c++
volumeID = AddFXExclusionVolume( 0, (0,0,0), (0, 45, 0), (10, 10, 10) )
```

### Parameters
Parameter | Summary
| - | - |
*localClientNum | The local client to create the volume on.
*center | The center of the volume.
*angles | The rotation angles of the volume.
*half extents | The half extents of the volume.

<sub>* = mandatory</sub>

