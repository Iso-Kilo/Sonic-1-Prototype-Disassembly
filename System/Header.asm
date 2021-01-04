; ====================================================================================================
; SEGA Mega Drive ROM Header
; ====================================================================================================

Console:
        dc.b    "SEGA MEGA DRIVE "  ; "SEGA" portion is all that's needed to pass security. 16 characters.

Copyright:
        dc.b    "(C)SEGA 1989.JAN"  ; Note, not the actual build date, just default info from the SDK. 16 characters.

Title_Local:
        dc.b    "                                                "  ; Name in Japan and Asian territories. 48 characters.

Title_International:
        dc.b    "                                                "  ; Name in US and Europe. 48 characters.

ProductID:
        dc.b    "GM 00000000-00"    ; Product type, serial, revision. 14 characters.

Checksum:
        dc.w    0

IOSupport:
        dc.b    "J               "  ; Supported devices. 16 characters

ROMStart:
        dc.l    StartofROM

ROMEnd:
        dc.l    EndofROM-1

RAMStart:
        dc.l    $FF0000 ; Start of RAM used by the program

RAMEnd:
        dc.l    $FFFFFF ; End of RAM used by the program

SRAMType:
        dc.l    $20202020   ; SRAM type and support. (Null)

SRAMStart:
        dc.l    $20202020   ; Start of SRAM memory. (Null)

SRAMEnd:
        dc.l    $20202020   ; End of SRAM memory. (Null)

HeaderMisc:
        dc.b    "                                                    "

RegionSupport:
        dc.b    "JU              "  ; Supported regions the ROM can be played in. 16 characters. J = Japan, U = US, E = Europe.

; ====================================================================================================
; End of File
; ====================================================================================================