; ====================================================================================================
; Animation Testing Object - ID 0x10
; ====================================================================================================

; Fun fact, according to source code found in some dev docs, this object is officially called play02
; The main player Sonic being play00 and Sonic in the special stage is play01

ObjAnimationTest:
        moveq   #0,d0   ; Clear d0
        move.b  Routine(a0),d0  ; Move the routine counter into d0
        move.w  ObjAniTest_Index(pc,d0.w),d1
        jmp     ObjAniTest_Index(pc,d1.w)   ; Go to the routine relative to the counter.

; ----------------------------------------------------------------------------------------------------
ObjAniTest_Index:
        dc.w ObjAniTest_Init-ObjAniTest_Index   ; Routine 0
        dc.w ObjAniTest_Display-ObjAniTest_Index    ; Routine 2
        dc.w ObjAniTest_Delete-ObjAniTest_Index ; Routine 4
        dc.w ObjAniTest_Delete-ObjAniTest_Index ; Routine 6
; ----------------------------------------------------------------------------------------------------

ObjAniTest_Init:
        addq.b  #2,Routine(a0)  ; Go to ObjAniTest_Display
        move.b  #$12,YHitbox(a0)    ; Initialize Y hitbox
        move.b  #9,XHitbox(a0)  ; Initialize X hitbox
        move.l  #Map_Sonic,Mappings(a0) ; Load mappings (Just uses Sonic's)
        move.w  #$780,ArtTile(a0)   ; Set up palette, and tile position to use
        move.b  #%00000100,RenderFlags(a0)  ; Set render flags (Sets playfield positioned flag)
        move.b  #2,ObjectWidth(a0)  ; Set object visible width

ObjAniTest_Display:
        bsr.w   ObjAniTest_Control  ; Get player input
        bsr.w   Sonic_LoadDPLCs ; Load DPLCs (Hijacks player Sonic, breaking his tiles)
        jmp     DisplayObject   ; Display the object

; ----------------------------------------------------------------------------------------------------

ObjAniTest_Control:
        move.b  (P1HeldLogic).w,d4  ; Move player 1's held buttons into d4
        move.w  YPosition(a0),d2    ; Move Y position into d2
        move.w  XPosition(a0),d3    ; Move X position into d3
        moveq   #1,d1   ; Set movement speed
        btst    #BitUp,d4   ; Check if up is being held
        beq.s   ObjAniTest_ChkDown  ; If not, branch
        sub.w   d1,d2   ; Subtract movement speed from the Y position (Moves object up)

ObjAniTest_ChkDown:
        btst    #BitDown,d4 ; Check if down is being held
        beq.s   ObjAniTest_ChkLeft  ; If not, branch
        add.w   d1,d2   ; Add movement speed to the Y position (Moves object down)

ObjAniTest_ChkLeft:
        btst    #BitLeft,d4 ; Check if left is being held
        beq.s   ObjAniTest_ChkRight ; If not, branch
        sub.w   d1,d3   ; Subtract movement speed from the X position (Moves object left)

ObjAniTest_ChkRight:
        btst    #BitRight,d4    ; Check if right is being held
        beq.s   ObjAniTest_ChkB ; If not, branch
        add.w   d1,d3   ; Add movement speed to the X position (Moves object right)

ObjAniTest_ChkB:
        move.w  d2,YPosition(a0)    ; Move d2 into the Y position
        move.w  d3,XPosition(a0)    ; Move d3 into the X position
        btst    #BitB,(P1PressedLogic).w    ; Check if the B button was pressed
        beq.s   ObjAniTest_ChkC ; If not, branch
        move.b  RenderFlags(a0),d0  ; Move render flags into d0
        move.b  d0,d1   ; Move render flags also into d1
        addq.b  #1,d0   ; ???
        andi.b  #3,d0   ; ???
        andi.b  #$FC,d1 ; ???
        or.b    d1,d0   ; ???
        ; Flip the sprite (According to AF)
        move.b  d0,RenderFlags(a0)  ; Move resulting value back into the render flags

ObjAniTest_ChkC:
        btst    #BitC,(P1PressedLogic).w    ; Check if C is being pressed
        beq.s   ObjAniTest_Animate      ; If not, branch
        addq.b  #1,Animation(a0)        ; Play next animation
        cmpi.b  #$19,Animation(a0)      ; Check if the object is already at the last animation (ID 0x19)
        bcs.s   ObjAniTest_Animate      ; If not, branch
        move.b  #0,Animation(a0)        ; Go back to the first animation

ObjAniTest_Animate:
        jsr     Sonic_Animate   ; Play Sonic's animations
        rts     ; Return
; End of function ObjAniTest_Control

; ----------------------------------------------------------------------------------------------------

ObjAniTest_Delete:
        jmp     DeleteObject    ; Delete the object

; ====================================================================================================
; End of File
; ====================================================================================================