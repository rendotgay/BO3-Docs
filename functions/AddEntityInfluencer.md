# AddEntityInfluencer

Adds a new influencer of &lt;name&gt; attached to &lt;entity&gt

Example:
```c++
influencer_id = AddEntityInfluencer( name, player, allies_mask )
```

### Parameters
Parameter | Summary
| - | - |
*name | valid spawn influencer preset name.
*entity | Attached to entity.  Goes away when entity is deleted. Unless a time is set.
*team mask | teams that this influencer will affect

<sub>* = mandatory</sub>

