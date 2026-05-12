# FadeOverTime

Set a hud element to transition in color (or alpha) over time.  Normally setting the color (or alpha) of an element causes an immediate visual change. However, if the color (or alpha) gets set within &lt;time&gt; after calling fadeOverTime, then the hud element will transition to the new color over the remaining &lt;time&gt;.

Example:
```c++
level.introstring1 FadeOverTime( 1.2 );  level.introstring1.alpha = 0.3;  // This will transition the alpha from whatever it was before to the new value of 0.3 over 1.2 seconds.
```


### Parameters
Parameter | Summary
| - | - |
*time | The time to fade the element in seconds

<sub>* = mandatory</sub>

