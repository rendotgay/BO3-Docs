# AreTexturesLoaded

Check to see if start-of-level textures are loaded - if they're not, the streamer forces a black screen.

Example:
```c++
while( !areTexturesLoaded() ) { wait(0.05); }
```


