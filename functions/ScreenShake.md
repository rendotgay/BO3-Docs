# ScreenShake

Create a screen shake event on the given point.

Example:
```c++
ScreenShake( jolt.origin, 0.3, 0.3, 0.3, 3, 0.2, 3, 850, 0.5, 0.25, 0.25 ); // locationalScreenShake( (0,0,0), 0.3, 0.3, 0.3, 3, 0.2, 3, 0, 0.5, 0.25, 0.25, player ); // non locational for one player only
```


### Parameters
Parameter | Summary
| - | - |
*sourcePoint | The position of the earthquake.
*scalepitch | The scale of the shake in player's pitch. Max is 100; Accurate to 2 decimal places.
*scaleyaw | The scale of the shake in player's yaw. Max is 100; Accurate to 2 decimal places.
*scaleroll | The scale of the shake in player's roll. Max is 100; Accurate to 2 decimal places.
*duration | Duration in seconds.
durationfadeup | Duration in seconds, included in base duration. Default is 0. Value of -1 means duration - durationfadeup.
durationfadedown | Duration in seconds, included in base duration. Default is -1. Value of -1 means duration - durationfadedown.
radius | The radius of shake, dampens as you move away from entity. Default is 0 = shake is global
frequencypitch | The scaled speed of the shake's pitch. Default is 1. Max is 100; Accurate to 2 decimal places.
frequencyyaw | The scaled speed of the shake's yaw. Default is 1. Max is 100; Accurate to 2 decimal places.
frequencyroll | The scaled speed of the shake's roll. Default is 1. Max is 100; Accurate to 2 decimal places.
exponent | The scale is multiplied by itself 'exponent' times to determine how the shake falls off. Default is 1 which is a linear falloff. Max is 100; Accurate to 2 decimal places
[target] | Target is given if screen shake is to be shown to particular client only

<sub>* = mandatory</sub>

