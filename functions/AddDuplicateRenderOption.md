# AddDuplicateRenderOption

Add a duplicate render option for the entity

Example:
```c++
myEnt AddDuplicateRenderOption( DR_TYPE_FRAMEBUFFER, DR_METHOD_THERMAL_MATERIAL, DR_CULL_ALWAYS )myEnt AddDuplicateRenderOption( DR_TYPE_OFFSCREEN, DR_METHOD_CUSTOM_MATERIAL, DR_CULL_NEVER, mapped_material_id(player,"gfx_my_material_2") )
```

### Parameters
Parameter | Summary
| - | - |
*dupeType | this is one of [DR_TYPE_FRAMEBUFFER|DR_TYPE_FRAMEBUFFER_DUPLICATE|DR_TYPE_OFFSCREEN], as defined in _duplicaterender.csc. Sets the duplicate type of this call
*dupeMethod | this is one of [DR_CULL_ALWAYS|DR_CULL_NEVER], as defined in _duplicaterender.csc. Sets the render method of this call
mappedMaterialId | This is the mapped material id
dupeCull | this is one of [DR_METHOD_OFF|DR_METHOD_DEFAULT_MATERIAL|DR_METHOD_THERMAL_MATERIAL|DR_METHOD_CUSTOM_MATERIAL|DR_METHOD_FORCE_CUSTOM_MATERIAL], as defined in _duplicaterender.csc. Sets the render method of this call

<sub>* = mandatory</sub>

