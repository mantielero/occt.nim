#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "interface"
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

# ls /usr/include/opencascade/Interface*.hxx | cut -c 26-

genFiles("Interface_Array1OfFileParameter")
genFiles("Interface_Array1OfHAsciiString")
genFiles("Interface_BitMap")
genFiles("Interface_Category")
genFiles("Interface_CheckFailure")
pp("interface_checkfailure.nim",
  commentRange = @[(17,28)]
)
genFiles("Interface_Check")
genFiles("Interface_CheckIterator")
genFiles("Interface_CheckStatus")
genFiles("Interface_CheckTool")
genFiles("Interface_CopyControl")
genFiles("Interface_CopyMap")
genFiles("Interface_CopyTool")
pp("interface_copytool.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("Interface_DataMapIteratorOfDataMapOfTransientInteger")
genFiles("Interface_DataMapOfTransientInteger")
pp("interface_datamapoftransientinteger.nim",
  commentRange = @[(17,21)]
)
genFiles("Interface_DataState")
genFiles("Interface_EntityCluster")
genFiles("Interface_EntityIterator")
pp("interface_entityiterator.nim",
  replaceAll = @[("= object", "= object of RootObj")]
)
genFiles("Interface_EntityList")
genFiles("Interface_FileParameter")
genFiles("Interface_FileReaderData")
genFiles("Interface_FileReaderTool")
genFiles("Interface_FloatWriter")
genFiles("Interface_GeneralLib")
genFiles("Interface_GeneralModule")
genFiles("Interface_GlobalNodeOfGeneralLib")
genFiles("Interface_GlobalNodeOfReaderLib")
genFiles("Interface_GraphContent")
genFiles("Interface_Graph")
genFiles("Interface_GTool")
genFiles("Interface_HArray1OfHAsciiString")
genFiles("Interface_HGraph")
genFiles("Interface_HSequenceOfCheck")
genFiles("Interface_IndexedMapOfAsciiString")
genFiles("Interface_InterfaceError")
pp("interface_interfaceerror.nim",
  commentRange = @[(17, 28)]
)
genFiles("Interface_InterfaceMismatch")
pp("interface_interfacemismatch.nim",
  commentRange = @[(17, 28)]
)
genFiles("Interface_InterfaceModel")
genFiles("Interface_IntList")
genFiles("Interface_IntVal")
genFiles("Interface_LineBuffer")
genFiles("Interface_Macros")
genFiles("Interface_MapAsciiStringHasher")
pp("interface_mapasciistringhasher.nim",
  commentRange = @[(26, 28)]
)
genFiles("Interface_MSG")
genFiles("Interface_NodeOfGeneralLib")
genFiles("Interface_NodeOfReaderLib")
genFiles("Interface_ParamList")
genFiles("Interface_ParamSet")
genFiles("Interface_ParamType")
pp("interface_paramtype.nim",
  replaceAll = @[
    ("InterfaceParamMisc", "interfaceParamMisc"),
    ("InterfaceParamInteger", "interfaceParamInteger"),
    ("InterfaceParamReal", "interfaceParamReal"),
    ("InterfaceParamIdent", "interfaceParamIdent"),
    ("InterfaceParamVoid",  "interfaceParamVoid"),
    ("InterfaceParamText", "interfaceParamText"),
    ("InterfaceParamEnum",  "interfaceParamEnum"),
    ("InterfaceParamLogical", "interfaceParamLogical"),
    ("InterfaceParamSub", "interfaceParamSub"),
    ("InterfaceParamHexa", "interfaceParamHexa"),
    ("InterfaceParamBinary", "interfaceParamBinary")
    ]
)


genFiles("Interface_Protocol")
genFiles("Interface_ReaderLib")
genFiles("Interface_ReaderModule")
genFiles("Interface_ReportEntity")
genFiles("Interface_SequenceOfCheck")
genFiles("Interface_ShareFlags")
genFiles("Interface_ShareTool")
genFiles("Interface_SignLabel")
pp("interface_signlabel.nim",
  replaceAll = @[("of MoniToolSignText", "of RootObj")]
)
genFiles("Interface_SignType")
pp("interface_signtype.nim",
  replaceAll = @[("of MoniToolSignText", "of RootObj")],
  commentRange = @[(63,64)]
)
genFiles("Interface_STAT")
genFiles("Interface_Static")
genFiles("Interface_StaticSatisfies")
genFiles("Interface_Statics",
  comment = @[(64, 92)]
)
genFiles("Interface_Translates",
  comment = @[(48, 83)]
)
genFiles("Interface_TypedValue")
pp("interface_typedvalue.nim",
  replaceAll = @[("of MoniToolTypedValue", "of RootObj")],
  commentRange = @[(126,129)]
)
genFiles("Interface_UndefinedContent")
genFiles("Interface_ValueInterpret")
genFiles("Interface_ValueSatisfies")
genFiles("Interface_VectorOfFileParameter")
genFiles("Interface_Version",
  comment = @[(14, 18)]
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