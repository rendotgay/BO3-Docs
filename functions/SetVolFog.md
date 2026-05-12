# SetVolFog

Creates an exponential fog.

Example:
```c++
SetVolFog(0.0001144, 0.01, 131/255, 116/255, 71/255, 0)
```

### Parameters
Parameter | Summary
| - | - |
*startDist | The distance, in world units, at which the fog begins.
*halfwayDist | The distance at which the scene will be 50% fogged.
*halfwayHeight | The height at which the scene will be 50% fogged.
*baseHeight | The ground-level Z position at which the fog will start from.
*red | The red component of the fog as a value between 0.0 and 1.0
*green | The green component of the fog as a value between 0.0 and 1.0
*blue | The blue component of the fog as a value between 0.0 and 1.0
*transition time | transition time in seconds
*startDist | The distance, in world units, at which the fog begins.
*halfwayDist | The distance at which the scene will be 50% fogged.
*halfwayHeight | The height at which the scene will be 50% fogged.
*baseHeight | The ground-level Z position at which the fog will start from.
*red | The red component of the fog as a value between 0.0 and 1.0
*green | The green component of the fog as a value between 0.0 and 1.0
*blue | The blue component of the fog as a value between 0.0 and 1.0
*fogColorScale | The scaler for the colors as a value between 1 and 10000.0
*sunFogRed | The red component of the fog as a value between 0.0 and 1.0
*sunFogGreen | The green component of the fog as a value between 0.0 and 1.0
*sunFogBlue | The blue component of the fog as a value between 0.0 and 1.0
*sunFogDirX | The X component of the fog direction as a value between -1.0 and 1.0
*sunFogDirY | The Y component of the fog direction as a value between -1.0 and 1.0
*sunFogDirZ | The Z component of the fog direction as a value between -1.0 and 1.0
*sunFogStartAng | The starting angle of the sun fog as a value between 0 and 180
*sunFogEndAng | The ending angle of the sun fog as a value between 0 and 180
*fog max opacity | The maximum opacity of the fog as a value between 0 and 1
*transition time | transition time in seconds

<sub>* = mandatory</sub>

