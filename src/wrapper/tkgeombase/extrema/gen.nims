#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "extrema"
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

# ls /usr/include/opencascade/Extrema*.hxx | cut -c 26-

genFiles("Extrema_Array1OfPOnCurv2d")
genFiles("Extrema_Array1OfPOnCurv")
genFiles("Extrema_Array1OfPOnSurf")
genFiles("Extrema_Array2OfPOnCurv2d")
genFiles("Extrema_Array2OfPOnCurv")
genFiles("Extrema_Array2OfPOnSurf")
genFiles("Extrema_Array2OfPOnSurfParams")
genFiles("Extrema_CCLocFOfLocECC2d",
  comment = @[(135, 152)])
genFiles("Extrema_CCLocFOfLocECC",
  comment = @[(135, 152)])
genFiles("Extrema_Curve2dTool")
genFiles("Extrema_CurveTool")
genFiles("Extrema_ECC2d")
genFiles("Extrema_ECC")
genFiles("Extrema_ElementType")
genFiles("Extrema_ELPCOfLocateExtPC2d")
genFiles("Extrema_ELPCOfLocateExtPC")
genFiles("Extrema_EPCOfELPCOfLocateExtPC2d")
genFiles("Extrema_EPCOfELPCOfLocateExtPC")
genFiles("Extrema_EPCOfExtPC2d")
genFiles("Extrema_EPCOfExtPC")
genFiles("Extrema_ExtAlgo")
pp("extrema_extalgo.nim", 
  replaceAll = @[("ExtremaExtAlgoGrad","extremaExtAlgoGrad"),
                 ("ExtremaExtAlgoTree", "extremaExtAlgoTree")])
genFiles("Extrema_ExtCC2d")
genFiles("Extrema_ExtCC")
genFiles("Extrema_ExtCS")
genFiles("Extrema_ExtElC2d")
genFiles("Extrema_ExtElC")
genFiles("Extrema_ExtElCS")
genFiles("Extrema_ExtElSS")
genFiles("Extrema_ExtFlag")
pp("extrema_extflag.nim", 
  replaceAll = @[("ExtremaExtFlagM","extremaExtFlagM")])
genFiles("Extrema_ExtPC2d")
genFiles("Extrema_ExtPC")
genFiles("Extrema_ExtPElC2d")
genFiles("Extrema_ExtPElC")
genFiles("Extrema_ExtPElS")
genFiles("Extrema_ExtPExtS")
genFiles("Extrema_ExtPRevS")
genFiles("Extrema_ExtPS")
genFiles("Extrema_ExtSS")
genFiles("Extrema_FuncExtCS")
genFiles("Extrema_FuncExtSS")
genFiles("Extrema_FuncPSDist")
genFiles("Extrema_FuncPSNorm")
genFiles("Extrema_GenExtCS")
genFiles("Extrema_GenExtPS")
genFiles("Extrema_GenExtSS")
genFiles("Extrema_GenLocateExtCS")
genFiles("Extrema_GenLocateExtPS")
genFiles("Extrema_GenLocateExtSS")
genFiles("Extrema_GlobOptFuncCC")
genFiles("Extrema_GlobOptFuncConicS")
genFiles("Extrema_GlobOptFuncCQuadric")
genFiles("Extrema_GlobOptFuncCS")
genFiles("Extrema_HArray1OfPOnCurv2d")
genFiles("Extrema_HArray1OfPOnCurv")
genFiles("Extrema_HArray1OfPOnSurf")
genFiles("Extrema_HArray2OfPOnCurv2d")
genFiles("Extrema_HArray2OfPOnCurv")
genFiles("Extrema_HArray2OfPOnSurf")
genFiles("Extrema_HArray2OfPOnSurfParams")
genFiles("Extrema_HUBTreeOfSphere")
genFiles("Extrema_LocateExtCC2d")
genFiles("Extrema_LocateExtCC")
genFiles("Extrema_LocateExtPC2d")
genFiles("Extrema_LocateExtPC")
genFiles("Extrema_LocECC2d")
genFiles("Extrema_LocECC")
genFiles("Extrema_LocEPCOfLocateExtPC2d")
genFiles("Extrema_LocEPCOfLocateExtPC")
genFiles("Extrema_PCFOfEPCOfELPCOfLocateExtPC2d")
genFiles("Extrema_PCFOfEPCOfELPCOfLocateExtPC")
genFiles("Extrema_PCFOfEPCOfExtPC2d")
genFiles("Extrema_PCFOfEPCOfExtPC")
genFiles("Extrema_PCLocFOfLocEPCOfLocateExtPC2d")
genFiles("Extrema_PCLocFOfLocEPCOfLocateExtPC")
genFiles("Extrema_POnCurv2d",
  comment = @[(72, 75)])
genFiles("Extrema_POnCurv",
  comment = @[(72, 75)])
genFiles("Extrema_POnSurf")
pp("extrema_ponsurf.nim",
  replaceAll = @[("bycopy.} = object", "bycopy.} = object of RootObj")])
genFiles("Extrema_POnSurfParams")
genFiles("Extrema_SequenceOfPOnCurv2d")
genFiles("Extrema_SequenceOfPOnCurv")
genFiles("Extrema_SequenceOfPOnSurf")





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