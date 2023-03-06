#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "ifselect"
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

# ls /usr/include/opencascade/IFSelect*.hxx | cut -c 26-

genFiles("IFSelect_ActFunc")
genFiles("IFSelect_Act")
genFiles("IFSelect_Activator")
genFiles("IFSelect_AppliedModifiers")
genFiles("IFSelect_BasicDumper")
genFiles("IFSelect_CheckCounter")
pp("ifselect_checkcounter.nim",
  commentRange = @[(44,47)]
)
genFiles("IFSelect_ContextModif")
genFiles("IFSelect_ContextWrite")
genFiles("IFSelect_Dispatch")
genFiles("IFSelect_DispGlobal")
genFiles("IFSelect_DispPerCount")
genFiles("IFSelect_DispPerFiles")
genFiles("IFSelect_DispPerOne")
genFiles("IFSelect_DispPerSignature")
genFiles("IFSelect_EditForm")
genFiles("IFSelect_Editor")
genFiles("IFSelect_EditValue")
pp("ifselect_editvalue.nim",
  replaceAll = @[
    ("IFSelectOptional", "iFSelectOptional"),
    ("IFSelectEditable", "iFSelectEditable"),
    ("IFSelectEditProtected", "iFSelectEditProtected"),
    ("IFSelectEditComputed",  "iFSelectEditComputed"),
    ("IFSelectEditRead",  "iFSelectEditRead"),
    ("IFSelectEditDynamic", "iFSelectEditDynamic")
    ]
)
genFiles("IFSelect_Functions")
pp("ifselect_functions.nim",
  replaceAll = @[("init*", "initIFSelectFunctions*")]
)
genFiles("IFSelect_GeneralModifier")
genFiles("IFSelect_GraphCounter")
genFiles("IFSelect_HSeqOfSelection")
genFiles("IFSelect")
genFiles("IFSelect_IntParam")
genFiles("IFSelect_ListEditor")
genFiles("IFSelect_ModelCopier")
genFiles("IFSelect_ModifEditForm")
genFiles("IFSelect_Modifier")
genFiles("IFSelect_ModifReorder")
genFiles("IFSelect_PacketList")
genFiles("IFSelect_ParamEditor")
genFiles("IFSelect_PrintCount")
pp("ifselect_printcount.nim",
  replaceAll = @[
    ("IFSelectItemsByEntity", "iFSelectItemsByEntity"),
    ("IFSelectCountByItem", "iFSelectCountByItem"),
    ("IFSelectShortByItem", "iFSelectShortByItem"),
    ("IFSelectListByItem", "iFSelectListByItem"),
    ("IFSelectEntitiesByItem", "iFSelectEntitiesByItem"),
    ("IFSelectCountSummary", "iFSelectCountSummary"),
    ("IFSelectGeneralInfo", "iFSelectGeneralInfo"),
    ("IFSelectMapping", "iFSelectMapping"),
    ("IFSelectResultCount", "iFSelectResultCount")
  ]
)

genFiles("IFSelect_PrintFail")
genFiles("IFSelect_RemainMode")
genFiles("IFSelect_ReturnStatus")
genFiles("IFSelect_SelectAnyList")
genFiles("IFSelect_SelectAnyType")
genFiles("IFSelect_SelectBase")
genFiles("IFSelect_SelectCombine")
genFiles("IFSelect_SelectControl")
genFiles("IFSelect_SelectDeduct")
genFiles("IFSelect_SelectDiff")
genFiles("IFSelect_SelectEntityNumber")
genFiles("IFSelect_SelectErrorEntities")
genFiles("IFSelect_SelectExplore")
genFiles("IFSelect_SelectExtract")
genFiles("IFSelect_SelectFlag")
genFiles("IFSelect_SelectIncorrectEntities")
genFiles("IFSelect_SelectInList")
genFiles("IFSelect_SelectIntersection")
genFiles("IFSelect_Selection")
genFiles("IFSelect_SelectionIterator")
genFiles("IFSelect_SelectModelEntities")
genFiles("IFSelect_SelectModelRoots")
genFiles("IFSelect_SelectPointed")
genFiles("IFSelect_SelectRange")
genFiles("IFSelect_SelectRootComps")
genFiles("IFSelect_SelectRoots")
genFiles("IFSelect_SelectSent")
genFiles("IFSelect_SelectShared")
genFiles("IFSelect_SelectSharing")
genFiles("IFSelect_SelectSignature")
genFiles("IFSelect_SelectSignedShared")
genFiles("IFSelect_SelectSignedSharing")
genFiles("IFSelect_SelectSuite")
genFiles("IFSelect_SelectType")
genFiles("IFSelect_SelectUnion")
genFiles("IFSelect_SelectUnknownEntities")
genFiles("IFSelect_SequenceOfAppliedModifiers")
genFiles("IFSelect_SequenceOfGeneralModifier")
genFiles("IFSelect_SequenceOfInterfaceModel")
genFiles("IFSelect_SessionDumper")
genFiles("IFSelect_SessionFile")
pp("ifselect_sessionfile.nim",
  replaceAll = @[("cchar = 0", "cchar = cast[cchar](0)")]
)
genFiles("IFSelect_SessionPilot")
genFiles("IFSelect_ShareOut")
genFiles("IFSelect_ShareOutResult")
genFiles("IFSelect_SignAncestor")
genFiles("IFSelect_Signature")
genFiles("IFSelect_SignatureList")
pp("ifselect_signaturelist.nim",
  commentRange = @[(70, 73)]
)
genFiles("IFSelect_SignCategory")
genFiles("IFSelect_SignCounter")
genFiles("IFSelect_SignMultiple")
genFiles("IFSelect_SignType")
genFiles("IFSelect_SignValidity")
genFiles("IFSelect_Transformer")
genFiles("IFSelect_TransformStandard")
genFiles("IFSelect_TSeqOfDispatch")
genFiles("IFSelect_TSeqOfSelection")
genFiles("IFSelect_WorkLibrary")
pp("ifselect_worklibrary.nim",
  commentRange = @[(132, 136)]
)
genFiles("IFSelect_WorkSession")
pp("ifselect_worksession.nim",
  commentRange = @[(123, 125)]
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