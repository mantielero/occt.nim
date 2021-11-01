#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "chfids"
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

# ls /usr/include/opencascade/ChFiDS*.hxx | cut -c 26-

genFiles("ChFiDS_ChamfMethod")
genFiles("ChFiDS_ChamfMode")
genFiles("ChFiDS_ChamfSpine")
genFiles("ChFiDS_CircSection")
genFiles("ChFiDS_CommonPoint")
genFiles("ChFiDS_ElSpine")
genFiles("ChFiDS_ErrorStatus")
genFiles("ChFiDS_FaceInterference")
genFiles("ChFiDS_FilSpine")
genFiles("ChFiDS_HData")
genFiles("ChFiDS_HElSpine",
  comment = @[(80, 92)]
)
genFiles("ChFiDS_IndexedDataMapOfVertexListOfStripe")
genFiles("ChFiDS_ListIteratorOfListOfHElSpine")
genFiles("ChFiDS_ListIteratorOfListOfStripe")
genFiles("ChFiDS_ListIteratorOfRegularities")
genFiles("ChFiDS_ListOfHElSpine")
pp("chfids_listofhelspine.nim",
  replaceAll = @[("ChFiDS_ListIteratorOfListOfHElSpine* = Iterator[Handle[ChFiDS_HElSpine]]",
  """ChFiDS_ListIteratorOfListOfHElSpine* {.importcpp:"NCollection_List<Handle(ChFiDS_HElSpine)>::Iterator", header:"ChFiDS_ListOfHElSpine.hxx",bycopy.} = object"""  
  )]
)
genFiles("ChFiDS_ListOfStripe")
pp("chfids_listofstripe.nim",
  replaceAll = @[("ChFiDS_ListIteratorOfListOfStripe* = Iterator[Handle[ChFiDS_Stripe]]",
  """ChFiDS_ListIteratorOfListOfStripe* {.importcpp:"NCollection_List<Handle(ChFiDS_Stripe)>::Iterator", header:"ChFiDS_ListOfStripe.hxx",bycopy.}  = object"""
  )]
)
genFiles("ChFiDS_Map")
genFiles("ChFiDS_Regularities")
pp("chfids_regularities.nim",
  replaceAll = @[("ChFiDS_ListIteratorOfRegularities* = Iterator[ChFiDS_Regul]",
  """ChFiDS_ListIteratorOfRegularities* {.importcpp:"NCollection_List<ChFiDS_Regul>::Iterator", header:"ChFiDS_Regularities.hxx",bycopy.}  = object"""
  )]
)
genFiles("ChFiDS_Regul")
genFiles("ChFiDS_SecArray1")
genFiles("ChFiDS_SecHArray1")
genFiles("ChFiDS_SequenceOfSpine")
genFiles("ChFiDS_SequenceOfSurfData")
genFiles("ChFiDS_Spine")
genFiles("ChFiDS_State")
genFiles("ChFiDS_StripeArray1")
genFiles("ChFiDS_Stripe")
genFiles("ChFiDS_StripeMap")
genFiles("ChFiDS_SurfData")
genFiles("ChFiDS_TypeOfConcavity")


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