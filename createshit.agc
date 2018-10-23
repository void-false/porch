createshit:

if current <= maxballs and mod(GetSeconds(), 2) = 1
	ResetTimer()
	CreateSprite(current, shitimg)
	SetSpriteSize(current,33,33)
	SetSpriteShape(current, 3)
	SetSpritePosition(current, Random(300,400),Random(400,500))
	SetSpritePhysicsOn(current,2)
	SetSpritePhysicsAngularVelocity(current,Random(0,50)-25)
	SetSpritePhysicsVelocity(current, 0, -random(100,200))
	inc current
endif

return
