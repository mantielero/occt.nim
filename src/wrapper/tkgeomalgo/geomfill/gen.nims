#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "geomfill"
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
               commentFuncBody:seq[tuple[a,b:int]] = @[]) =
    var (dir, name, ext) = splitFile(infile)
    if dir == "":
      dir = lib
    if ext == "":
      ext = ".hxx"
    cpFile(dir & name & ext, name & ".hxx")
    
    var rem:seq[tuple[a,b:int]] = remove
    var comm:seq[tuple[a,b:int]] = comment    
    var semiColon = addSemiColon
    if commentFuncBody.len > 0:
      for item in commentFuncBody:
        comm &= item
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
    if comm.len > 0:
      var txt = readFile(name & ".hxx") 
      var lines = txt.splitLines()
      for rng in comm:
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

# ls /usr/include/opencascade/GeomFill*.hxx | cut -c 26-

genFiles("GeomFill_ApproxStyle")
pp("geomfill_approxstyle.nim",
  replaceAll = @[("GeomFillSection", "geomFillSection"),
  ("GeomFillLocation", "geomFillLocation")]
)
genFiles("GeomFill_AppSurf",
  comment = @[(170, 186)]
)
genFiles("GeomFill_AppSweep",
  comment = @[(171, 187)]
)
genFiles("GeomFill_Array1OfLocationLaw")
genFiles("GeomFill_Array1OfSectionLaw")
genFiles("GeomFill_BezierCurves")
genFiles("GeomFill_Boundary")
genFiles("GeomFill_BoundWithSurf")
genFiles("GeomFill_BSplineCurves")
genFiles("GeomFill_CircularBlendFunc")
genFiles("GeomFill_ConstantBiNormal")
genFiles("GeomFill_ConstrainedFilling")
genFiles("GeomFill_CoonsAlgPatch")
genFiles("GeomFill_Coons")
genFiles("GeomFill_CornerState")
genFiles("GeomFill_CorrectedFrenet")
genFiles("GeomFill_CurveAndTrihedron")
genFiles("GeomFill_Curved")
genFiles("GeomFill_Darboux")
genFiles("GeomFill_DegeneratedBound")
genFiles("GeomFill_DiscreteTrihedron")
genFiles("GeomFill_DraftTrihedron")
genFiles("GeomFill_EvolvedSection")
genFiles("GeomFill_Filling")
pp("geomfill_filling.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("GeomFill_FillingStyle")
genFiles("GeomFill_Fixed")
genFiles("GeomFill_Frenet")
genFiles("GeomFill_FunctionDraft")
genFiles("GeomFill_FunctionGuide")
genFiles("GeomFill_Generator")
genFiles("GeomFill_GuideTrihedronAC")
genFiles("GeomFill_GuideTrihedronPlan")
genFiles("GeomFill_HArray1OfLocationLaw")
genFiles("GeomFill_HArray1OfSectionLaw")
genFiles("GeomFill_HSequenceOfAx2")
genFiles("GeomFill")
genFiles("GeomFill_Line")
genFiles("GeomFill_LocationDraft")
genFiles("GeomFill_LocationGuide")
genFiles("GeomFill_LocationLaw")
genFiles("GeomFill_LocFunction")
genFiles("GeomFill_NSections")
genFiles("GeomFill_PipeError")
genFiles("GeomFill_Pipe")
genFiles("GeomFill_PlanFunc")
genFiles("GeomFill_PolynomialConvertor")
genFiles("GeomFill_Profiler")
pp("geomfill_profiler.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("GeomFill_QuasiAngularConvertor")
genFiles("GeomFill_SectionGenerator")
genFiles("GeomFill_SectionLaw")
genFiles("GeomFill_SectionPlacement")
genFiles("GeomFill_SequenceOfAx2")
genFiles("GeomFill_SequenceOfTrsf")
genFiles("GeomFill_SimpleBound")
genFiles("GeomFill_SnglrFunc")
genFiles("GeomFill_Stretch")
genFiles("GeomFill_SweepFunction")
genFiles("GeomFill_Sweep")
genFiles("GeomFill_SweepSectionGenerator")
genFiles("GeomFill_Tensor")
genFiles("GeomFill_TgtField")
genFiles("GeomFill_TgtOnCoons")
genFiles("GeomFill_Trihedron")
pp("geomfill_trihedron.nim",
  replaceAll = @[("GeomFillIs", "geomFillIs")]
)
genFiles("GeomFill_TrihedronLaw")
genFiles("GeomFill_TrihedronWithGuide")
genFiles("GeomFill_UniformSection")




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