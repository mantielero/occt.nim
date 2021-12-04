#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "aspect"
let c2nimFile = packageName & ".c2nim"
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
               comment:seq[tuple[a,b:int]] = @[]; 
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

    # Comment lines
    if comment.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comment:
        for i in (rng.a - 1) .. (rng.b - 1):
          lines[i] = "// " & lines[i]
      writeFile(name & ".hxx", lines.join("\n"))
        
    # Search and comment


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

# ls /usr/include/opencascade/Aspect*.hxx | cut -c 26-

genFiles("Aspect_AspectFillAreaDefinitionError")
genFiles("Aspect_AspectLineDefinitionError")
genFiles("Aspect_AspectMarkerDefinitionError")
genFiles("Aspect_Background")
pp("aspect_background.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("Aspect_CircularGrid")
genFiles("Aspect_ColorSpace")
genFiles("Aspect_Convert")
genFiles("Aspect_DisplayConnectionDefinitionError")
genFiles("Aspect_DisplayConnection",
  comment = @[(42,42), (81,81)]
)
genFiles("Aspect_Display")
genFiles("Aspect_Drawable")
genFiles("Aspect_Eye")
genFiles("Aspect_FBConfig")
genFiles("Aspect_FillMethod")
genFiles("Aspect_FrustumLRBT")
genFiles("Aspect_GenId")
genFiles("Aspect_GradientBackground")
genFiles("Aspect_GradientFillMethod")
genFiles("Aspect_GraphicDeviceDefinitionError")
genFiles("Aspect_GraphicsLibrary")
genFiles("Aspect_GridDrawMode")
genFiles("Aspect_Grid")
genFiles("Aspect_GridType")
genFiles("Aspect_Handle")
genFiles("Aspect_HatchStyle")
genFiles("Aspect_IdentDefinitionError")
genFiles("Aspect_InteriorStyle")
pp("aspect_interiorstyle.nim",
  replaceAll = @[("AspectIS", "aspectIS"),
    (""",           ## !< display only vertices of surface (obsolete)
                   ##  obsolete aliases
    aspectIS_HOLLOW = aspectIS_EMPTY ## !< transparent surface interior""",
    """           ## !< display only vertices of surface (obsolete)
                   ##  obsolete aliases
const
  aspectIS_HOLLOW = aspectIS_EMPTY.AspectInteriorStyle ## !< transparent surface interior""")
  ]
)
genFiles("Aspect_NeutralWindow")
genFiles("Aspect_OpenVRSession")
genFiles("Aspect_PolygonOffsetMode")
pp("aspect_polygonoffsetmode.nim",
  replaceAll = @[("AspectPOM", "aspectPOM"),
    ("""    aspectPOM_All = aspectPOM_Fill or aspectPOM_Line or aspectPOM_Point, aspectPOM_None = 0x08, ##  do not change current polygon offset mode
    aspectPOM_Mask = aspectPOM_All or aspectPOM_None""",
    """const
  aspectPOM_All = aspectPOM_Fill or aspectPOM_Line or aspectPOM_Point
  aspectPOM_None = 0x08 ##  do not change current polygon offset mode
  aspectPOM_Mask = aspectPOM_All or aspectPOM_None"""
    )
  
  ]
)
genFiles("Aspect_RectangularGrid")
genFiles("Aspect_RenderingContext",
  comment = @[(25,42), (44,44)]
)

genFiles("Aspect_ScrollDelta")
genFiles("Aspect_SequenceOfColor")
genFiles("Aspect_Touch")
genFiles("Aspect_TouchMap")
genFiles("Aspect_TrackedDevicePose")
genFiles("Aspect_TypeOfColorScaleData")
genFiles("Aspect_TypeOfColorScaleOrientation")
genFiles("Aspect_TypeOfColorScalePosition")
genFiles("Aspect_TypeOfDeflection")
genFiles("Aspect_TypeOfDisplayText")
pp("aspect_typeofdisplaytext.nim",
  replaceAll = @[("AspectTODT", "aspectTODT")]
)
genFiles("Aspect_TypeOfFacingModel")
pp("aspect_typeoffacingmodel.nim",
  replaceAll = @[("AspectTOFM", "aspectTOFM")]
)
genFiles("Aspect_TypeOfHighlightMethod")
genFiles("Aspect_TypeOfLine")
pp("aspect_typeofline.nim",
  replaceAll = @[("AspectTOL", "aspectTOL")]
)
genFiles("Aspect_TypeOfMarker")
pp("aspect_typeofmarker.nim",
  replaceAll = @[("AspectTOM", "aspectTOM")]
)
genFiles("Aspect_TypeOfResize")
genFiles("Aspect_TypeOfStyleText")
pp("aspect_typeofstyletext.nim",
  replaceAll = @[("AspectTOST", "aspectTOST")]
)
genFiles("Aspect_TypeOfTriedronPosition")
pp("aspect_typeoftriedronposition.nim",
  replaceAll = @[("AspectTOTP", "aspectTOTP"),
    (""",  ## !< at the middle of the right  side
    aspectTOTP_LEFT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_LEFT, ## !< at the left lower corner
    aspectTOTP_LEFT_UPPER = aspectTOTP_TOP or aspectTOTP_LEFT, ## !< at the left upper corner
    aspectTOTP_RIGHT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_RIGHT, ## !< at the right lower corner
    aspectTOTP_RIGHT_UPPER = aspectTOTP_TOP or aspectTOTP_RIGHT ## !< at the right upper corner""",
    """  ## !< at the middle of the right  side

const
  aspectTOTP_LEFT_LOWER  = aspectTOTP_BOTTOM or aspectTOTP_LEFT  ## at the left lower corner
  aspectTOTP_LEFT_UPPER  = aspectTOTP_TOP or aspectTOTP_LEFT     ## at the left upper corner
  aspectTOTP_RIGHT_LOWER = aspectTOTP_BOTTOM or aspectTOTP_RIGHT ## at the right lower corner
  aspectTOTP_RIGHT_UPPER = aspectTOTP_TOP or aspectTOTP_RIGHT    ## at the right upper corner""")
  
  ]
)
genFiles("Aspect_Units")
genFiles("Aspect_VKeyFlags")
genFiles("Aspect_VKey")
genFiles("Aspect_VKeySet")
genFiles("Aspect_WidthOfLine")
genFiles("Aspect_WindowDefinitionError")
genFiles("Aspect_WindowError")
genFiles("Aspect_Window")
genFiles("Aspect_XAtom")
genFiles("Aspect_XRAction")
genFiles("Aspect_XRActionSet")
genFiles("Aspect_XRActionType")
genFiles("Aspect_XRAnalogActionData")
genFiles("Aspect_XRDigitalActionData")
genFiles("Aspect_XRGenericAction")
genFiles("Aspect_XRHapticActionData")
genFiles("Aspect_XRPoseActionData")
genFiles("Aspect_XRSession")
genFiles("Aspect_XRTrackedDeviceRole")
genFiles("Aspect_XWD",
  comment = @[(17, 92)]
)





# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != packageName & "_includes":
    txt &= "include " & name & "\n"
    #exp &= name & ", "
  #txt &= exp


var beggining = "{.passL:\"-lTKMath\".}\n"
beggining &= "{.passC:\"-I" & lib & "\" .}\n"
beggining &= "{.experimental: \"codeReordering\".}\n\n"
#[ beggining &= """
when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 


""" ]#

writeFile(packageName & "_includes.nim", beggining & txt )#& exp)
pp(packageName & "_includes.nim")