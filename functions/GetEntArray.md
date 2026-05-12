# GetEntArray

Looks up entities by key and name and a return an array of the matched entities

Example:
```c++
spawners = GetEntArray( "doorguy1", "targetname" )
```

**Returns:** [`entity`](../types/entity.md)

### Parameters
Parameter | Summary
| - | - |
[name] | name to search for
[key] | key that name goes with
[ignore spawners] | if true then you won't get a spawner back

<sub>* = mandatory</sub>

