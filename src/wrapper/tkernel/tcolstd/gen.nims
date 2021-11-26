#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "tcolstd"
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

# ls /usr/include/opencascade/TColStd*.hxx | cut -c 26-

genFiles("TColStd_Array1OfAsciiString")
genFiles("TColStd_Array1OfBoolean")
genFiles("TColStd_Array1OfByte")
genFiles("TColStd_Array1OfCharacter")
genFiles("TColStd_Array1OfExtendedString")
genFiles("TColStd_Array1OfInteger")
genFiles("TColStd_Array1OfListOfInteger")
genFiles("TColStd_Array1OfReal")
genFiles("TColStd_Array1OfTransient")
genFiles("TColStd_Array2OfBoolean")
genFiles("TColStd_Array2OfCharacter")
genFiles("TColStd_Array2OfInteger")
genFiles("TColStd_Array2OfReal")
genFiles("TColStd_Array2OfTransient")
genFiles("TColStd_DataMapIteratorOfDataMapOfAsciiStringInteger")
genFiles("TColStd_DataMapIteratorOfDataMapOfIntegerInteger")
genFiles("TColStd_DataMapIteratorOfDataMapOfIntegerListOfInteger")
genFiles("TColStd_DataMapIteratorOfDataMapOfIntegerReal")
genFiles("TColStd_DataMapIteratorOfDataMapOfIntegerTransient")
genFiles("TColStd_DataMapIteratorOfDataMapOfStringInteger")
genFiles("TColStd_DataMapIteratorOfDataMapOfTransientTransient")
genFiles("TColStd_DataMapOfAsciiStringInteger")
pp("tcolstd_datamapofasciistringinteger.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfAsciiStringInteger* = Iterator[
      TCollectionAsciiString, cint, TCollectionAsciiString]""", """  TColStdDataMapIteratorOfDataMapOfAsciiStringInteger* = NCollectionDataMapIterator[
      TCollectionAsciiString, cint, TCollectionAsciiString]""")]
)

genFiles("TColStd_DataMapOfIntegerInteger")
pp("tcolstd_datamapofintegerinteger.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfIntegerInteger* = Iterator[cint, cint,
      TColStdMapIntegerHasher]""", """  TColStdDataMapIteratorOfDataMapOfIntegerInteger* = NCollectionDataMapIterator[cint, cint,
      TColStdMapIntegerHasher]""")]
)


genFiles("TColStd_DataMapOfIntegerListOfInteger")
pp("tcolstd_datamapofintegerlistofinteger.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfIntegerListOfInteger* = Iterator[cint,
      TColStdListOfInteger, TColStdMapIntegerHasher]""", """  TColStdDataMapIteratorOfDataMapOfIntegerListOfInteger* = NCollectionDataMapIterator[cint,
      TColStdListOfInteger, TColStdMapIntegerHasher]""")]
)
genFiles("TColStd_DataMapOfIntegerReal")
pp("tcolstd_datamapofintegerreal.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfIntegerReal* = Iterator[cint, cfloat,
      TColStdMapIntegerHasher]""", """  TColStdDataMapIteratorOfDataMapOfIntegerReal* = NCollectionDataMapIterator[cint, cfloat,
      TColStdMapIntegerHasher]""")]
)

genFiles("TColStd_DataMapOfIntegerTransient")
pp("tcolstd_datamapofintegertransient.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfIntegerTransient* = Iterator[cint,
      Handle[StandardTransient], TColStdMapIntegerHasher]""", """  TColStdDataMapIteratorOfDataMapOfIntegerTransient* = NCollectionDataMapIterator[cint,
      Handle[StandardTransient], TColStdMapIntegerHasher]""")]
)

genFiles("TColStd_DataMapOfStringInteger")
pp("tcolstd_datamapofstringinteger.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfStringInteger* = Iterator[
      TCollectionExtendedString, cint, TCollectionExtendedString]""", """  TColStdDataMapIteratorOfDataMapOfStringInteger* = NCollectionDataMapIterator[
      TCollectionExtendedString, cint, TCollectionExtendedString]""")]
)

genFiles("TColStd_DataMapOfTransientTransient")
pp("tcolstd_datamapoftransienttransient.nim",
  replaceAll = @[("""  TColStdDataMapIteratorOfDataMapOfTransientTransient* = Iterator[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]""", """  TColStdDataMapIteratorOfDataMapOfTransientTransient* = NCollectionDataMapIterator[
      Handle[StandardTransient], Handle[StandardTransient],
      TColStdMapTransientHasher]""")]
)

genFiles("TColStd_HArray1OfAsciiString")
genFiles("TColStd_HArray1OfBoolean")
genFiles("TColStd_HArray1OfByte")
genFiles("TColStd_HArray1OfCharacter")
genFiles("TColStd_HArray1OfExtendedString")
genFiles("TColStd_HArray1OfInteger")
genFiles("TColStd_HArray1OfListOfInteger")
genFiles("TColStd_HArray1OfReal")
genFiles("TColStd_HArray1OfTransient")
genFiles("TColStd_HArray2OfBoolean")
genFiles("TColStd_HArray2OfCharacter")
genFiles("TColStd_HArray2OfInteger")
genFiles("TColStd_HArray2OfReal")
genFiles("TColStd_HArray2OfTransient")
genFiles("TColStd_HPackedMapOfInteger")
genFiles("TColStd_HSequenceOfAsciiString")
genFiles("TColStd_HSequenceOfExtendedString")
genFiles("TColStd_HSequenceOfHAsciiString")
genFiles("TColStd_HSequenceOfHExtendedString")
genFiles("TColStd_HSequenceOfInteger")
genFiles("TColStd_HSequenceOfReal")
genFiles("TColStd_HSequenceOfTransient")
genFiles("TColStd_IndexedDataMapOfStringString")
genFiles("TColStd_IndexedDataMapOfTransientTransient")
genFiles("TColStd_IndexedMapOfInteger")
genFiles("TColStd_IndexedMapOfReal")
genFiles("TColStd_IndexedMapOfTransient")
genFiles("TColStd_ListIteratorOfListOfAsciiString")
genFiles("TColStd_ListIteratorOfListOfInteger")
genFiles("TColStd_ListIteratorOfListOfReal")
genFiles("TColStd_ListIteratorOfListOfTransient")
genFiles("TColStd_ListOfAsciiString")
pp("tcolstd_listofasciistring.nim",
  replaceAll = @[("""TColStdListIteratorOfListOfAsciiString* = Iterator[TCollectionAsciiString]""", """TColStdListIteratorOfListOfAsciiString* = NCollectionTListIterator[TCollectionAsciiString]""")]
)

genFiles("TColStd_ListOfInteger")
pp("tcolstd_listofinteger.nim",
  replaceAll = @[("""TColStdListIteratorOfListOfInteger* = Iterator[cint]""", """TColStdListIteratorOfListOfInteger* = NCollectionTListIterator[cint]""")]
)

genFiles("TColStd_ListOfReal")
pp("tcolstd_listofreal.nim",
  replaceAll = @[("""TColStdListIteratorOfListOfReal* = Iterator[cfloat]""", """TColStdListIteratorOfListOfReal* = NCollectionTListIterator[cfloat]""")]
)

genFiles("TColStd_ListOfTransient")
pp("tcolstd_listoftransient.nim",
  replaceAll = @[("""TColStdListIteratorOfListOfTransient* = Iterator[Handle[StandardTransient]]""", """TColStdListIteratorOfListOfTransient* = NCollectionTListIterator[Handle[StandardTransient]]""")]
)

genFiles("TColStd_MapIntegerHasher")
genFiles("TColStd_MapIteratorOfMapOfAsciiString")
genFiles("TColStd_MapIteratorOfMapOfInteger")
genFiles("TColStd_MapIteratorOfMapOfReal")
genFiles("TColStd_MapIteratorOfMapOfTransient")
genFiles("TColStd_MapIteratorOfPackedMapOfInteger")
pp("tcolstd_mapiteratorofpackedmapofinteger.nim",
  replaceAll = @[("""TColStdMapIteratorOfPackedMapOfInteger* = Iterator""", """TColStdMapIteratorOfPackedMapOfInteger* {.importcpp:"TColStd_PackedMapOfInteger::Iterator".} = object""")]
)

genFiles("TColStd_MapOfAsciiString")
pp("tcolstd_mapofasciistring.nim",
  replaceAll = @[("""  TColStdMapIteratorOfMapOfAsciiString* = Iterator[TCollectionAsciiString,
      TCollectionAsciiString]""", """  TColStdMapIteratorOfMapOfAsciiString* = NCollectionMap[TCollectionAsciiString,
      TCollectionAsciiString]""")]
)

genFiles("TColStd_MapOfInteger")
pp("tcolstd_mapofinteger.nim",
  replaceAll = @[("""TColStdMapIteratorOfMapOfInteger* = Iterator[cint, TColStdMapIntegerHasher]""", """TColStdMapIteratorOfMapOfInteger* = NCollectionMap[cint, TColStdMapIntegerHasher]""")]
)

genFiles("TColStd_MapOfReal")
pp("tcolstd_mapofreal.nim",
  replaceAll = @[("""TColStdMapIteratorOfMapOfReal* = Iterator[cfloat, TColStdMapRealHasher]""", """TColStdMapIteratorOfMapOfReal* = NCollectionMap[cfloat, TColStdMapRealHasher]""")]
)

genFiles("TColStd_MapOfTransient")
pp("tcolstd_mapoftransient.nim",
  replaceAll = @[("""TColStdMapIteratorOfMapOfTransient* = Iterator[Handle[StandardTransient],
      TColStdMapTransientHasher]""", """TColStdMapIteratorOfMapOfTransient* = NCollectionMap[Handle[StandardTransient],
      TColStdMapTransientHasher]""")]
)

genFiles("TColStd_MapRealHasher")
genFiles("TColStd_MapTransientHasher")
genFiles("TColStd_PackedMapOfInteger")
genFiles("TColStd_SequenceOfAddress")
genFiles("TColStd_SequenceOfAsciiString")
genFiles("TColStd_SequenceOfBoolean")
genFiles("TColStd_SequenceOfExtendedString")
genFiles("TColStd_SequenceOfHAsciiString")
genFiles("TColStd_SequenceOfHExtendedString")
genFiles("TColStd_SequenceOfInteger")
genFiles("TColStd_SequenceOfReal")
genFiles("TColStd_SequenceOfTransient")


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