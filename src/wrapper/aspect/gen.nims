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


# Aspect_DisplayConnection.hxx
# Aspect_Display.hxx
# Aspect_Drawable.hxx
# Aspect_Eye.hxx
# Aspect_FBConfig.hxx
# Aspect_FillMethod.hxx
# Aspect_FrustumLRBT.hxx
# Aspect_GenId.hxx
# Aspect_GradientBackground.hxx
# Aspect_GradientFillMethod.hxx
# Aspect_GraphicDeviceDefinitionError.hxx
# Aspect_GraphicsLibrary.hxx
# Aspect_GridDrawMode.hxx
# Aspect_Grid.hxx
# Aspect_GridType.hxx
# Aspect_Handle.hxx
# Aspect_HatchStyle.hxx
# Aspect_IdentDefinitionError.hxx
# Aspect_InteriorStyle.hxx
# Aspect_NeutralWindow.hxx
# Aspect_OpenVRSession.hxx
# Aspect_PolygonOffsetMode.hxx
# Aspect_RectangularGrid.hxx
# Aspect_RenderingContext.hxx
# Aspect_ScrollDelta.hxx
# Aspect_SequenceOfColor.hxx
# Aspect_Touch.hxx
# Aspect_TouchMap.hxx
# Aspect_TrackedDevicePose.hxx
# Aspect_TypeOfColorScaleData.hxx
# Aspect_TypeOfColorScaleOrientation.hxx
# Aspect_TypeOfColorScalePosition.hxx
# Aspect_TypeOfDeflection.hxx
# Aspect_TypeOfDisplayText.hxx
# Aspect_TypeOfFacingModel.hxx
# Aspect_TypeOfHighlightMethod.hxx
# Aspect_TypeOfLine.hxx
# Aspect_TypeOfMarker.hxx
# Aspect_TypeOfResize.hxx
# Aspect_TypeOfStyleText.hxx
# Aspect_TypeOfTriedronPosition.hxx
# Aspect_Units.hxx
# Aspect_VKeyFlags.hxx
# Aspect_VKey.hxx
# Aspect_VKeySet.hxx
# Aspect_WidthOfLine.hxx
# Aspect_WindowDefinitionError.hxx
# Aspect_WindowError.hxx
# Aspect_Window.hxx
# Aspect_WindowInputListener.hxx
# Aspect_XAtom.hxx
# Aspect_XRAction.hxx
# Aspect_XRActionSet.hxx
# Aspect_XRActionType.hxx
# Aspect_XRAnalogActionData.hxx
# Aspect_XRDigitalActionData.hxx
# Aspect_XRGenericAction.hxx
# Aspect_XRHapticActionData.hxx
# Aspect_XRPoseActionData.hxx
# Aspect_XRSession.hxx
# Aspect_XRTrackedDeviceRole.hxx
genFiles("Aspect_AspectFillAreaDefinitionError")
pp("aspect_aspectfillareadefinitionerror.nim",
  commentRange = @[(16,30)]
)
genFiles("Aspect_AspectLineDefinitionError")
pp("aspect_aspectlinedefinitionerror.nim",
  commentRange = @[(16,27)]
)
genFiles("Aspect_AspectMarkerDefinitionError")
pp("aspect_aspectmarkerdefinitionerror.nim",
  commentRange = @[(16,29)]
)
genFiles("Aspect_Background")
pp("aspect_background.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("Aspect_CircularGrid")
genFiles("Aspect_ColorSpace")
#genFiles("Aspect_Convert")
genFiles("Aspect_DisplayConnectionDefinitionError")
pp("aspect_displayconnectiondefinitionerror.nim",
  commentRange = @[(16,31)]
)
genFiles("Aspect_DisplayConnection",
  comment = @[(87,87), (119,119)]
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
pp("aspect_gradientfillmethod.nim",
  replaceAll = @[("AspectGFM", "aspectGFM")]
)
genFiles("Aspect_GraphicDeviceDefinitionError")
pp("aspect_graphicdevicedefinitionerror.nim",
  commentRange = @[(16,29)]
)
genFiles("Aspect_GraphicsLibrary")
genFiles("Aspect_GridDrawMode")
genFiles("Aspect_Grid")
genFiles("Aspect_GridType")
genFiles("Aspect_Handle")
genFiles("Aspect_HatchStyle")
genFiles("Aspect_IdentDefinitionError")
pp("aspect_identdefinitionerror.nim",
  commentRange = @[(16,27)]
)
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
  aspectPOM_All = (aspectPOM_Fill.int or aspectPOM_Line.int or aspectPOM_Point.int).AspectPolygonOffsetMode
  aspectPOM_None = 0x08 ##  do not change current polygon offset mode
  aspectPOM_Mask = (aspectPOM_All.int or aspectPOM_None.int).AspectPolygonOffsetMode"""
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
pp("aspect_touchmap.nim",
  replaceAll = @[("AspectTouchMap* = NCollectionIndexedDataMap[csize_t, AspectTouch]",
    """AspectTouchMap* {.importcpp:"NCollection_IndexedDataMap<Standard_Size, Aspect_Touch>", header:"Aspect_TouchMap.hxx", bycopy.}= object"""
  )]
)
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
  aspectTOTP_LEFT_LOWER  = (aspectTOTP_BOTTOM.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition  ## at the left lower corner
  aspectTOTP_LEFT_UPPER  = (aspectTOTP_TOP.int or aspectTOTP_LEFT.int).AspectTypeOfTriedronPosition     ## at the left upper corner
  aspectTOTP_RIGHT_LOWER = (aspectTOTP_BOTTOM.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition ## at the right lower corner
  aspectTOTP_RIGHT_UPPER = (aspectTOTP_TOP.int or aspectTOTP_RIGHT.int).AspectTypeOfTriedronPosition    ## at the right upper corner""")
  
  ]
)
genFiles("Aspect_Units")
pp("aspect_units.nim",
  replaceAll = @[("[]", "")]
)
genFiles("Aspect_VKeyFlags")
pp("aspect_vkeyflags.nim",
  replaceAll = @[("AspectVKeyFlags", "aspectVKeyFlags"), ("aspectVKeyFlags*", "AspectVKeyFlags*")]
)
genFiles("Aspect_VKey")
pp("aspect_vkey.nim",
  replaceAll = @[("AspectVKey", "aspectVKey"), ("aspectVKey*", "AspectVKey*"), ("aspectVKeyBasic*", "AspectVKeyBasic*"),
    ("aspectVKeyUpper - aspectVKeyLower + 1", "(aspectVKeyUpper.int - aspectVKeyLower.int + 1)"),
    ("aspectVKey2Modifier*(theKey: aspectVKey): aspectVKeyFlags", "aspectVKey2Modifier*(theKey: AspectVKey): AspectVKeyFlags")
  ]
)
genFiles("Aspect_VKeySet")
genFiles("Aspect_WidthOfLine")
genFiles("Aspect_WindowDefinitionError")
pp("aspect_windowdefinitionerror.nim",
  commentRange = @[(16,27)]
)
genFiles("Aspect_WindowError")
pp("aspect_windowerror.nim",
  commentRange = @[(16,27)]
)
genFiles("Aspect_Window")
genFiles("Aspect_XAtom")
genFiles("Aspect_XRAction")
pp("aspect_xraction.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRActionSet")
pp("aspect_xractionset.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRActionType")
genFiles("Aspect_XRAnalogActionData")
pp("aspect_xranalogactiondata.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRDigitalActionData")
pp("aspect_xrdigitalactiondata.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRGenericAction")
pp("aspect_xrgenericaction.nim",
  replaceAll = @[("AspectXRGenericAction", "aspectXRGenericAction"),
    ("aspectXRGenericAction*","AspectXRGenericAction*"),
    ("aspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic + 1", "AspectXRGenericActionNB* = aspectXRGenericActionOutputHaptic.int + 1")
  ]
)
genFiles("Aspect_XRHapticActionData")
genFiles("Aspect_XRPoseActionData")
pp("aspect_xrposeactiondata.nim",
  replaceAll = @[("uint64T", "uint64")]
)
genFiles("Aspect_XRSession")
genFiles("Aspect_XRTrackedDeviceRole")
pp("aspect_xrtrackeddevicerole.nim",
  replaceAll = @[("AspectXR", "aspectXR"), ("aspectXRTrackedDeviceRole*", "AspectXRTrackedDeviceRole*"),
    ("aspectXRTrackedDeviceRoleOther + 1","aspectXRTrackedDeviceRoleOther.int + 1")
  ]
)
#genFiles("Aspect_XWD",
#  comment = @[(17, 92)]
#)





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