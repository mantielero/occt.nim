#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "topopebreptool"
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

# ls /usr/include/opencascade/TopOpeBRepTool*.hxx | cut -c 26-



# ls /usr/include/opencascade/TopOpeBRepTool*.hxx | cut -c 26-

genFiles("TopOpeBRepTool_2d")
pp("topopebreptool_2d.nim",
  replaceAll = @[("f: var cfloat", "f1: var cfloat"),("f: TopoDS_Face; f: cfloat;", "f: TopoDS_Face; f1: cfloat;")]
)
genFiles("TopOpeBRepTool_AncestorsTool")
genFiles("TopOpeBRepTool_box")
genFiles("TopOpeBRepTool_BoxSort")
genFiles("TopOpeBRepTool_C2DF")
genFiles("TopOpeBRepTool_CLASSI")
genFiles("TopOpeBRepTool_connexity")
genFiles("TopOpeBRepTool_CORRISO")
genFiles("TopOpeBRepTool_CurveTool")
genFiles("TopOpeBRepTool_DataMapIteratorOfDataMapOfOrientedShapeC2DF")
genFiles("TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeface")
genFiles("TopOpeBRepTool_DataMapIteratorOfDataMapOfShapeListOfC2DF")
genFiles("TopOpeBRepTool_DataMapOfOrientedShapeC2DF")
pp("topopebreptool_datamapoforientedshapec2df.nim",
  replaceAll = @[("""TopOpeBRepToolDataMapIteratorOfDataMapOfOrientedShapeC2DF* = Iterator[
      TopoDS_Shape, TopOpeBRepToolC2DF, TopToolsOrientedShapeMapHasher]""",
      """TopOpeBRepToolDataMapIteratorOfDataMapOfOrientedShapeC2DF* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepTool_C2DF,TopTools_OrientedShapeMapHasher>::Iterator", header:"TopOpeBRepTool_DataMapOfOrientedShapeC2DF.hxx", bycopy.} = object"""
      )]
)
genFiles("TopOpeBRepTool_DataMapOfShapeface")
pp("topopebreptool_datamapofshapeface.nim",
  replaceAll = @[("""TopOpeBRepToolDataMapIteratorOfDataMapOfShapeface* = Iterator[TopoDS_Shape,
      TopOpeBRepToolFace, TopToolsShapeMapHasher]""",
      """TopOpeBRepToolDataMapIteratorOfDataMapOfShapeface* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepTool_face,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepTool_DataMapOfShapeface.hxx", bycopy.} = object"""
      )]
)
genFiles("TopOpeBRepTool_DataMapOfShapeListOfC2DF")
pp("topopebreptool_datamapofshapelistofc2df.nim",
  replaceAll = @[("""TopOpeBRepToolDataMapIteratorOfDataMapOfShapeListOfC2DF* = Iterator[
      TopoDS_Shape, TopOpeBRepToolListOfC2DF, TopToolsShapeMapHasher]""",
      """TopOpeBRepToolDataMapIteratorOfDataMapOfShapeListOfC2DF* {.importcpp:"NCollection_DataMap<TopoDS_Shape,TopOpeBRepTool_ListOfC2DF,TopTools_ShapeMapHasher>::Iterator", header:"TopOpeBRepTool_DataMapOfShapeListOfC2DF.hxx", bycopy.} = object"""
      )]
)
genFiles("TopOpeBRepTool_defineG",
  comment = @[(25,33)]
)
genFiles("TopOpeBRepTool_define")
genFiles("TopOpeBRepTool_DRAW")
genFiles("TopOpeBRepTool_EXPORT")
genFiles("TopOpeBRepTool_face")
genFiles("TopOpeBRepTool_FuseEdges")
genFiles("TopOpeBRepTool_GEOMETRY")
genFiles("TopOpeBRepTool_GeomTool")
genFiles("TopOpeBRepTool_HBoxTool")
genFiles("TopOpeBRepTool")
genFiles("TopOpeBRepTool_IndexedDataMapOfShapeBox2d")
genFiles("TopOpeBRepTool_IndexedDataMapOfShapeBox")
genFiles("TopOpeBRepTool_IndexedDataMapOfShapeconnexity")
genFiles("TopOpeBRepTool_IndexedDataMapOfSolidClassifier")
genFiles("TopOpeBRepTool_KRO")
genFiles("TopOpeBRepTool_ListIteratorOfListOfC2DF")
genFiles("TopOpeBRepTool_ListOfC2DF")
pp("topopebreptool_listofc2df.nim",
  replaceAll = @[("TopOpeBRepToolListIteratorOfListOfC2DF* = Iterator[TopOpeBRepToolC2DF]",
  """TopOpeBRepToolListIteratorOfListOfC2DF* {.importcpp:"NCollection_List<TopOpeBRepTool_C2DF>::Iterator", header:"TopOpeBRepTool_ListOfC2DF.hxx", bycopy.} = object""")]
)
genFiles("TopOpeBRepTool_makeTransition")
genFiles("TopOpeBRepTool_mkTondgE")
genFiles("TopOpeBRepTool_OutCurveType")
pp("topopebreptool_outcurvetype.nim",
  replaceAll = @[("TopOpeBRepToolBSPLINE1, TopOpeBRepToolAPPROX, TopOpeBRepToolINTERPOL",
  "topOpeBRepToolBSPLINE1, topOpeBRepToolAPPROX, topOpeBRepToolINTERPOL")]
)
genFiles("TopOpeBRepTool_Plos")
genFiles("TopOpeBRepTool_PROJECT")
genFiles("TopOpeBRepTool_PShapeClassifier")
genFiles("TopOpeBRepTool_PSoClassif")
genFiles("TopOpeBRepTool_PURGE")
genFiles("TopOpeBRepTool_PurgeInternalEdges")
genFiles("TopOpeBRepTool_REGUS")
genFiles("TopOpeBRepTool_REGUW")
genFiles("TopOpeBRepTool_SC")
genFiles("TopOpeBRepTool_ShapeClassifier")
genFiles("TopOpeBRepTool_ShapeExplorer")
genFiles("TopOpeBRepTool_ShapeTool")
genFiles("TopOpeBRepTool_SolidClassifier")
genFiles("TopOpeBRepTool_STATE")
genFiles("TopOpeBRepTool_tol")
genFiles("TopOpeBRepTool_TOOL")
genFiles("TopOpeBRepTool_TOPOLOGY")



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


var beggining = "{.passL:\"-lTKBool\".}\n"
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