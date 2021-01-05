; ====================================================================================================
; Motorola 68000 Exceptions Vector Table
; ====================================================================================================

Vectors:
        dc.l $FFFE00    ; Initial stack address
        dc.l ProgramStart       ; Program entry point
        dc.l BusError   ; Bus error
        dc.l AddressError       ; Address error
        dc.l IllegalInstruction ; Illegal instruction
        dc.l DividebyZero       ; Divide by zero error
        dc.l CHKException       ; CHK exception
        dc.l TRAPVException     ; TRAPV exception
        dc.l PrivilegeViolation ; Privelege violation
        dc.l TRACEException     ; TRACE exception
        dc.l LineAEmulation     ; Line A emulator
        dc.l LineFEmulation     ; Line F emulator
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Co-processor protocol violation
        dc.l ErrorException     ; Format error
        dc.l ErrorException     ; Uninitialized interrupt
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ErrorException     ; Unused
        dc.l ExceptionLoop      ; IRQ level 1
        dc.l ExceptionLoop      ; EXT interrupt
        dc.l ExceptionLoop      ; IRQ level 3
        dc.l HBlank     ; HBlank
        dc.l ExceptionLoop      ; IRQ level 5
        dc.l VBlank     ; VBlank
        dc.l ExceptionLoop      ; IRQ level 7
        dc.l ExceptionLoop      ; TRAP Exception 0
        dc.l ExceptionLoop      ; TRAP Exception 1
        dc.l ExceptionLoop      ; TRAP Exception 2
        dc.l ExceptionLoop      ; TRAP Exception 3
        dc.l ExceptionLoop      ; TRAP Exception 4
        dc.l ExceptionLoop      ; TRAP Exception 5
        dc.l ExceptionLoop      ; TRAP Exception 6
        dc.l ExceptionLoop      ; TRAP Exception 7
        dc.l ExceptionLoop      ; TRAP Exception 8
        dc.l ExceptionLoop      ; TRAP Exception 9
        dc.l ExceptionLoop      ; TRAP Exception 10
        dc.l ExceptionLoop      ; TRAP Exception 11
        dc.l ExceptionLoop      ; TRAP Exception 12
        dc.l ExceptionLoop      ; TRAP Exception 13
        dc.l ExceptionLoop      ; TRAP Exception 14
        dc.l ExceptionLoop      ; TRAP Exception 15
        dc.l ExceptionLoop      ; (FP) Branch or set on unordered condition
        dc.l ExceptionLoop      ; (FP) Inexact result
        dc.l ExceptionLoop      ; (FP) Divide by zero
        dc.l ExceptionLoop      ; (FP) Underflow
        dc.l ExceptionLoop      ; (FP) Operand error
        dc.l ExceptionLoop      ; (FP) Overflow
        dc.l ExceptionLoop      ; (FP) Signaling NAN
        dc.l ExceptionLoop      ; (FP) Unimplemented data type
        dc.l ExceptionLoop      ; MMU Configuration error
        dc.l ExceptionLoop      ; MMU Illegal operation error
        dc.l ExceptionLoop      ; MMU Access violation error
        dc.l ExceptionLoop      ; Unused
        dc.l ExceptionLoop      ; Unused
        dc.l ExceptionLoop      ; Unused
        dc.l ExceptionLoop      ; Unused
        dc.l ExceptionLoop      ; Unused

; ====================================================================================================
; End of File
; ====================================================================================================