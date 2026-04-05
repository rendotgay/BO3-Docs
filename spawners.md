# Adding Spawners
How to add zombie spawners
## Option 1: Ground Spawners
### TL;DR
script_struct
```kvp
targetname <zone>_spawners
script_noteworthy riser_location
script_string find_flesh
```
1. Add a `script_struct` where you want the zombies to spawn
2. Set the `targetname` KVP to the name of your zone the target set in your [zone](zones.md)
3. Add KVP `script_noteworthy` and set it to `riser_location`
4. Add KVP `script_string` and set it to `find_flesh`

## Option 2: Barricade Spawners
### Note: one spawner can only target one barricade
### TL;DR
misc_prefab
```kvp
script_string <zone>_b<number>
```
script_struct
```kvp
targetname <zone>_spawners
script_noteworthy riser_location
script_string <zone>_b<number>
```
1. Add a barricade prefab from `_prefabs/zm/zm_core/` and position it
2. Add the KVP `script_string` and set it to your zone name followed by `_b` followed by a unique number, for example: `start_zone_b1`
3. Add a `script_struct` where you want the zombies to spawn
4. Set the `targetname` KVP to the name of your zone the target set in your [zone](zones.md)
5. Add KVP `script_noteworthy` and set it to `riser_location`
6. Add KVP `script_string` and set it to the same KVP as the barricade