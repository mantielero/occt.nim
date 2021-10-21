#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "message"
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

# ls /usr/include/opencascade/Message*.hxx | cut -c 26-
# type
#    MessageTrace, MessageInfo, MessageWarning, MessageAlarm, MessageFail
genFiles("Message_AlertExtended")
genFiles("Message_Alert")
genFiles("Message_Algorithm")
pp("message_algorithm.nim",
  replaceAll = @[("messageWarning", "2.MessageGravity")]
)
genFiles("Message_Attribute")
pp("message_attribute.nim",
  replaceAll = @[("tCollectionAsciiString", "TCollectionAsciiString")]
)

genFiles("Message_AttributeMeter")
pp("message_attributemeter.nim",
  replaceAll = @[("tCollectionAsciiString", "TCollectionAsciiString")]
)
genFiles("Message_AttributeObject")
pp("message_attributeobject.nim",
  replaceAll = @[("tCollectionAsciiString", "TCollectionAsciiString")]
)
genFiles("Message_AttributeStream")
pp("message_attributestream.nim",
  replaceAll = @[("tCollectionAsciiString", "TCollectionAsciiString")]
)
genFiles("Message_CompositeAlerts")
genFiles("Message_ConsoleColor")
genFiles("Message_ExecStatus")
genFiles("Message_Gravity")
genFiles("Message_HArrayOfMsg")
genFiles("Message")
genFiles("Message_Level", comment = @[(77,78)])
pp("message_level.nim",
  replaceAll = @[("tCollectionAsciiString", "TCollectionAsciiString")]
)
genFiles("Message_ListIteratorOfListOfMsg")
genFiles("Message_ListOfAlert")
genFiles("Message_ListOfMsg")
pp("message_listofmsg.nim",
  replaceAll = @[("""MessageListIteratorOfListOfMsg* = Iterator[MessageMsg]""", """MessageListIteratorOfListOfMsg* {.importcpp:"NCollection_List<\'*0>::Iterator", header: "Message_Messenger.hxx".} = object""")]
)
genFiles("Message_Messenger")
pp("message_messenger.nim",
  replaceAll = @[("messageWarning", "2.MessageGravity")]
)

genFiles("Message_MetricType")
genFiles("Message_MsgFile")
genFiles("Message_Msg")
genFiles("Message_Printer")
genFiles("Message_PrinterOStream")
pp("message_printerostream.nim",
  replaceAll = @[("messageInfo", "1.MessageGravity")]
)

genFiles("Message_PrinterSystemLog")
pp("message_printersystemlog.nim",
  replaceAll = @[("messageInfo", "1.MessageGravity")]
)

genFiles("Message_PrinterToReport")
genFiles("Message_ProgressIndicator")
genFiles("Message_ProgressRange")
pp("message_progressrange.nim",
  commentRange = @[(48,49), (55,56), (62,63)]
)

genFiles("Message_ProgressScope",
  comment = @[(431,444), (449,467), (473,491), (497,514)]
)
genFiles("Message_ProgressSentry")
genFiles("Message_Report")
genFiles("Message_SequenceOfPrinters")
genFiles("Message_Status")
pp("message_status.nim",
  replaceAll = @[("messageDONE", "256"),
                 ("messageWARN", "512"),
                 ("messageALARM", "1024"),
                 ("messageFAIL", "2048")
  ]
)

genFiles("Message_StatusType")
pp("message_statustype.nim",
  replaceAll = @[("MessageDONE", "mstDONE"),
                 ("MessageWARN", "mstWARN"),
                 ("MessageALARM", "mstALARM"),
                 ("MessageFAIL", "mstFAIL")
  ]
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