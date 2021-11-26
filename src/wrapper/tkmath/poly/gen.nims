#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "poly"
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

# ls /usr/include/opencascade/Poly*.hxx | cut -c 26-

genFiles("Poly_Array1OfTriangle")
genFiles("Poly_CoherentLink")
genFiles("Poly_CoherentNode")
pp("poly_coherentnode.nim",
  #insert = @[(25, """  PolyCoherentTriPtrIterator* {.importcpp:"Poly_CoherentTriPtr::Iterator", header:"Poly_CoherentNode.hxx", bycopy.} = object""")],
  replaceAll = @[("""proc triangleIterator*(this: PolyCoherentNode): Iterator""","""proc triangleIterator*(this: PolyCoherentNode): PolyCoherentTriPtrIterator""")]
)

genFiles("Poly_CoherentTriangle")
genFiles("Poly_CoherentTriangulation")
pp("poly_coherenttriangulation.nim",
  replaceAll = @[("0L'i64", "0"),
  ("PolyBaseIteratorOfCoherentTriangle* = Iterator[PolyCoherentTriangle]", """PolyBaseIteratorOfCoherentTriangle* {.importcpp:"NCollection_Vector<Poly_CoherentTriangle>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj"""),
  ("PolyBaseIteratorOfCoherentNode* = Iterator[PolyCoherentNode]", """PolyBaseIteratorOfCoherentNode* {.importcpp:"NCollection_Vector<PolyCoherentNode>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj"""),
  ("PolyBaseIteratorOfCoherentLink* = Iterator[PolyCoherentLink]", """PolyBaseIteratorOfCoherentLink* {.importcpp:"NCollection_Vector<PolyCoherentLink>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj"""),
  ("Handle[NCollectionBaseAllocator] = 0", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)"),
  ("ptr NCollectionList[PolyCoherentTriangulationTwoIntegers] = 0", "ptr NCollectionList[PolyCoherentTriangulationTwoIntegers] = cast[ptr NCollectionList[PolyCoherentTriangulationTwoIntegers]](0)")  
  ]
)

genFiles("Poly_CoherentTriPtr")
genFiles("Poly_Connect")
genFiles("Poly_HArray1OfTriangle")
genFiles("Poly")
genFiles("Poly_ListOfTriangulation")
genFiles("Poly_MakeLoops")
pp("poly_makeloops.nim",
  replaceAll = @[("0L'i64", "0"),
  ("""PolyMakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object """, """PolyMakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj"""),
  ("Handle[NCollectionBaseAllocator] = 0", "Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)"),
  ("""PolyMakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                        header: "Poly_MakeLoops.hxx", bycopy.} = object""", 
  """PolyMakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                        header: "Poly_MakeLoops.hxx", bycopy.} = object of RootObj""")
  
  ]
)

genFiles("Poly_Polygon2D")
genFiles("Poly_Polygon3D")
genFiles("Poly_PolygonOnTriangulation")
genFiles("Poly_Triangle")
genFiles("Poly_Triangulation")




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