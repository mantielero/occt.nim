#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "v3d"
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

# ls /usr/include/opencascade/V3d*.hxx | cut -c 26-

genFiles("V3d_AmbientLight")
pp("v3d_ambientlight.nim",
  replaceAll = @[("quantityNOC_WHITE", "newQuantityColor(quantityNOC_WHITE)")]
)
genFiles("V3d_BadValue")
pp("v3d_badvalue.nim",
  commentRange = @[(17,28)]
)
genFiles("V3d_CircularGrid")
genFiles("V3d_Coordinate")
genFiles("V3d_DirectionalLight")
pp("v3d_directionallight.nim",
  replaceAll = @[("quantityNOC_WHITE", "newQuantityColor(quantityNOC_WHITE)")]
)
genFiles("V3d")
genFiles("V3d_ImageDumpOptions")
genFiles("V3d_Light")
genFiles("V3d_ListOfLight")
pp("v3d_listoflight.nim",
  replaceAll = @[("V3dListOfLightIterator* = Iterator", 
    """V3dListOfLightIterator* {.importcpp:"V3d_ListOfLight::Iterator", bycopy, header:"V3d_ListOfLight.hxx".} = object""")]
)
genFiles("V3d_ListOfView")
pp("v3d_listofview.nim",
  replaceAll = @[("V3dListOfViewIterator* = Iterator", 
    """V3dListOfViewIterator* {.importcpp:"V3d_ListOfView::Iterator", bycopy, header:"V3d_ListOfView.hxx".} = object""")]
)
genFiles("V3d_Parameter")
genFiles("V3d_Plane")
pp("v3d_plane.nim",
  replaceAll = @[("quantityNOC_GRAY", "newQuantityColor(quantityNOC_GRAY)")]
)
genFiles("V3d_PositionalLight")
pp("v3d_positionallight.nim",
  replaceAll = @[("quantityNOC_WHITE", "newQuantityColor(quantityNOC_WHITE)")]
)
genFiles("V3d_PositionLight")
genFiles("V3d_RectangularGrid")
genFiles("V3d_SpotLight")
pp("v3d_spotlight.nim",
  replaceAll = @[("quantityNOC_WHITE", "newQuantityColor(quantityNOC_WHITE)")]
)
genFiles("V3d_StereoDumpOptions")
genFiles("V3d_Trihedron")
genFiles("V3d_TypeOfAxe")
genFiles("V3d_TypeOfBackfacingModel")
genFiles("V3d_TypeOfLight")
genFiles("V3d_TypeOfOrientation")
pp("v3d_typeoforientation.nim",
  replaceAll = @[("V3d", "v3d"),
    ("v3dTypeOfOrientation*", "V3dTypeOfOrientation*"),
    ("v3d_", "V3d_"),
    ("v3dXnegYnegZneg, ##", "v3dXnegYnegZneg ##"),
    ("""    v3dTypeOfOrientationZupAxoLeft = v3dXnegYnegZpos, ## !< +Z-up +Y-forward Left +Front+Top
    v3dTypeOfOrientationZupAxoRight = v3dXposYnegZpos, ## !< +Z-up +Y-forward Right+Front+Top
    v3dTypeOfOrientationZupFront = v3dYneg, ## !< +Z-up +Y-forward Front  (+X+Z) view
    v3dTypeOfOrientationZupBack = v3dYpos, ## !< +Z-up +Y-forward Back   (-X+Z) view
    v3dTypeOfOrientationZupTop = v3dZpos, ## !< +Z-up +Y-forward Top    (+X+Y) view
    v3dTypeOfOrientationZupBottom = v3dZneg, ## !< +Z-up +Y-forward Bottom (+X-Y) view
    v3dTypeOfOrientationZupLeft = v3dXneg, ## !< +Z-up +Y-forward Left   (-Y+Z) view
    v3dTypeOfOrientationZupRight = v3dXpos, ## !< +Z-up +Y-forward Right  (+Y+Z) view
                                         ##  +Y-up -Z-forward convention
    v3dTypeOfOrientationYupAxoLeft = v3dXnegYposZpos, ## !< +Y-up -Z-forward Left +Front+Top
    v3dTypeOfOrientationYupAxoRight = v3dXposYposZpos, ## !< +Y-up -Z-forward Right+Front+Top
    v3dTypeOfOrientationYupFront = v3dZpos, ## !< +Y-up -Z-forward Front  (+X+Y) view
    v3dTypeOfOrientationYupBack = v3dZneg, ## !< +Y-up -Z-forward Back   (-X+Y) view
    v3dTypeOfOrientationYupTop = v3dYpos, ## !< +Y-up -Z-forward Top    (+X-Z) view
    v3dTypeOfOrientationYupBottom = v3dYneg, ## !< +Y-up -Z-forward Bottom (-X-Z) view
    v3dTypeOfOrientationYupLeft = v3dXpos, ## !< +Y-up -Z-forward Left   (-Z+Y) view
    v3dTypeOfOrientationYupRight = v3dXneg ## !< +Y-up -Z-forward Right  (+Z+Y) view""",
    """const
  v3dTypeOfOrientationZupAxoLeft = v3dXnegYnegZpos ## !< +Z-up +Y-forward Left +Front+Top
  v3dTypeOfOrientationZupAxoRight = v3dXposYnegZpos ## !< +Z-up +Y-forward Right+Front+Top
  v3dTypeOfOrientationZupFront = v3dYneg ## !< +Z-up +Y-forward Front  (+X+Z) view
  v3dTypeOfOrientationZupBack = v3dYpos ## !< +Z-up +Y-forward Back   (-X+Z) view
  v3dTypeOfOrientationZupTop = v3dZpos ## !< +Z-up +Y-forward Top    (+X+Y) view
  v3dTypeOfOrientationZupBottom = v3dZneg ## !< +Z-up +Y-forward Bottom (+X-Y) view
  v3dTypeOfOrientationZupLeft = v3dXneg ## !< +Z-up +Y-forward Left   (-Y+Z) view
  v3dTypeOfOrientationZupRight = v3dXpos ## !< +Z-up +Y-forward Right  (+Y+Z) view
                                         ##  +Y-up -Z-forward convention
  v3dTypeOfOrientationYupAxoLeft = v3dXnegYposZpos ## !< +Y-up -Z-forward Left +Front+Top
  v3dTypeOfOrientationYupAxoRight = v3dXposYposZpos ## !< +Y-up -Z-forward Right+Front+Top
  v3dTypeOfOrientationYupFront = v3dZpos ## !< +Y-up -Z-forward Front  (+X+Y) view
  v3dTypeOfOrientationYupBack = v3dZneg ## !< +Y-up -Z-forward Back   (-X+Y) view
  v3dTypeOfOrientationYupTop = v3dYpos ## !< +Y-up -Z-forward Top    (+X-Z) view
  v3dTypeOfOrientationYupBottom = v3dYneg ## !< +Y-up -Z-forward Bottom (-X-Z) view
  v3dTypeOfOrientationYupLeft = v3dXpos ## !< +Y-up -Z-forward Left   (-Z+Y) view
  v3dTypeOfOrientationYupRight = v3dXneg ## !< +Y-up -Z-forward Right  (+Z+Y) view""")
  ]
)
genFiles("V3d_TypeOfPickCamera")
genFiles("V3d_TypeOfPickLight")
pp("v3d_typeofpicklight.nim",
  replaceAll = @[("V3d", "v3d"),
    ("v3dTypeOfPickLight*", "V3dTypeOfPickLight*"),
    ("v3d_", "V3d_")
  ]
)
genFiles("V3d_TypeOfRepresentation")
genFiles("V3d_TypeOfShadingModel")
genFiles("V3d_TypeOfView")
pp("v3d_typeofview.nim",
  replaceAll = @[("V3dORTHOGRAPHIC", "v3dORTHOGRAPHIC"),
   ("V3dPERSPECTIVE", "v3dPERSPECTIVE")]
)
genFiles("V3d_TypeOfVisualization")
genFiles("V3d_UnMapped")
pp("v3d_unmapped.nim",
  commentRange = @[(17,28)]
)
genFiles("V3d_Viewer")
pp("v3d_viewer.nim",
  commentRange = @[(171,172), (190,198), (201,205), (234, 251), (303, 305), (310, 311), (316, 321), (348, 350), (353, 361)
  ]
)
genFiles("V3d_ViewerPointer")
genFiles("V3d_View")
pp("v3d_view.nim",
  commentRange = @[(101,103), (143,208), (326,327), (354, 357), (394, 395), (402, 424), (427, 437), (440, 449),
    (454, 457)
  ]
)
genFiles("V3d_ViewPointer")




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