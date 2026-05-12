# SnapshotAcknowledged

Returns 1 if all clients have acknowledged the snapshot or the timeout has expired. Otherwise returns undefined.

Example:
```c++
acked = SnapshotAcknowledged( snapindices )
```

### Parameters
Parameter | Summary
| - | - |
*array | The array returned by GetSnapshotIndexArray.

<sub>* = mandatory</sub>

