#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "bopalgo"
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

# ls /usr/include/opencascade/BOPAlgo*.hxx | cut -c 26-

#genFiles("BOPAlgo_Alerts")
genFiles("BOPAlgo_Algo")
genFiles("BOPAlgo_ArgumentAnalyzer")
genFiles("BOPAlgo_BOP")
genFiles("BOPAlgo_BuilderArea")
pp("bopalgo_builderarea.nim",
  commentRange = @[(31, 32)],
  #replaceAll = @[("Handle[MessageReport] = nil", "Handle[MessageReport] = cast[Handle[MessageReport] ](nil)")]
)
genFiles("BOPAlgo_BuilderFace")
genFiles("BOPAlgo_Builder")
pp("bopalgo_builder.nim",
  commentRange = @[(138, 140)],
  replaceAll = @[("Handle[MessageReport] = nil", "Handle[MessageReport] = cast[Handle[MessageReport] ](nil)")]
)
genFiles("BOPAlgo_BuilderShape")
pp("bopalgo_buildershape.nim",
  commentRange = @[(110, 111)]
)
genFiles("BOPAlgo_BuilderSolid")
genFiles("BOPAlgo_CellsBuilder")
genFiles("BOPAlgo_CheckerSI")
genFiles("BOPAlgo_CheckResult")
genFiles("BOPAlgo_CheckStatus")
pp("bopalgo_checkstatus.nim",
  replaceAll = @[("BOPAlgoCheckUnknown", "bOPAlgoCheckUnknown"),
    ("BOPAlgoBadType", "bOPAlgoBadType"),
    ("BOPAlgoSelfIntersect", "bOPAlgoSelfIntersect"),
    ("BOPAlgoTooSmallEdge", "bOPAlgoTooSmallEdge"),
    ("BOPAlgoNonRecoverableFace", "bOPAlgoNonRecoverableFace"),
    ("BOPAlgoIncompatibilityOfVertex", "bOPAlgoIncompatibilityOfVertex"),
    ("BOPAlgoIncompatibilityOfEdge", "bOPAlgoIncompatibilityOfEdge"),
    ("BOPAlgoIncompatibilityOfFace","bOPAlgoIncompatibilityOfFace"),
    ("BOPAlgoOperationAborted", "bOPAlgoOperationAborted"),
    ("BOPAlgoGeomAbsC0", "bOPAlgoGeomAbsC0"),
    ("BOPAlgoInvalidCurveOnSurface","bOPAlgoInvalidCurveOnSurface"),
    ("BOPAlgoNotValid","bOPAlgoNotValid")]
)
genFiles("BOPAlgo_GlueEnum")
genFiles("BOPAlgo_ListOfCheckResult")
pp("bopalgo_listofcheckresult.nim",
  replaceAll = @[(
    "BOPAlgoListIteratorOfListOfCheckResult* = Iterator", 
    """BOPAlgoListIteratorOfListOfCheckResult* {.importcpp:"BOPAlgo_ListOfCheckResult::Iterator", header:"BOPAlgo_ListOfCheckResult.hxx", bycopy.} = object""")
    ]
)
genFiles("BOPAlgo_MakeConnected")
pp("bopalgo_makeconnected.nim",
  commentRange = @[(350, 351), (362, 363)]
)
genFiles("BOPAlgo_MakePeriodic")
pp( "bopalgo_makeperiodic.nim",
  replaceAll = @[("bool = 0.0", "bool = false")],
  commentRange = @[(952, 953)]
)
genFiles("BOPAlgo_MakerVolume")
genFiles("BOPAlgo_Operation")
pp("bopalgo_operation.nim",
  replaceAll = @[
    ("BOPAlgoCOMMON",  "bOPAlgoCOMMON"),
    ("BOPAlgoFUSE",    "bOPAlgoFUSE"),
    ("BOPAlgoCUT",     "bOPAlgoCUT"),
    ("BOPAlgoCUT21",   "bOPAlgoCUT21"), 
    ("BOPAlgoSECTION", "bOPAlgoSECTION"),
    ("BOPAlgoUNKNOWN", "bOPAlgoUNKNOWN")
    ]
)
genFiles("BOPAlgo_Options")
pp("bopalgo_options.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("BOPAlgo_PArgumentAnalyzer")
genFiles("BOPAlgo_PaveFiller")
pp( "bopalgo_pavefiller.nim",
  commentRange = @[(49,53), (60,61)]
)
genFiles("BOPAlgo_PBOP")
genFiles("BOPAlgo_PBuilder")
genFiles("BOPAlgo_PPaveFiller")
genFiles("BOPAlgo_PSection")
genFiles("BOPAlgo_PWireEdgeSet")
genFiles("BOPAlgo_RemoveFeatures")
genFiles("BOPAlgo_SectionAttribute")
genFiles("BOPAlgo_Section")
genFiles("BOPAlgo_ShellSplitter")
pp( "bopalgo_shellsplitter.nim",
  commentRange = @[(38,39)]
)
genFiles("BOPAlgo_Splitter")
genFiles("BOPAlgo_Tools",
  comment = @[(51,75)]
)
pp("bopalgo_tools.nim",
  commentRange = @[(44, 62), (73,85)],
  replaceAll = @[("1.e-8", "1e-8")]
)
genFiles("BOPAlgo_ToolsProvider")
genFiles("BOPAlgo_WireEdgeSet")
genFiles("BOPAlgo_WireSplitter")
pp("bopalgo_wiresplitter.nim",
  commentRange = @[(33, 36), (41,43)]
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