# GetNodesInRadiusSorted

Gets all of the nodes (max of 256) within a cylinder, sorted by closest to &lt;origin&gt

Example:
```c++
nodes = GetNodesInRadiusSorted( guy.origin, 512, 0, 128, "Path" )
```


### Parameters
Parameter | Summary
| - | - |
*origin | location to search for nodes at
*max radius | maximum distance of nodes to return
*min radius | maximum distance of nodes to return
[max height] | maximum height difference to origin. Defaults to 512
[node type] | node type to search for, if not specified, returns all node types. 'Cover' will return all cover nodes
[max nodes] | the maximum number of nodes to return up to 256

<sub>* = mandatory</sub>

