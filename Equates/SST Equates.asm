; ====================================================================================================
; Equates for the object system
; ====================================================================================================

ReservedSST = $FFFFD000
SonicRAM = $FFFFD000
EndofReservedSST = $FFFFD7FF
DynamicSST = $FFFFD800
EndofDynamicSST = $FFFFEFFF

Object = 0
RenderFlags = 1
ArtTile = 2
Mappings = 4
XPosition = 8
ScreenX = 8
XSubpixel = $A
ScreenY = $A
YPosition = $C
YSubpixel = $E
XSpeed = $10
YSpeed = $12
GroundSpeed = $14
YHitbox = $16
XHitbox = $17
Priority = $18
ObjectWidth = $19
Frame = $1A
CurrentAnimFrame = $1B
Animation = $1C
RestartAnim = $1D
AnimSpeed = $1E
Collision = $20
Collision2 = $21
Status = $22
RespawnIndex = $23
Routine = $24
Routine2 = $25
Angle = $26
Subtype = $28

; ====================================================================================================
; End of File
; ====================================================================================================