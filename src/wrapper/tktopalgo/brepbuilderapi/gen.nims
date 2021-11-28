#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "brepbuilderapi"
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

# ls /usr/include/opencascade/BRepBuilderAPI*.hxx | cut -c 26-


genFiles("BRepBuilderAPI_BndBoxTreeSelector")
genFiles("BRepBuilderAPI_CellFilter")
genFiles("BRepBuilderAPI_Collect")
genFiles("BRepBuilderAPI_Command")
pp("brepbuilderapi_command.nim",
  replaceAll = @[("""  BRepBuilderAPI_Command* {.importcpp: "BRepBuilderAPI_Command",
                           header: "BRepBuilderAPI_Command.hxx", bycopy.} = object ## !""",
                  """  BRepBuilderAPI_Command* {.importcpp: "BRepBuilderAPI_Command",
                           header: "BRepBuilderAPI_Command.hxx", bycopy.} = object of RootObj## !""")]
)

genFiles("BRepBuilderAPI_Copy")
genFiles("BRepBuilderAPI_EdgeError")
genFiles("BRepBuilderAPI_FaceError")
genFiles("BRepBuilderAPI_FastSewing")
pp("brepbuilderapi_fastsewing.nim",
  replaceAll = @[("ptr StandardOStream = 0", "ptr StandardOStream = cast[ptr StandardOStream](0)")]
)

genFiles("BRepBuilderAPI_FindPlane")
genFiles("BRepBuilderAPI_GTransform")
genFiles("BRepBuilderAPI")
genFiles("BRepBuilderAPI_MakeEdge2d")
pp("brepbuilderapi_makeedge2d.nim",
  replaceAll = @[("""proc newBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; p1: Pnt2d; p2: Pnt2d;
                                  p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge2d {.""", 
                  """proc newBRepBuilderAPI_MakeEdge2d*(L: Handle[Geom2dCurve]; p1: Pnt2d; p2: Pnt2d;
                                  p3: cfloat; p4: cfloat): BRepBuilderAPI_MakeEdge2d {."""),
                  ("""proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve]; p1: Pnt2d;
          p2: Pnt2d; p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init",""",
                  """proc init*(this: var BRepBuilderAPI_MakeEdge2d; c: Handle[Geom2dCurve]; p1: Pnt2d;
          p2: Pnt2d; p3: cfloat; p4: cfloat) {.cdecl, importcpp: "Init",""")]
)
genFiles("BRepBuilderAPI_MakeEdge")
pp("brepbuilderapi_makeedge.nim",
  replaceAll = @[("""proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt; p1: cfloat;
                                p2: cfloat): BRepBuilderAPI_MakeEdge {.cdecl,""", 
                  """proc newBRepBuilderAPI_MakeEdge*(L: Handle[GeomCurve]; p1: Pnt; p2: Pnt; p3: cfloat;
                                p4: cfloat): BRepBuilderAPI_MakeEdge {.cdecl,"""),
                  ("p1: Pnt; p2: Pnt; p1: cfloat; p2: cfloat): BRepBuilderAPI_MakeEdge {.",
                  "p1: Pnt; p2: Pnt; p3: cfloat; p4: cfloat): BRepBuilderAPI_MakeEdge {."),
                  ("""proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt;
          p1: cfloat; p2: cfloat) {.cdecl, importcpp: "Init", dynlib: tktopalgo.}""",
          """proc init*(this: var BRepBuilderAPI_MakeEdge; c: Handle[GeomCurve]; p1: Pnt; p2: Pnt;
          p3: cfloat; p4: cfloat) {.cdecl, importcpp: "Init", dynlib: tktopalgo.}"""),
          ("""s: Handle[GeomSurface]; p1: Pnt; p2: Pnt; p1: cfloat; p2: cfloat) {.cdecl,""",
          """s: Handle[GeomSurface]; p1: Pnt; p2: Pnt; p3: cfloat; p4: cfloat) {.cdecl,"""),
    ("newBRepBuilderAPI_Make", "new"),
    ("Handle[GeomCurve]", "HandleGeomCurve")
          ]
)

genFiles("BRepBuilderAPI_MakeFace")
pp("brepbuilderapi_makeface.nim",
  replaceAll = @[("newBRepBuilderAPI_Make", "new")]
)
genFiles("BRepBuilderAPI_MakePolygon")
genFiles("BRepBuilderAPI_MakeShape")
genFiles("BRepBuilderAPI_MakeShell")
genFiles("BRepBuilderAPI_MakeSolid")
genFiles("BRepBuilderAPI_MakeVertex")
genFiles("BRepBuilderAPI_MakeWire")
pp("brepbuilderapi_makewire.nim",
  replaceAll = @[("newBRepBuilderAPI_Make", "new")]
)
genFiles("BRepBuilderAPI_ModifyShape")
genFiles("BRepBuilderAPI_NurbsConvert")
genFiles("BRepBuilderAPI_PipeError")
genFiles("BRepBuilderAPI_Sewing")
pp("brepbuilderapi_sewing.nim",
  replaceAll = @[("MessageProgressRange = messageProgressRange()", "MessageProgressRange = newMessageProgressRange()")]
)


genFiles("BRepBuilderAPI_ShapeModification")
genFiles("BRepBuilderAPI_ShellError")
genFiles("BRepBuilderAPI_Transform")
pp("brepbuilderapi_transform.nim",
  replaceAll = @[("newBRepBuilderAPI_Transform", "transform")]
)
genFiles("BRepBuilderAPI_TransitionMode")
genFiles("BRepBuilderAPI_VertexInspector")
genFiles("BRepBuilderAPI_WireError")







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