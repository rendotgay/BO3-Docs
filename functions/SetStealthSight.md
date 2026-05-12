# SetStealthSight

Set the parameters for given awarenesslevel of stealth sight when active on an sentient

Example:
```c++
SetStealthSight( "high_alert", 2, 1, 10, 200, 1000 )
```

### Parameters
Parameter | Summary
| - | - |
*awareness | "unaware", "low_alert", "high_alert", or "combat"
*timeDecay | float value of seconds stealth sight takes to fall off completely (0 for never/infinite)
*timeDistMin | float value of seconds stealth sight takes to grow completely at min range (0 for never/infinite)
*timeDistMax | float value of seconds stealth sight takes to grow completely at max range (0 for never/infinite)
*distMin | float value of the min distance
*distMax | float value of the max distance
extendSight | indicates of sight continues beyond max range at the max rate

<sub>* = mandatory</sub>

