; ====================================================================================================
; Motorola 68000 Exceptions Vector Table
; ====================================================================================================

Vectors:
        dc.l $FFFE00    ; Initial stack address
        dc.l ProgramStart   ; Program entry point
        dc.l BusError   ; Bus error
        dc.l AddressError   ; Address error
        dc.l IllegalInstruction ; Illegal instruction
        dc.l DividebyZero   ; Divide by zero error
        dc.l CHKException   ; CHK exception
        dc.l TRAPVException ; TRAPV exception
        dc.l PrivilegeViolation ; Privelege violation
        dc.l TRACEException ; TRACE exception
        dc.l LineAEmulation ; Line A emulator
        dc.l LineFEmulation ; Line F emulator
        dc.l ErrorException ; Unused
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ErrorException
        dc.l ExceptionLoop  ; IRQ level 1
        dc.l ExceptionLoop  ; EXT interrupt
        dc.l ExceptionLoop  ; IRQ level 3
        dc.l HBlank ; HBlank
        dc.l ExceptionLoop  ; IRQ level 5
        dc.l VBlank ; VBlank
        dc.l ExceptionLoop  ; IRQ level 7
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop
        dc.l ExceptionLoop

; ====================================================================================================
; End of File
; ====================================================================================================