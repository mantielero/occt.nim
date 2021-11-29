#!/usr/bin/env nim
import strutils,os, algorithm
let lib = "/usr/include/opencascade/"
let c2nimFile = "standard.c2nim"
#[ let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

""" ]#

proc genFiles*( infile:string;
               remove:seq[tuple[a,b:int]] = @[]; 
               addSemiColon:seq[int] = @[];
               replaceAll:seq[tuple[sub,by:string]] = @[];
               removeFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    var rem:seq[tuple[a,b:int]] = remove
    var semiColon = addSemiColon
    if removeFuncBody.len > 0:
      for item in removeFuncBody:
        rem &= item
        semiColon &= item.a - 1
    #echo semiColon
    # Replace text strings
    if replaceAll.len > 0:    
      for item in replaceAll:
        var txt = readFile(name & ".hxx")        
        txt = txt.replace(item.sub, item.by)
        writeFile(name & ".hxx", txt)


    # Colons to add at the end of line
    if semiColon.len > 0:
        for line in semiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & name & ".hxx"
            exec edit

    # Lines to remove from the header
    if rem.len > 0:
        var edit = ""
        var n = 0
        for item in rem:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != rem.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & name & ".hxx"


    exec "c2nim --cpp --header --strict --nep1 --out:" & name.toLower & ".nim " & c2nimFile & " " & name & ".hxx"
    let txt = readFile(name.toLower & ".nim")
    writeFile(name.toLower & ".nim", txt ) #beg & txt)
    rmFile(name & ".hxx")
    echo name


proc pp*(file:string,
        insert:seq[tuple[line:int;value:string]] = @[],
        replaceAll:seq[tuple[sub,by:string]] = @[];        
        comment:seq[int] = @[];
        commentRange:seq[tuple[a,b:int]] = @[] ) =
  # Reemplazar
  if replaceAll.len > 0:    
    for item in replaceAll:
      var txt = readFile(file)        
      txt = txt.replace(item.sub, item.by)
      writeFile(file, txt)

  var lines = file.readFile.splitLines

  # Comment lines
  for i in 0..<lines.len:
    if i+1 in comment:
      lines[i] = "#" & lines[i]


  for item in commentRange:
      for i in item.a .. item.b:
        lines[i-1] = "#" & lines[i-1]

  # Insert lines
  var n = 0
  for item in insert:
    var tmp1 = lines[0 .. item.line - 2 + n] 
    var tmp2 = lines[item.line - 1 + n .. lines.len-1]
    lines = tmp1 & item.value & tmp2
    n += 1
  writeFile( file, lines.join("\n"))

#=====================================================

# ls -l | cut -c 44-
genFiles("Standard")
genFiles("Standard_AbortiveTransaction")
genFiles("Standard_Address")
genFiles("Standard_ArrayStreamBuffer")
pp("standard_arraystreambuffer.nim",
  insert = @[(38, "  Streambuf* {.importcpp:\"std::streambuf\".} = object of RootObj"),
             (38, "  Streamsize* {.importcpp:\"std::streamsize\".} = object")]
  
  )


genFiles("Standard_Assert", remove = @[(18, 159), (165,171), (174,175)])
genFiles("Standard_Atomic", remove = @[(72,76)])
pp("standard_atomic.nim", commentRange = @[(48,120)])

genFiles("Standard_Boolean")
genFiles("Standard_Byte")
genFiles("Standard_Character", remove = @[(126,127), (132,132)], addSemiColon = @[125, 131])
genFiles("Standard_CLocaleSentry", remove = @[(22,45), (95,106)])
pp("standard_clocalesentry.nim", comment = @[44,45,46])

genFiles("Standard_Condition")
genFiles("Standard_ConstructionError")
genFiles("Standard_CString")
pp("standard_cstring.nim", comment = @[49,50])

genFiles("Standard_DefineAlloc") #, remove = @[(21,33), (38,53)])
genFiles("Standard_DefineException")
genFiles("Standard_DefineHandle")
genFiles("Standard_DimensionError")
genFiles("Standard_DimensionMismatch")
genFiles("Standard_DivideByZero")
genFiles("Standard_DomainError")
genFiles("Standard_Dump", remove = @[(21, 231)])
genFiles("Standard_ErrorHandler", remove = @[(48, 68), (198,214)])
pp("standard_errorhandler.nim", comment = @[185,186])
genFiles("Standard_ExtCharacter")
genFiles("Standard_ExtString")
genFiles("Standard_Failure", remove = @[(30,31), (107, 108)])
pp("standard_failure.nim",
  #replaceAll = @[("cstring = \"\"", """cstring = cstring("")""")]
)

genFiles("Standard_GUID")
pp("standard_guid.nim", replaceAll = @[("standardGUID_SIZE + 1", "StandardGUID_SIZE + 1")])

genFiles("Standard_Handle", remove = @[(152,154), (173,175), (180,182), (184,214), (216,398), (406,407), (413,417), (419,439)], addSemiColon = @[151, 172, 179,414]) #remove = @[(152,154), (173,175), (180,182)], addSemiColon = @[151, 172, 179] )#, remove = @[(159, 161)], addSemiColon = @[158])
pp("standard_handle.nim",
  replaceAll = @[("header: \"Standard_Handle.hxx\", bycopy.} = object", "header: \"Standard_Handle.hxx\", bycopy.} = object of RootObj")]
)

genFiles("Standard_HandlerStatus")
genFiles("Standard_ImmutableObject")
genFiles("Standard_Integer")  # Ignored: #assumedef _Standard_Integer_HeaderFile
genFiles("Standard_IStream")
pp("standard_istream.nim",
  replaceAll = @[("  StandardIStream* = Istream", "  StandardIStream* {.importcpp:\"std::istream\".}= object")])

genFiles("Standard_JmpBuf", replaceAll = @[("""typedef 
#ifdef SOLARIS
           sigjmp_buf   
#elif IRIX
           sigjmp_buf   
#else
           jmp_buf      
#endif
Standard_JmpBuf;""", "typedef jmp_buf Standard_JmpBuf;")])
pp("standard_jmpbuf.nim", replaceAll = @[("StandardJmpBuf* = JmpBuf", "StandardJmpBuf* {.importcpp:\"jmp_buf\", header:\"setjmp.h\".} = object")])   
genFiles("Standard_LicenseError")
genFiles("Standard_LicenseNotFound")
genFiles("Standard_Macro")    # Ignored: #assumedef _Standard_Macro_HeaderFile
genFiles("Standard_math")
genFiles("Standard_MMgrOpt")
pp("standard_mmgropt.nim",
  replaceAll = @[("standardTrue", "true")])

genFiles("Standard_MMgrRaw")
pp("standard_mmgrraw.nim",
  replaceAll = @[("standardFalse", "false")])

genFiles("Standard_MMgrRoot")
pp("standard_mmgrroot.nim",
  replaceAll = @[("header: \"Standard_MMgrRoot.hxx\", bycopy.} = object", "header: \"Standard_MMgrRoot.hxx\", bycopy.} = object of RootObj"),
                 ("standardFalse", "false")]
  
  )

genFiles("Standard_MMgrTBBalloc")
pp("standard_mmgrtbballoc.nim",
  replaceAll = @[("standardFalse", "false")])

genFiles("Standard_MultiplyDefined")
genFiles("Standard_Mutex")
pp("standard_mutex.nim",
  replaceAll = @[("StandardMutex* {.importcpp: \"Standard_Mutex\", header: \"Standard_Mutex.hxx\", bycopy.} = object of Callback",
                  "StandardMutex* {.importcpp: \"Standard_Mutex\", header: \"Standard_Mutex.hxx\", bycopy.} = object #of Callback")],
  commentRange = @[(67,70)],
  comment = @[95]
)

genFiles("Standard_NegativeValue")
genFiles("Standard_NoMoreObject")
genFiles("Standard_NoSuchObject")
genFiles("Standard_NotImplemented")
genFiles("Standard_NullObject")
genFiles("Standard_NullValue")
genFiles("Standard_NumericError")
genFiles("Standard_OStream")
pp("standard_ostream.nim",
  replaceAll = @[("  StandardOStream* = Ostream", "  StandardOStream* {.importcpp:\"std::ostream\".}= object")])

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
genFiles("Standard_RangeError", remove = @[(28,44)])
genFiles("Standard_ReadBuffer", remove = @[(145, 147)], addSemiColon = @[144])
pp("standard_readbuffer.nim",
  replaceAll = @[("int64T", "int")]
)

genFiles("Standard_ReadLineBuffer", remove = @[(253, 253), (290,293)], addSemiColon = @[289])
pp("standard_readlinebuffer.nim",
  replaceAll = @[("int64T", "int")]
)

genFiles("Standard_Real")   # Ignored: #assumedef _Standard_Real_HeaderFile
genFiles("Standard_ShortReal") # Ignored: #assumedef _Standard_ShortReal_HeaderFile
genFiles("Standard_Size")      # Ignored: #assumedef _Standard_Size_HeaderFile
genFiles("Standard_SStream")
pp("standard_sstream.nim",
  replaceAll = @[("  StandardSStream* = stringstream", "  StandardSStream* {.importcpp:\"std::stringstream\".}= object")])

genFiles("Standard_Std")       # Ignored: #assumedef _Standard_Std_HeaderFile
genFiles("Standard_Stream")
genFiles("Standard_ThreadId")
genFiles("Standard_Time",  replaceAll = @[("__QNX__", "QNX")])
genFiles("Standard_TooManyUsers")
genFiles("Standard_Transient", remove = @[(117, 119)], addSemiColon = @[116])
pp("standard_transient.nim",
  replaceAll = @[("header: \"Standard_Transient.hxx\", bycopy.} = object","header: \"Standard_Transient.hxx\", bycopy.} = object of RootObj")]
  )

genFiles("Standard_TypeDef", replaceAll = @[("_WIN64", "WIN64")]) 
pp("standard_typedef.nim",
  insert = @[ #(14, "import widestrs"),
             (103, """  StandardExtCharacter* = distinct int16
  StandardUtf16Char* = distinct int16""")],
  replaceAll = @[("StandardCString* = ptr StandardCharacter", "StandardCString* = cstring"),
                 ("StandardTime* = TimeT", "StandardTime* {.importcpp:\"std::time_t\".} = object")],
  commentRange = @[(17,29), (30,52), (80,98)],
  comment = @[50, 58, 60, 62, 64, 65, 103])

genFiles("Standard_Type", remove = @[(27,87), (97,124), (238,243), (247,263), (273,280)])
pp("standard_type.nim",
   comment = @[26,27])

genFiles("Standard_TypeMismatch")
genFiles("Standard_Underflow")
genFiles("Standard_UUID", remove = @[(20,22), (29,29)])
genFiles("Standard_Version", remove = @[(53,60)])
genFiles("Standard_WarningDisableFunctionCast")
genFiles("Standard_WarningsDisable")
genFiles("Standard_WarningsRestore")

# Create the import/export file (to be modified manually)
var txt = ""
#var exp = "\n\nexport "
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != "standard_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp

var beggining = "{.passL:\"-lTKernel\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"
beggining &= """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 


"""

writeFile("standard_includes.nim", beggining & txt )#& exp)
pp("standard_includes.nim",
   comment = @[14, 24, 29, 30, 31, 32, 33, 41, 45, 46, 53, 55, 56, 57, 58, 59, 60, 61, 63, 64, 65, 
   72, 73, 84, 88, 89, 92, 93, 94])
   # 33: standard_dump: requires TCollection.
   # 63, 64, : a matter of reordering.