# Interact UI Example

Here's a simple showcase of how to add the interact / hint text to your LUA. This is my example from my CSGO HUD remake. I didn't want the icon, so if you do, you'll have to look into that yourself.

```lua
Hud.Interact = LUI.UIText.new(Hud, Instance)
Hud.Interact:setLeftRight(false, false, -119, 119)
Hud.Interact:setTopBottom(false, false, 44, 58)
Hud.Interact:setTTF("fonts/stratum2bold.ttf")
Hud.Interact:setRGB(1, 1, 1)
Hud.Interact:setAlpha(0)
Hud:addElement(Hud.Interact)

Hud.Interact:subscribeToGlobalModel(Instance, "HUDItems", "cursorHintText",
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val and val ~= "" and val ~= "0" then
          Hud.Interact:setText(Engine.Localize(val))
      end
  end
)

Hud.Interact:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "hudItems.showCursorHint"),
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          Hud.Interact:setAlpha(1)
      else
          Hud.Interact:setAlpha(0)
      end
  end
)

Hud.InteractSub = LUI.UIText.new(Hud, Instance)
Hud.InteractSub:setLeftRight(false, false, -119, 119)
Hud.InteractSub:setTopBottom(false, false, 68, 82)
Hud.InteractSub:setTTF("fonts/stratum2bold.ttf")
Hud.InteractSub:setRGB(0.8, 0.8, 0.8)
Hud.InteractSub:setAlpha(0)
Hud:addElement(Hud.InteractSub)

Hud.InteractSub:subscribeToGlobalModel(Instance, "HUDItems", "cursorHintTextLine2",
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val and val ~= "" and val ~= "0" then
          Hud.InteractSub:setText(Engine.Localize(val))
      end
  end
)

Hud.InteractSub:subscribeToModel(
  Engine.GetModel(Engine.GetModelForController(Instance), "hudItems.showCursorHint"),
  function(ModelRef)
      local val = Engine.GetModelValue(ModelRef)
      if val then
          Hud.InteractSub:setAlpha(1)
      else
          Hud.InteractSub:setAlpha(0)
      end
  end
)
```	