#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "prs3d"
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

# ls /usr/include/opencascade/Prs3d*.hxx | cut -c 26-

genFiles("Prs3d_ArrowAspect")
genFiles("Prs3d_Arrow")
genFiles("Prs3d_BasicAspect")
genFiles("Prs3d_BndBox")
genFiles("Prs3d_DatumAspect")
genFiles("Prs3d_DatumAttribute")
pp("prs3d_datumattribute.nim",
  replaceAll = @[("Prs3dDA", "prs3dDA")]
)
genFiles("Prs3d_DatumAxes")
pp("prs3d_datumaxes.nim",
  replaceAll = @[("Prs3dDA", "prs3dDA"),
    (""", ## !< Z axis of the datum
    prs3dDA_XYAxis = prs3dDA_XAxis or prs3dDA_YAxis, ## !< XOY 2D axes
    prs3dDA_YZAxis = prs3dDA_YAxis or prs3dDA_ZAxis, ## !< YOZ 2D axes
    prs3dDA_XZAxis = prs3dDA_XAxis or prs3dDA_ZAxis, ## !< XOZ 2D axes
    prs3dDA_XYZAxis = prs3dDA_XAxis or prs3dDA_YAxis or prs3dDA_ZAxis""",
    """ ## !< Z axis of the datum
const
  prs3dDA_XYAxis*  = (prs3dDA_XAxis.int or prs3dDA_YAxis.int).Prs3dDatumAxes ## !< XOY 2D axes
  prs3dDA_YZAxis*  = prs3dDA_YAxis.int or prs3dDA_ZAxis.int ## !< YOZ 2D axes
  prs3dDA_XZAxis*  = prs3dDA_XAxis.int or prs3dDA_ZAxis.int ## !< XOZ 2D axes
  prs3dDA_XYZAxis* = prs3dDA_XAxis.int or prs3dDA_YAxis.int or prs3dDA_ZAxis.int""")
  ]
)
genFiles("Prs3d_DatumMode")
genFiles("Prs3d_DatumParts")
genFiles("Prs3d_DimensionArrowOrientation")
genFiles("Prs3d_DimensionAspect")
genFiles("Prs3d_DimensionTextHorizontalPosition")
genFiles("Prs3d_DimensionTextVerticalPosition")
genFiles("Prs3d_DimensionUnits")
genFiles("Prs3d_Drawer")
pp("prs3d_drawer.nim",
  replaceAll = @[("""handle[
    Prs3dDrawer]()""", """constructHandle[newPrs3dDrawer()]()""")],
  commentRange = @[(151,151),(158,161), (174,174), (270,272)]
)
genFiles("Prs3d")
genFiles("Prs3d_InvalidAngle")
pp("prs3d_invalidangle.nim",
  commentRange = @[(17,28)]
)
genFiles("Prs3d_IsoAspect")
genFiles("Prs3d_LineAspect")
genFiles("Prs3d_NListIteratorOfListOfSequenceOfPnt")
pp("prs3d_nlistiteratoroflistofsequenceofpnt.nim",
  replaceAll = @[("Prs3dNListIteratorOfListOfSequenceOfPnt* = Iterator",
    """Prs3dNListIteratorOfListOfSequenceOfPnt* {.importcpp:"Prs3d_NListOfSequenceOfPnt::Iterator", header:"Prs3d_NListIteratorOfListOfSequenceOfPnt.hxx",bycopy.} = object"""
  )]
)
genFiles("Prs3d_NListOfSequenceOfPnt")
genFiles("Prs3d_PlaneAspect")
genFiles("Prs3d_PointAspect")
genFiles("Prs3d_Point")
genFiles("Prs3d_Presentation")
genFiles("Prs3d_PresentationShadow")
genFiles("Prs3d_Root")
pp("prs3d_root.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("Prs3d_ShadingAspect")
genFiles("Prs3d_ShapeTool")
genFiles("Prs3d_TextAspect")
genFiles("Prs3d_Text")
genFiles("Prs3d_ToolCylinder")
genFiles("Prs3d_ToolDisk")
genFiles("Prs3d_ToolQuadric")
pp("prs3d_toolquadric.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("Prs3d_ToolSector")
genFiles("Prs3d_ToolSphere")
pp("prs3d_toolsphere.nim",
  replaceAll = @[("create", "toolSphereCreate")]
)
genFiles("Prs3d_ToolTorus")
genFiles("Prs3d_TypeOfHighlight")
genFiles("Prs3d_TypeOfHLR")
genFiles("Prs3d_TypeOfLinePicking")
genFiles("Prs3d_VertexDrawMode")






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