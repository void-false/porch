SetVirtualResolution(675, 900)
SetWindowSize(675, 900, 0)
SetSyncRate(60,0)
SetRawMouseVisible(0)
//SetPhysicsDebugOn()
SetPhysicsWallBottom(0)

bg=CreateSprite(LoadImage("bg.jpg"))


shitimg=LoadImage("shit.png")
maxballs=10
current=1
force=-300
hits=0
#include "checkcollision.agc"
#include "createsprites.agc"
#include "movebat.agc"


bat = CreateSprite(LoadImage("bat.png"))
SetSpriteSize(bat, 50, 150)
SetSpritePosition(bat, 300, 750)
SetSpritePhysicsOn(bat, 3)

ceiling = CreateSprite(CreateImageColor(255,255,255,255))
SetSpriteSize(ceiling, 1024, 1)
SetSpritePosition(ceiling, 1, 0)
SetSpritePhysicsOn(ceiling, 3)

ResetTimer()

do
	if GetRawKeyPressed(27) then exit
	gosub createsprites
	gosub checkcollision
	gosub movebat
	Print("SCORE: " + str(hits))
	Sync()
loop

end
