initsprites:

shitimg=LoadImage("shit.png")

broom1 = CreateSprite(LoadImage("broom.png"))
SetSpriteScale(broom1, 0.35, 0.35)
SetSpritePosition(broom1, 0, 200)
SetSpriteShape(broom1, 3)
SetSpritePhysicsOn(broom1, 3)
SetSpritePhysicsAngularVelocity(broom1, rotate)
SetSpriteVisible(broom1, 0)

broom2 = CreateSprite(LoadImage("broom.png"))
SetSpriteScale(broom2, 0.35, 0.35)
SetSpritePosition(broom2, GetVirtualWidth()-GetSpriteWidth(broom2), 200)
SetSpriteShape(broom2, 3)
SetSpritePhysicsOn(broom2, 3)
SetSpritePhysicsAngularVelocity(broom2, -rotate)
SetSpriteVisible(broom2, 0)

bat = CreateSprite(LoadImage("bat.png"))
SetSpriteSize(bat, 50, 150)
SetSpritePosition(bat, 300, 750)
SetSpritePhysicsOn(bat, 3)
SetSpriteVisible(bat, 0)

ceiling = CreateSprite(CreateImageColor(255,255,255,255))
SetSpriteSize(ceiling, 1024, 1)
SetSpritePosition(ceiling, 1, 0)
SetSpritePhysicsOn(ceiling, 3)

text = CreateText("УБЕРИ. СВОЕ. ГОВНО!")
SetTextSize(text, 48)
SetTextBold(text, 1)
SetTextPosition(text, (GetVirtualWidth()-GetTextTotalWidth(text))/2, GetVirtualHeight()/3)


return
