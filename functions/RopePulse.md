# RopePulse

Creates a stimulus that will effect ropes in the area and radius of the event.  Amount of movement is based on damage calculation.  Cheaper than physics events, as it only effects ropes.  Zero network cost, as it's on the client.

Example:
```c++
RopePulse(sRopePulse.origin, 10, 150, 100, 1); // 150 damage applied at 10 units or less, 1 damage applied at 150 units distance.
```


### Parameters
Parameter | Summary
| - | - |
*origin | Where the event is.
*innerRadius | inner radius of event.  At this radius or lower, innerDamage is done.
*outerRadius | outer radius of event.  Maximum extent at which outerDamage is done.  Damage scales to innerDamage between outerRadius and innerRadius
*innerDamage | how much damage is applied at innerRadius, or lower.
*outerDamage | how much damage is applied at outerRadius.

<sub>* = mandatory</sub>

