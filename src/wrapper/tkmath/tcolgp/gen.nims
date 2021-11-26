#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let c2nimFile = "tcolgp.c2nim"
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

# ls /usr/include/opencascade/TColgp*.hxx | cut -c 26-


genFiles("TColgp_Array1OfCirc2d")
genFiles("TColgp_Array1OfDir2d")
genFiles("TColgp_Array1OfDir")
genFiles("TColgp_Array1OfLin2d")
genFiles("TColgp_Array1OfPnt2d")
genFiles("TColgp_Array1OfPnt")
genFiles("TColgp_Array1OfVec2d")
genFiles("TColgp_Array1OfVec")
genFiles("TColgp_Array1OfXY")
genFiles("TColgp_Array1OfXYZ")
genFiles("TColgp_Array2OfCirc2d")
genFiles("TColgp_Array2OfDir2d")
genFiles("TColgp_Array2OfDir")
genFiles("TColgp_Array2OfLin2d")
genFiles("TColgp_Array2OfPnt2d")
genFiles("TColgp_Array2OfPnt")
genFiles("TColgp_Array2OfVec2d")
genFiles("TColgp_Array2OfVec")
genFiles("TColgp_Array2OfXY")
genFiles("TColgp_Array2OfXYZ")
genFiles("TColgp_HArray1OfCirc2d")
genFiles("TColgp_HArray1OfDir2d")
genFiles("TColgp_HArray1OfDir")
genFiles("TColgp_HArray1OfLin2d")
genFiles("TColgp_HArray1OfPnt2d")
genFiles("TColgp_HArray1OfPnt")
genFiles("TColgp_HArray1OfVec2d")
genFiles("TColgp_HArray1OfVec")
genFiles("TColgp_HArray1OfXY")
genFiles("TColgp_HArray1OfXYZ")
genFiles("TColgp_HArray2OfCirc2d")
genFiles("TColgp_HArray2OfDir2d")
genFiles("TColgp_HArray2OfDir")
genFiles("TColgp_HArray2OfLin2d")
genFiles("TColgp_HArray2OfPnt2d")
genFiles("TColgp_HArray2OfPnt")
genFiles("TColgp_HArray2OfVec2d")
genFiles("TColgp_HArray2OfVec")
genFiles("TColgp_HArray2OfXY")
genFiles("TColgp_HArray2OfXYZ")
genFiles("TColgp_HSequenceOfDir2d")
genFiles("TColgp_HSequenceOfDir")
genFiles("TColgp_HSequenceOfPnt2d")
genFiles("TColgp_HSequenceOfPnt")
genFiles("TColgp_HSequenceOfVec2d")
genFiles("TColgp_HSequenceOfVec")
genFiles("TColgp_HSequenceOfXY")
genFiles("TColgp_HSequenceOfXYZ")
genFiles("TColgp_SequenceOfArray1OfPnt2d")
genFiles("TColgp_SequenceOfAx1")
genFiles("TColgp_SequenceOfDir2d")
genFiles("TColgp_SequenceOfDir")
genFiles("TColgp_SequenceOfPnt2d")
genFiles("TColgp_SequenceOfPnt")
genFiles("TColgp_SequenceOfVec2d")
genFiles("TColgp_SequenceOfVec")
genFiles("TColgp_SequenceOfXY")
genFiles("TColgp_SequenceOfXYZ")


# Create the import/export file (to be modified manually)
var txt = ""
var files = listFiles("./")
files.sort()
for path in files:
  var (dir, name, ext) = splitFile(path)


  if ext == ".nim" and name != "gen" and name != "tcolgp_includes":
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

writeFile("tcolgp_includes.nim", beggining & txt )#& exp)
pp("tcolgp_includes.nim")