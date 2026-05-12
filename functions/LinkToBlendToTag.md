# LinkToBlendToTag

Attaches one entity to another, gradually lerping entity to the parents orientation

Example:
```c++
self.rightturret LinkToBlendToTag( self, "tag_gunRight" )
```

### Parameters
Parameter | Summary
| - | - |
*linkto entity | The entity to attach this thing to
[tag] | The tag to attach the entity to
[only yaw] | Tells if blending only the yaw. Default to true.
[collision physics] | Sets whether we should use collision physics. Defaults to false.

<sub>* = mandatory</sub>

