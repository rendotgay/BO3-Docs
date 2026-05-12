# StartFadingBlur

Blurs the screen, then fades out the blur to 0, over a period of time.

Example:
```c++
player StartFadingBlur( 3, 2 )
```

### Parameters
Parameter | Summary
| - | - |
*blur_amount | The initial blur amount. The value is pixels for Gaussian blur at 640x480. Must be a floating point value greater than 0.
*time | Time in seconds, how long the fade out will take

<sub>* = mandatory</sub>

