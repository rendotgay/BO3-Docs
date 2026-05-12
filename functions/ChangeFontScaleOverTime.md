# ChangeFontScaleOverTime

Set a hud element to transition in fontScale over time.  Normally setting the fontScale of an element causes an immediate visual change. However, if the fontScale gets set within &lt;time&gt; after calling ChangeFontScaleOverTime, then the hud element will transition to the new fontScale over the remaining &lt;time&gt;.

Example:
```c++
level.introstring1 ChangeFontScaleOverTime( 1.2 );  level.introstring1.fontScale = 0.3;  // This will transition the fontScale from whatever it was before to the new value of 0.3 over 1.2 seconds.
```

### Parameters
Parameter | Summary
| - | - |
*time | The time to scale the element font in seconds

<sub>* = mandatory</sub>

