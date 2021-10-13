#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let c2nimFile = "gp.c2nim"
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


    exec "c2nim --cpp --header --strict --nep1 --out:" & name.toLower & ".nim " & c2nimFile & " " & name & ".hxx"
    let txt = readFile(name.toLower & ".nim")
    writeFile(name.toLower & ".nim", txt ) #beg & txt)
    #rmFile(name & ".hxx")
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


# ls /usr/include/opencascade/gp*.hxx | cut -c 26-
genFiles("gp_Ax1")
genFiles("gp_Ax22d")
genFiles("gp_Ax2d")
genFiles("gp_Ax2")
genFiles("gp_Ax3")
genFiles("gp_Circ2d")
genFiles("gp_Circ")
genFiles("gp_Cone")
genFiles("gp_Cylinder")
genFiles("gp_Dir2d")
genFiles("gp_Dir")
genFiles("gp_Elips2d")
genFiles("gp_Elips")
genFiles("gp_EulerSequence")
genFiles("gp_GTrsf2d")
genFiles("gp_GTrsf")
genFiles("gp")
pp("gp.nim",
  replaceAll = @[("dx*", "dxAsDir*"),("dy*", "dyAsDir*"),("dz*", "dzAsDir*")
  ]
)
genFiles("gp_Hypr2d")
genFiles("gp_Hypr")
genFiles("gp_Lin2d")
genFiles("gp_Lin")
genFiles("gp_Mat2d")
genFiles("gp_Mat")
genFiles("gp_Parab2d")
genFiles("gp_Parab")
genFiles("gp_Pln")
genFiles("gp_Pnt2d")
genFiles("gp_Pnt")
genFiles("gp_Quaternion")
genFiles("gp_QuaternionNLerp")
genFiles("gp_QuaternionSLerp")
pp("gp_quaternionslerp.nim",
  replaceAll = @[("interpolate*", "interpolateSlerp*")]
)

genFiles("gp_Sphere")
genFiles("gp_Torus")
genFiles("gp_Trsf2d")
genFiles("gp_TrsfForm")
genFiles("gp_Trsf")
#genFiles("gp_TrsfNLerp",
#  replaceAll = @[("template<> class NCollection_Lerp<gp_Trsf>", "class NCollection_Lerp<gp_Trsf>")]
#)
genFiles("gp_Vec2d")
genFiles("gp_Vec")
genFiles("gp_VectorWithNullMagnitude")
genFiles("gp_XY")
genFiles("gp_XYZ")


# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != "gp_includes":
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

writeFile("gp_includes.nim", beggining & txt )#& exp)
pp("gp_includes.nim")