SetVirtualResolution(675, 900)
SetWindowSize(675, 900, 0)
SetSyncRate(60,0)
SetRawMouseVisible(0)
SetPrintColor(255, 192, 203)
SetPrintSize(32)
//SetPhysicsDebugOn()

SetPhysicsWallBottom(0)
UseNewDefaultFonts( 1 ) 
bg=CreateSprite(LoadImage("bg.jpg"))


maxballs=10
current=1
force=-300
hits=0
rotate as float = 1.0
#include "checkcollision.agc"
#include "createshit.agc"
#include "movebat.agc"
#include "initsprites.agc"

gosub initsprites


ResetTimer()

do
	if GetPointerPressed() then exit
	if GetMilliseconds() > 75
		ResetTimer()
		SetTextColor(text, Random(0,255),Random(0,255),Random(0,255),255)
	endif
	sync()
loop

SetTextVisible(text, 0)
SetSpriteVisible(bat, 1)
SetSpriteVisible(broom1, 1)
SetSpriteVisible(broom2, 1)

ResetTimer()

do
	if GetRawKeyPressed(27) then exit
	gosub createshit
	gosub checkcollision
	gosub movebat
	Print("SCORE: " + str(hits))
	Sync()
loop

end
