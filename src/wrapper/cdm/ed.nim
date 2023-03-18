#!/usr/bin/env nim
#import  algorithm
import std/[logging, strutils, osproc, os, strformat,sequtils, parseutils]
import npeg

var logger = newConsoleLogger()

type
  Header* = object
    fname*: string
    txt*: string
    c2nimFile*:string
  
  Binding* = object
    fname*: string
    txt*: string
    ignore*: bool


#[ let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

""" ]#

# let parser = peg("typeId", id:string):
#   idName <- +Alpha * *(+Alnum | {'_'})
#   sep    <- *(Space | {'\n'})
#   typeId <- *Space * >+idName * *{'*'} * sep * {'='} * sep * "object":
#     id = $1


# var prueba = """   hola*    = 
#     object
# """ 

# proc copyToCurrentFolder*( infile,lib:string) =
#   var (dir, name, ext) = splitFile(infile)
#   if dir == "":
#     dir = lib
#   if ext == "":
#     ext = ".hxx"
#   #cpFile(dir & name & ext, name & ".hxx")
#   copyFile(dir & name & ext, name & ".hxx")

proc genBindings*(name, c2nimFile:string; clean:bool = true): int =
  var tmp = name.rsplit('.', 1)[0]
  #echo tmp
  var nameWithoutExt = tmp.rsplit('/', 1)[0].toLower
  #exec &"c2nim --cpp --header --strict --nep1 --out:{name.toLower}.nim {c2nimFile} {name}.hxx"
  let cmd = &"c2nim --cpp --header --strict --nep1 --out:{nameWithoutExt}.nim {c2nimFile} {name}"
  logger.log(lvlInfo, "executing: ", cmd)
  var r =  execCmd( cmd )
  logger.log(lvlInfo, "result: ", r)

  #let txt = readFile(name.toLower & ".nim")
  #writeFile(name.toLower & ".nim", txt ) #beg & txt)
  if clean and r == 0:
    removeFile( name )
  #rmFile(name & ".hxx")
  return r

proc `in`(n:int; limits:tuple[a,b:int]):bool =
  var (a,b) = limits
  if n >= a and n <= b:
    true
  else:
    false
  

proc commentClass*(header:var Header) =
  ## comments lines starting with `@class`.
  var tmp = ""
  for line in header.txt.splitLines:
    if line.strip.startsWith("@class "):
      tmp &= "// " & line & "\n"
    else:
      tmp &= line & "\n"
  header.txt = tmp

proc comment*(txt:var string; a,b:int; symbol:string = "#") =
  var n = 1
  var tmp = ""
  for line in txt.splitLines:
    if n in (a,b):
      tmp &= &"{symbol} {line}\n"
    else:
      tmp &= &"{line}\n"
    n += 1
  txt = tmp

proc insert*(this:var string; txt:string; n:int = 0) =
  # Split the newtext in lines
  var tmpLines = txt.splitLines

  var tmp = ""
  var lines = this.splitLines.toSeq
  if n < 1:
    lines = tmpLines & lines
  elif n > lines.len:
    lines &= tmpLines 
  else:
    lines = lines[0 ..< n-1] & tmpLines & lines[n-1 .. lines.high]

  for line in lines: 
    tmp &= line & "\n"
    
  this = tmp


proc makeRootObj*(this:var string; typ:string ) =
  discard


# PARSING NIM
iterator getIndentStructure*(this:string):tuple[nLine,nSpaces:int] =
  var n = 0
  for line in this.splitLines:
    var spaces:string
    var nSpaces =  line.parseWhile( spaces, {' '})
    yield (n,nSpaces.int) #.len)
    n += 1

iterator getBlocks*(this:string):tuple[a,b:int] =
  var lines = this.splitLines
  var oldIndent, oldLine:int
  for (n,s) in this.getIndentStructure:
    if n == 0:
      oldIndent = s
      oldLine = n
    elif s == oldIndent and lines[n].strip != "":
      yield (oldLine,n)
      oldLine = n
      oldIndent = s
  yield (oldLine, this.splitLines.high )

iterator getTypes*(this:string):tuple[a,b:int] =
  var lines = this.splitLines
  for (a,b) in this.getBlocks:
    if lines[a].strip.startsWith("type"):
      if lines[a].strip == "type":
        #for nLine in a ..< b:
        yield (a,b)
          #echo nLine, " ", lines[nLine]

iterator getTypesNames*(this:string): tuple[name:string; a,b:int] =
  ## get types name with the lines it takes
  var lines = this.splitLines
  var indents = this.getIndentStructure.toSeq
  for (a,b) in this.getTypes:
    # Calculate the indent used for the type's names
    var minIndent:int = indents[a].nSpaces
    var tmpIndents:seq[int]
    for i in a ..< b:
      #echo indents[i].nSpaces
      var ind = indents[i].nSpaces
      if ind > minIndent:
        tmpIndents &= ind
    var typeIndent = tmpIndents[tmpIndents.minIndex]
    
    var pairs:seq[tuple[name:string; n:int]]
    for i in a ..< b:
      if indents[i].nSpaces == typeIndent:
        var name = lines[i].strip.split('=')[0].split('*')[0]
        pairs &= (name, i)

    for i in 0 .. pairs.high - 1:
      yield (pairs[i].name, pairs[i].n, pairs[i+1].n - 1)
    var n = pairs.high
    yield (pairs[n].name, pairs[n].n, b - 1)
    

proc setRootObj*(this:var Binding; name:string) =
  var lines = this.txt.splitLines
  var txt = ""
  #for n in 0 .. lines.high:
  #var (a,b)  
  for (typ, a, b) in this.txt.getTypesNames:
    if typ == name:
      for i in 0 .. lines.high:
        var line = lines[i]
        if i < a or i > b:
          txt &= line & "\n"
        else:
          txt &= line.replace("= object", "object of RootObj") & "\n"
  this.txt = txt


#iterator getTypeBlocks*

    #if line.strip == "type":
    #  var indent = line.split("type")[0].len
    #  #yield n

# proc genFiles*( infile:string;
#                remove:seq[tuple[a,b:int]] = @[]; 
#                comment:seq[tuple[a,b:int]] = @[]; 
#                addSemiColon:seq[int] = @[];
#                replaceAll:seq[tuple[sub,by:string]] = @[];
#                removeFuncBody:seq[tuple[a,b:int]] = @[]) =
#     #copyToCurrentFolder(infile)

#     var rem:seq[tuple[a,b:int]] = remove
#     var semiColon = addSemiColon
#     if removeFuncBody.len > 0:
#       for item in removeFuncBody:
#         rem &= item
#         semiColon &= item.a - 1
#     #echo semiColon
#     # Replace text strings
#     if replaceAll.len > 0:    
#       for item in replaceAll:
#         var txt = readFile(name & ".hxx")        
#         txt = txt.replace(item.sub, item.by)
#         writeFile(name & ".hxx", txt)


#     # Colons to add at the end of line
#     if semiColon.len > 0:
#         for line in semiColon:
#             var edit = "'" & $line & " s/$/;/i'"
#             edit = "sed -e " & edit & " -i " & name & ".hxx"
#             exec edit

#     # Lines to remove from the header
#     if rem.len > 0:
#         var edit = ""
#         var n = 0
#         for item in rem:
#             edit &= $item.a & "," & $item.b & "d"
#             n += 1
#             if n != rem.len:
#                 edit &= ";"
#         exec "sed -e '" & edit & "' -i " & name & ".hxx"

#     # Comment lines
#     if comment.len > 0:
#       var txt = readFile(name & ".hxx") 
#       var lines = txt.splitLines()
#       for rng in comment:
#         for i in (rng.a - 1) .. (rng.b - 1):
#           lines[i] = "// " & lines[i]
#       writeFile(name & ".hxx", lines.join("\n"))
        
#     # Search and comment





#[ proc pp*(file:string,
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
 ]#


#beggining &= "{.experimental: \"codeReordering\".}\n\n"
#[ beggining &= """
when defined(windows):
  const tkmath* = "TKMath.dll"
elif defined(macosx):
  const tkmath* = "libTKMath.dylib"
else:
  const tkmath* = "libTKMath.so" 


""" ]#

#======================


proc getExtension*(this:Header): string =
  this.fname.rsplit('.',1)[1]

proc getFolder*(this:Header): string =
  this.fname.rsplit('/',1)[0]

proc getNameExt*(this:Header): string =
  result = this.fname.rsplit('/',1)[1]
  #result = result.rsplit('.',1)[0]

proc getName*(this:Header): string =
  result = this.fname.rsplit('/',1)[1]
  result = result.rsplit('.',1)[0]

proc newHeader*(folder, filename, c2nimFile:string): Header =
  result.fname = folder / filename
  result.c2nimFile = c2nimFile

  result.txt = result.fname.readFile


#------------------------
proc genBindings*(header:var Header; 
     clean:bool = true; 
     autoCommentClass: bool = true):Binding =
  copyFile(header.fname, header.getNameExt)
  if autoCommentClass:
    header.commentClass

  result.fname = header.getName.toLower & ".nim"
  result.ignore = false  
  header.getNameExt.writeFile(header.txt)
  var ok = genBindings(header.getNameExt, header.c2nimFile, clean)
  if ok == 0:
    result.txt = result.fname.readFile

proc comment*(header:var Header; a,b:int) =
  header.txt.comment(a,b, "//")

proc comment*(this:var Binding; a,b:int) =
  this.txt.comment(a,b, "#")

proc save*(this:var Binding) =
  this.fname.writeFile(this.txt)

proc insert*[T:Header|Binding](this:var T;txt:string; n:int = 0) =
  #echo ">>>> ", n
  #var tmp = this.txt
  #tmp.insert(txt, n)
  #echo tmp
  (this.txt).insert(txt, n)