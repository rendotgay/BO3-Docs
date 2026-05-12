# DepthOfPlayerInWater

Returns the depth (in inches) that the player is in water.  Returns depth in inches, or 0 if the entity isn't in water.  Will work for all water types.  More effecient than depthinwater but will only work for players

Example:
```c++
depth = get_players()[0] DepthOfPlayerInWater()
```

