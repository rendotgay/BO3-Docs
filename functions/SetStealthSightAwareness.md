# SetStealthSightAwareness

Set the current stealth sight awareness state for this sentient

Example:
```c++
aiGuy SetStealthSightAwareness( "unaware", true )
```


### Parameters
Parameter | Summary
| - | - |
[awareness] | "unaware", "low_alert", "high_alert", "combat", or undefined to disable it (default disabled)
[decayEnabled] | if true stealth sight will decay when other sentient is not in sight (default true)

<sub>* = mandatory</sub>

