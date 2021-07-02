import os, osproc, strutils, strformat, glob

const
  lib = "/usr/include/opencascade/"
  dest = "occt"
  c2nimFile = "occt.c2nim"


# 0. Preprocess
var tempDir = "temp"
createDir(tempDir)
for i in walkFiles(lib & "*.hxx"):
  let (dir, name, ext) = i.splitFile()
  let newName = tempDir & "/" & name & ext
  var tmp = &"gcc -E -I{lib} -o{newName} {i}"
  let result = execCmdEx(tmp)

# 1. Create group of files to wrap together
var groups = newSeq[seq[string]]()
var old = ""
var group = newSeq[string]()
for i in walkFiles(lib & "*.hxx"):
  let (dir, name, ext) = i.splitFile()
  let nameBase = name.split("_")
  #echo nameBase
  if nameBase[0] != old:
    old = nameBase[0]
    #echo old
    groups &= group
    group = newSeq[string]()
  group &= i
groups &= group

# 2. Process the files
var cfgFiles = newSeq[string]()
for group in groups:
#for i in 0..<3:#groups.len:  
#  let group = groups[i]
  if group.len > 0:
    let (dir, name, ext) = group[0].splitFile()
    var base = name.split("_")[0]
    var outDir = &"{dest}/{base}"
    createDir(outDir)
    for file in group:
      let (dir, name, ext) = file.splitFile()
      let data = &"c2nim --cpp --header --nep1 --skipinclude --out:{outDir}/{name}.nim {c2nimFile} {file}"
      echo data
      let result = execCmdEx(data)



# 3. Create big file with all the includes
var occt = &"""{{.experimental: "codeReordering".}}
{{.experimental: "callOperator".}}

{{.passL: "-lTKBO".}}
{{.passL: "-lTKSTEP".}}
{{.passL: "-lTKPrim".}}
{{.passL: "-lTKSTEPAttr".}}
{{.passL: "-lTKSTEP209".}}
{{.passL: "-lTKSTEPBase".}}
{{.passL: "-lTKXSBase".}}
{{.passL: "-lTKShHealing".}}
{{.passL: "-lTKTopAlgo".}}
{{.passL: "-lTKGeomAlgo".}}
{{.passL: "-lTKBRep".}}
{{.passL: "-lTKGeomBase".}}
{{.passL: "-lTKG3d".}}
{{.passL: "-lTKG2d".}}
{{.passL: "-lTKMath".}}
{{.passL: "-lTKernel".}}

{{.passC:"-I{lib}" .}}

"""
type
  Group = object
    name:string
    prefix:seq[string]
    header:string

let
  tKernel = Group(
    name:"tKernel",
    prefix: @["FSD", "Message", "NCollection", "OSD", "Plugin", "Quantity", 
              "Resource", "Standard", "StdFail", "Storage", "TColStd", 
              "TCollection", "TShort", "Units", "UnitsAPI"],
    header: &"""{{.experimental: "codeReordering".}}
#{{.experimental: "callOperator".}}

{{.passL: "-lTKernel".}}

{{.passC:"-I{lib}" .}}


"""
  )

  tkMath = Group(
    name:"tkMath",
    prefix: @["BSplCLib", "BSplSLib", "BVH", "Bnd", "CSLib", "Convert",
              "ElCLib", "ElSLib", "Expr", "ExprIntrp", "GeomAbs", "PLib",
              "Poly", "Precision", "TColgp", "TopLoc", "gp", "math"],
    header: &"""#{{.experimental: "codeReordering".}}
#{{.experimental: "callOperator".}}

{{.passL: "-lTKMath".}}

{{.passC:"-I{lib}" .}}
import tKernel

"""
  )
  groupOfToolkits:seq[Group] = @[tKernel, tkMath]

for tk in groupOfToolkits:
  var tkTxt = tk.header
  for prefix in tk.prefix:

    for group in groups:
      if group.len > 0:
        let (dir, name, ext) = group[0].splitFile()
        let base = name.split("_")[0]          
        if base == prefix:
          for filename in group:
            let (dir, name, ext) = filename.splitFile()
            let fname = &"{dest}/{base}/{name}.nim"
            if fname.fileExists:
              tkTxt &= &"include {base}/{name}\n"
            else:
              tkTxt &= &"# include {base}/{name}\n"
          tkTxt &= "\n\n"
  writeFile(&"occt/{tk.name}.nim", tkTxt)



for group in groups:
  if group.len > 0:
    let (dir, name, ext) = group[0].splitFile()
    let base = name.split("_")[0]    
    for filename in group:
      let (dir, name, ext) = filename.splitFile()
      let fname = &"{dest}/{base}/{name}.nim"
      if fname.fileExists:
        occt &= &"include {base}/{name}\n"
      else:
        occt &= &"# include {base}/{name}\n"

    occt &= "\n\n"
#echo occt
writeFile("occt/occt.nim", occt)




#---------------
# Edit files
#---------------

proc fileReplace( filename, a, b:string ) =
  filename.writeFile filename.readFile.replace(a, b)

proc comment( filename, line:string ) =
  filename.writeFile filename.readFile.replace(line, "# "  & line)

proc comment( filename:string; ini:int; num:int = 1 ) =
  var tmp = ""
  var n = 1
  for line in filename.readFile.split("\n"):
    if n >= ini and n < ini + num:
      tmp &= "# " & line & "\n"
    else:
      tmp &= line & "\n"
    n += 1

  filename.writeFile tmp


proc uncomment( filename:string; ini:int; num:int = 1 ) =
  var tmp = ""
  var n = 1
  for line in filename.readFile.split("\n"):
    if n >= ini and n < ini + num:
      tmp &= line.replace("# ", "") & "\n"
    else:
      tmp &= line & "\n"
    n += 1

  filename.writeFile tmp

proc append( filename:string; lineNo:int; txt:string ) =
  var tmp = ""
  var n = 1
  for line in filename.readFile.split("\n"):
    if n == lineNo:
      tmp &= txt & "\n"
    tmp &= line & "\n"
    n += 1

  filename.writeFile tmp

proc globReplace(glb,a,b:string) =
  let pattern = glob( glb )
  for fname in walkGlob(pattern):
  #for fname in walkFiles(glob):
    fname.fileReplace(a,b)

proc commentWhens(filename:string) =
  ## comment those `when` that are followed by a discard
  var res = ""
  var tmp = ""
  var flag = false
  for line in filename.readFile.split("\n"):
    if line.strip.startsWith("when "):
      if flag:
        res &= tmp & "\n"
      tmp = line
      flag = true
    else:
      if flag:
        if line.strip == "discard":
          res &= "# " & tmp & "\n"
          res &= "# " & line &  "\n"
        else:
          res &= tmp & "\n"
          res &= line &  "\n"
        tmp = ""
        flag = false
      else:     
        res &= line &  "\n"
  filename.writeFile res


proc globCommentWhens(glb:string) =
  let pattern = glob( glb )
  for fname in walkGlob(pattern):
  #for fname in walkFiles(glob):
    fname.commentWhens


"occt/AdvApp2Var/AdvApp2Var_Data_f2c.nim".comment("when not defined(Skip_f2c_Undefs):")
"occt/ApproxInt/ApproxInt_KnotTools.nim".comment(14, 12)

"occt/Aspect/Aspect_Drawable.nim".fileReplace("when defined(_WIN32):", "when Windows:")

"occt/BSplSLib/BSplSLib_EvaluatorFunction.nim".comment(17, 6)

"occt/BinTObjDrivers/BinTObjDrivers.nim".comment(34, 2)

"occt/FSD/FSD_BinaryFile.nim".fileReplace("uint64T", "culonglong")
# Comments because redefinitions in BinaryFIle
"occt/FSD/FSD_CmpFile.nim".comment(38, 4)
"occt/FSD/FSD_CmpFile.nim".comment(49, 2)
"occt/FSD/FSD_CmpFile.nim".comment(80, 2)
"occt/FSD/FSD_FStream.nim".fileReplace("= Fstream", "= ref object # Fstream")
"occt/FSD/FSD_File.nim".comment(82, 4)
"occt/FSD/FSD_File.nim".comment(96, 2)
"occt/FSD/FSD_File.nim".comment(259, 2)

"occt/Graphic3d/Graphic3d_CStructure.nim".fileReplace( ".} {.", ", " )

"occt/IVtkDraw/IVtkDraw_Interactor.nim".comment(18, 2)
"occt/IVtkTools/IVtkTools_DisplayModeFilter.nim".comment("when defined(_MSC_VER):")
"occt/IVtkTools/IVtkTools_DisplayModeFilter.nim".comment( 74, 2 )
"occt/IVtkTools/IVtkTools_ShapeDataSource.nim".comment("when defined(_MSC_VER):")
"occt/IVtkTools/IVtkTools_ShapeDataSource.nim".comment( 249, 2 )
"occt/IVtkTools/IVtkTools_ShapeObject.nim".comment("when defined(_MSC_VER):")
"occt/IVtkTools/IVtkTools_ShapeObject.nim".comment( 65, 2 )
"occt/IVtkTools/IVtkTools_ShapePicker.nim".comment("when defined(_MSC_VER):")
"occt/IVtkTools/IVtkTools_ShapePicker.nim".comment( 103, 2 )
"occt/IVtkTools/IVtkTools_SubPolyDataFilter.nim".comment("when defined(_MSC_VER):")
"occt/IVtkTools/IVtkTools_SubPolyDataFilter.nim".comment( 81, 2 )
"occt/IVtk/IVtk_Types.nim".comment( 16, 6 )
#"occt/Interface/Interface_Translates.nim".fileReplace( "seq", "`seq`" )
"occt/Interface/Interface_Translates.nim".comment( 40, 60 )

"occt/Message/Message.nim".append(17, """type
  StreamBuffer* = ref object
  Counter* = ref object

  """)
"occt/Message/Message_Alert.nim".comment(97, 5)  
"occt/Message/Message_AlertExtended.nim".comment(123, 5) 
"occt/Message/Message_Status.nim".comment(123, 5) 
"occt/Message/Message_StatusType.nim".fileReplace("MessageDONE", "messageDONE") 

"occt/MeshVS/MeshVS_TwoColors.nim".fileReplace( ".} {.", ", " )
"occt/MeshVS/MeshVS_TwoNodes.nim".comment( 14, 4 )
"occt/OSD/OSD_WNT.nim".comment( 15, 2 )
"occt/InterfaceGraphic/InterfaceGraphic.nim".comment(15, 6)
"occt/OpenGl/OpenGl_GraphicDriver.nim".comment(167, 12)
"occt/Poly/Poly_CoherentTriPtr.nim".comment(17, 1)
#"occt/Poly/Poly_CoherentTriPtr.nim".comment(86, 2)
"occt/Poly/Poly_CoherentTriPtr.nim".comment(16, 1)

"occt/Standard/Standard_Type.nim".append(42, """type
  Standard_Type* {.bycopy.} = object of Standard_Transient

""")  ## c2nim doesn't process well this header
"occt/Standard/Standard_IStream.nim".fileReplace("= Istream", "= ref object   # should be: Istream")
"occt/Standard/Standard_OStream.nim".fileReplace("= Ostream", "= ref object   # should be: Ostream")
"occt/Standard/Standard_ArrayStreamBuffer.nim".fileReplace("(_MSC_VER):", "(MSC_VER):")
"occt/Standard/Standard_ArrayStreamBuffer.nim".comment(16, 1)
"occt/Standard/Standard_Mutex.nim".comment(18, 2)
"occt/Standard/Standard_Time.nim".fileReplace("__QNX__", "QNX")
"occt/Standard/Standard_TypeDef.nim".comment(17, 13)
"occt/Standard/Standard_TypeDef.nim".fileReplace("_WIN64", "WIN64")
"occt/Standard/Standard_TypeDef.nim".fileReplace("StandardFalse", "standardFalse")
"occt/Standard/Standard_TypeDef.nim".fileReplace("StandardTrue", "standardTrue")
# Define types for char
"occt/Standard/Standard_TypeDef.nim".comment(80, 18) 
"occt/Standard/Standard_TypeDef.nim".append(98, """type
  StandardExtCharacter* = char  # char16T
  StandardUtf16Char* = char     # char16T
  # !< UTF-16 char (always unsigned)
  StandardUtf32Char* = char #  char32T
  # !< UTF-32 char (always unsigned)

  StandardWideChar* = char #  WcharT
  
  """)


"occt/Standard/Standard_WarningDisableFunctionCast.nim".comment(25, 1)
"occt/Standard/Standard_WarningsDisable.nim".comment(29, 7)
"occt/Standard/Standard_WarningsRestore.nim".comment(29, 6)
"occt/Standard/Standard_math.nim".comment(17, 9)
"occt/Standard/Standard_Transient.nim".fileReplace("header: \"Standard_Transient.hxx\", bycopy.} = object", "header: \"Standard_Transient.hxx\", bycopy.} = object of RootObj")
#"occt/VrmlData/VrmlData_Scene.nim".fileReplace("0L'i64", "0'i64")
#"occt/VrmlData/VrmlData_ShapeConvert.nim".fileReplace("0L'i64", "0'i64")
#"occt/VrmlData/VrmlData_TextureCoordinate.nim".fileReplace("0L'i64", "0'i64")

"occt/AdvApp2Var/AdvApp2Var_Criterion.nim".comment(22,1)
"occt/AdvApp2Var/AdvApp2Var_EvaluatorFunc2Var.nim".append(1, "{.experimental: \"callOperator\".}")
"occt/AdvApp2Var/AdvApp2Var_ApproxAFunc2Var.nim".append(1, "{.experimental: \"callOperator\".}")

#"occt/TDataStd/TDataStd_ExtStringArray.nim".comment(91,2) # FIXME: TColStdHArray1OfInteger
#"occt/TDataStd/TDataStd_IntegerArray.nim".comment(92,2) # FIXME
#"occt/TDataStd/TDataStd_RealArray.nim".comment(90,2) # FIXME
#"occt/Vrml/Vrml_SFImage.nim".comment(48,2) # FIXME
"occt/TColStd/TColStd_HArray1OfExtendedString.nim".comment(18, 1)
"occt/NCollection/NCollection_BaseSequence.nim".fileReplace(
  """  NCollectionBaseSequence* {.importcpp: "NCollection_BaseSequence",
                            header: "NCollection_BaseSequence.hxx", bycopy.} = object ##""",
  """  NCollectionBaseSequence* {.importcpp: "NCollection_BaseSequence",
                            header: "NCollection_BaseSequence.hxx", bycopy.} = object of RootObj##"""
)
"occt/NCollection/NCollection_Array1.nim".fileReplace("header: \"NCollection_Array1.hxx\", bycopy.} = object ##", "header: \"NCollection_Array1.hxx\", bycopy.} = object of RootObj##")
"occt/NCollection/NCollection_SparseArrayBase.nim".comment(16,2) # Already defined in Standard/Standard_TypeDef
"occt/NCollection/NCollection_StdAllocator.nim".append(40, """
type
  NCollection_StdAllocator*[T] {.importcpp: "NCollection_StdAllocator",
                 header: "NCollection_StdAllocator.hxx", bycopy.} = object

""")
"occt/NCollection/NCollection_StdAllocator.nim".fileReplace("NCollectionStdAllocatorNCollectionStdAllocator",
    "NCollectionStdAllocator")
"occt/NCollection/NCollection_StdAllocator.nim".comment(51, 3)

"occt/TCollection/TCollection_BasicMap".fileReplace(
  """  TCollectionBasicMap* {.importcpp: "TCollection_BasicMap",
                        header: "TCollection_BasicMap.hxx", bycopy.} = object ## ! Returns the number of buckets in <me>.""",
  """  TCollectionBasicMap* {.importcpp: "TCollection_BasicMap",
                        header: "TCollection_BasicMap.hxx", bycopy.} = object of RootObj  ## ! Returns the number of buckets in <me>.""",
)

"occt/Units/Units_Token.nim".comment(35, 2)

"occt/**/*.nim".globReplace("0L'i64", "0'i64")
"occt/**/*.nim".globReplace("when defined(_WIN32):", "when defined windows:")
"occt/**/*.nim".globReplace("when not defined(_WIN32):", "when not defined windows:")

"occt/**/*.nim".globCommentWhens
"occt/Standard/Standard_UUID.nim".uncomment(15,2)


#[
occt/Graphic3d/Graphic3d_ShaderProgram.nim(114, 1) Warning: Circular dependency detected. `codeReordering` pragma may not be able to reorder some nodes properly [User]
proc header*(this: Graphic3dShaderProgram): TCollectionAsciiString {.noSideEffect,
    importcpp: "Header", header: "Graphic3d_ShaderProgram.hxx".}


occt/AIS/AIS_Manipulator.nim(197, 1) Warning: Circular dependency detected. `codeReordering` pragma may not be able to reorder some nodes properly [User]
proc `object`*(this: AIS_Manipulator): Handle[AIS_InteractiveObject] {.noSideEffect,
    importcpp: "Object", header: "AIS_Manipulator.hxx".}


occt/Standard/Standard_TypeDef.nim(80, 1) Warning: Circular dependency detected. `codeReordering` pragma may not be able to reorder some nodes properly [User]
when ((defined(gnuc) and not defined(clang) and
    ((gnuc == 4 and gnuc_Minor <= 3) or gnuc < 4)) or
    (defined(msc_Ver) and (msc_Ver < 1600))):
  ##  compatibility with old GCC and MSVC compilers
  type
    StandardExtCharacter* = uint16T
    StandardUtf16Char* = uint16T
    StandardUtf32Char* = uint32T
]#

#[
En: TColStd/TColStd_Array1OfExtendedString.nim

type
  NCollectionArray1[TCollectionExtendedString] = object of RootObj #{.inheritable.}
  TColStdArray1OfExtendedString* = NCollectionArray1[TCollectionExtendedString]
]#
