# CalcLookaheadPos

Calculate a lookahead point based on a given starting location and number of iterations. Returns an array with these keys: "position", "node" and "next_node", which contain vectors for the actual lookahead position and the next two nodes on the path, respectively.

Example:
```c++
self CalcLookaheadPos( self.origin, 3 )
```


### Parameters
Parameter | Summary
| - | - |
*startPos | Starting position of the lookahead traces
*numIter | Number of times to iterate (more gives better results, but is more expensive). Set to 0 to get current lookahead.

<sub>* = mandatory</sub>

