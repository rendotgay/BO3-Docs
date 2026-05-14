# Ammo Counter UI Example

Here's a simple showcase of how to add an ammo count display. This is my example from my CSGO HUD remake.

```lua
Hud.Clip = LUI.UIText.new(Hud, Instance)
Hud.Clip:setLeftRight(false, true, -187, -146)
Hud.Clip:setTopBottom(false, true, -44, -15)
Hud.Clip:setTTF("fonts/stratum2bold.ttf")
Hud.Clip:setRGB(1, 1, 1)
Hud:addElement(Hud.Clip)

Hud.Clip:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "currentWeapon.ammoInClip"),
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          Hud.Clip:setText(Engine.Localize(val))
      end
  end
)

Hud.Reserve = LUI.UIText.new(Hud, Instance)
Hud.Reserve:setLeftRight(false, true, -130, -101)
Hud.Reserve:setTopBottom(false, true, -29, -15)
Hud.Reserve:setTTF("fonts/stratum2bold.ttf")
Hud.Reserve:setRGB(0.8, 0.8, 0.8)
Hud:addElement(Hud.Reserve)

Hud.Reserve:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "currentWeapon.ammoStock"),
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          Hud.Reserve:setText(Engine.Localize(val))
      end
  end
)
```