# GetAttachPos

Returns the origin and angles if the vehicle were to be attached to the path.  The origin and angles are returned as a vector array of size 2.  Origin is 1st and angles is 2nd.

Example:
```c++
pos = self GetAttachPos( node )origin = pos[0]angles = pos[1]
```

### Parameters
Parameter | Summary
| - | - |
*node index | A node on the path to attach.

<sub>* = mandatory</sub>

