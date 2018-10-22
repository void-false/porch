checkcollision:

for i=1 to current
	ball2check=i
	direction=RandomSign(1)
	if GetPhysicsCollision(bat, ball2check)
		SetSpritePhysicsVelocity(ball2check, Random(200,400)*direction, force)
		dec force, 30
		inc hits
	elseif GetPhysicsCollision(ceiling, ball2check)
		SetSpritePhysicsVelocity(ball2check, Random(200,400)*direction, -force)
	endif
		
next i

return
