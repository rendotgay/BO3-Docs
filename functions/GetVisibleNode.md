# GetVisibleNode

Returns the farthest visible node on the path from &lt;start&gt; to &lt;end&gt; or undefined if no path exists.

Example:
```c++
node = GetVisibleNode( guy.origin, enemy.origin, guy )
```


### Parameters
Parameter | Summary
| - | - |
*start | starting origin of the path
*end | ending origin of the path
[ignore entity] | An entity to ignore during pathnode trace checks

<sub>* = mandatory</sub>

