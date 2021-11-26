#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "brepblend"
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

# ls /usr/include/opencascade/BRepBlend*.hxx | cut -c 26-


genFiles("BRepBlend_AppFunc")
genFiles("BRepBlend_AppFuncRoot")
genFiles("BRepBlend_AppFuncRst")
genFiles("BRepBlend_AppFuncRstRst")
genFiles("BRepBlend_AppSurface")
genFiles("BRepBlend_AppSurf",
  comment = @[(169,185)]
)
genFiles("BRepBlend_BlendTool")
pp("brepblend_blendtool.nim",
  commentRange = @[(55,58)]
)

genFiles("BRepBlend_Chamfer")
genFiles("BRepBlend_ChamfInv")
genFiles("BRepBlend_ChAsym")
genFiles("BRepBlend_ChAsymInv")
genFiles("BRepBlend_ConstRad")
genFiles("BRepBlend_ConstRadInv")
genFiles("BRepBlend_ConstThroat")
genFiles("BRepBlend_ConstThroatInv")
genFiles("BRepBlend_ConstThroatWithPenetration")
genFiles("BRepBlend_ConstThroatWithPenetrationInv")
genFiles("BRepBlend_CSCircular")
genFiles("BRepBlend_CSConstRad")
genFiles("BRepBlend_CSWalking",
  comment = @[(117,183)]
)
genFiles("BRepBlend_CurvPointRadInv")
genFiles("BRepBlend_EvolRad")
genFiles("BRepBlend_EvolRadInv")
genFiles("BRepBlend_Extremity")
genFiles("BRepBlend_HCurve2dTool")
genFiles("BRepBlend_HCurveTool")
genFiles("BRepBlend_Line")
genFiles("BRepBlend_PointOnRst")
genFiles("BRepBlend_RstRstConstRad")
genFiles("BRepBlend_RstRstEvolRad")
genFiles("BRepBlend_RstRstLineBuilder")
genFiles("BRepBlend_Ruled")
genFiles("BRepBlend_RuledInv")
genFiles("BRepBlend_SequenceOfLine")
genFiles("BRepBlend_SequenceOfPointOnRst")
genFiles("BRepBlend_SurfCurvConstRadInv")
genFiles("BRepBlend_SurfCurvEvolRadInv")
genFiles("BRepBlend_SurfPointConstRadInv")
genFiles("BRepBlend_SurfPointEvolRadInv")
genFiles("BRepBlend_SurfRstConstRad")
genFiles("BRepBlend_SurfRstEvolRad")
genFiles("BRepBlend_SurfRstLineBuilder")
genFiles("BRepBlend_Walking",
  comment = @[(164,230)]
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