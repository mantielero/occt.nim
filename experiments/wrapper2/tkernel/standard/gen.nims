#!/usr/bin/env nim
import strutils
let lib = "/usr/include/opencascade/"
let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

"""
proc genFiles(file:string;remove:seq[tuple[a,b:int]] = @[]; addColon:seq[int] = @[]) =
    cpFile(lib & file & ".hxx", file & ".hxx")

    # Colons to add at the end of line
    if addColon.len > 0:
        for line in addColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & file & ".hxx"

            exec edit

    # Lines to remove from the header
    if remove.len > 0:
        var edit = ""
        var n = 0
        for item in remove:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != remove.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & file & ".hxx"


    exec "c2nim --cpp --header --strict --out:" & file.toLower & ".nim standard.c2nim " & file & ".hxx"
    let txt = readFile("standard.nim")
    writeFile("standard.nim", beg & txt)
    rmFile(file & ".hxx")
    echo file



# ls -l | cut -c 44-
genFiles("Standard")
genFiles("Standard_AbortiveTransaction")
genFiles("Standard_Address")
genFiles("Standard_ArrayStreamBuffer")


genFiles("Standard_Assert", remove = @[(18, 159), (165,171), (174,175)])
genFiles("Standard_Atomic", remove = @[(72,76)])
genFiles("Standard_Boolean")
genFiles("Standard_Byte")
genFiles("Standard_Character", remove = @[(126,127), (132,132)], addColon = @[125, 131])
genFiles("Standard_CLocaleSentry", remove = @[(22,45), (95,106)])
genFiles("Standard_Condition")
genFiles("Standard_ConstructionError")
genFiles("Standard_CString")
genFiles("Standard_DefineAlloc") #, remove = @[(21,33), (38,53)])
genFiles("Standard_DefineException")
genFiles("Standard_DefineHandle")
genFiles("Standard_DimensionError")
genFiles("Standard_DimensionMismatch")
genFiles("Standard_DivideByZero")
genFiles("Standard_DomainError")
genFiles("Standard_Dump", remove = @[(21, 231)])
genFiles("Standard_ErrorHandler", remove = @[(48, 68), (198,214)])
genFiles("Standard_ExtCharacter")
genFiles("Standard_ExtString")
genFiles("Standard_Failure", remove = @[(30,31), (107, 108)])
genFiles("Standard_GUID")
genFiles("Standard_Handle", remove = @[(152,154), (173,175), (180,182), (184,214), (216,398), (406,407), (413,417), (419,439)], addColon = @[151, 172, 179,414]) #remove = @[(152,154), (173,175), (180,182)], addColon = @[151, 172, 179] )#, remove = @[(159, 161)], addColon = @[158])
genFiles("Standard_HandlerStatus")
genFiles("Standard_ImmutableObject")
genFiles("Standard_Integer")  # Ignored: #assumedef _Standard_Integer_HeaderFile
genFiles("Standard_IStream")
genFiles("Standard_JmpBuf")   # Ignored: #assumedef _Standard_JmpBuf_HeaderFile
genFiles("Standard_LicenseError")
genFiles("Standard_LicenseNotFound")
genFiles("Standard_Macro")    # Ignored: #assumedef _Standard_Macro_HeaderFile
genFiles("Standard_math")
genFiles("Standard_MMgrOpt")
genFiles("Standard_MMgrRaw")
genFiles("Standard_MMgrRoot")
genFiles("Standard_MMgrTBBalloc")
genFiles("Standard_MultiplyDefined")
genFiles("Standard_Mutex")
genFiles("Standard_NegativeValue")
genFiles("Standard_NoMoreObject")
genFiles("Standard_NoSuchObject")
genFiles("Standard_NotImplemented")
genFiles("Standard_NullObject")
genFiles("Standard_NullValue")
genFiles("Standard_NumericError")
genFiles("Standard_OStream")
genFiles("Standard_OutOfMemory")
genFiles("Standard_OutOfRange", remove = @[(28, 46)])
genFiles("Standard_Overflow")
genFiles("Standard_PByte")
genFiles("Standard_PCharacter")
genFiles("Standard_PErrorHandler")
genFiles("Standard_Persistent")
genFiles("Standard_PExtCharacter")
genFiles("Standard_PrimitiveTypes")
genFiles("Standard_ProgramError")
genFiles("Standard_RangeError")
genFiles("Standard_ReadBuffer", remove = @[(145, 147)], addColon = @[144])
genFiles("Standard_ReadLineBuffer", remove = @[(253, 253), (290,293)], addColon = @[289])
genFiles("Standard_Real")   # Ignored: #assumedef _Standard_Real_HeaderFile
genFiles("Standard_ShortReal") # Ignored: #assumedef _Standard_ShortReal_HeaderFile
genFiles("Standard_Size")      # Ignored: #assumedef _Standard_Size_HeaderFile
genFiles("Standard_SStream")
genFiles("Standard_Std")       # Ignored: #assumedef _Standard_Std_HeaderFile
genFiles("Standard_Stream")
genFiles("Standard_ThreadId")
genFiles("Standard_Time")
genFiles("Standard_TooManyUsers")
genFiles("Standard_Transient", remove = @[(117, 119)], addColon = @[116])
genFiles("Standard_TypeDef") 
genFiles("Standard_Type", remove = @[(27,87), (97,124)])  # Ignored: #assumedef _Standard_Type_HeaderFile
genFiles("Standard_TypeMismatch")
genFiles("Standard_Underflow")
genFiles("Standard_UUID")
genFiles("Standard_Version", remove = @[(53,60)])
genFiles("Standard_WarningDisableFunctionCast")
genFiles("Standard_WarningsDisable")
genFiles("Standard_WarningsRestore")