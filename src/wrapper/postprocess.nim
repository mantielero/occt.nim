import std/[os, strutils, strformat, sequtils, parseutils, tables, sets]
import system/io
# Once we have the headers, we will modify them


# ----------------------------------------------------
# 1. Create a file holding all the types in the folder
# ----------------------------------------------------

# Utilities
proc countPrefixSpaces*(line:string):int =
  result = 0
  for i in line:
    if i == ' ':
      result += 1
    else:
      break

type
  TypObj = object
    txt:seq[string]     # Contains the types data
    push:seq[string]    # Contains the push pragmas applicable at those types

# Leer las definiciones `type` en los ficheros
proc getTypeBlock*(fname:string):tuple[typs:seq[TypObj], txt:string] =
  var typs:seq[TypObj]
  var typ:TypObj
  var push:seq[string]
  var newFile:string
  var isType = false
  var currentIndent = 0  
  var indent = 0         # Tracks de indent used for the type block

  var txt = fname.readFile()
  var lines = txt.splitLines()
  for line in lines:
    if line.strip == "":  # Línea vacía
      newFile &= line & "\n"
    else:
      currentIndent = line.skipWhile({' '}) #line.countPrefixSpaces
      # Stop being a `type`
      if currentIndent <= indent and line.strip[0] != '#':
      #if line.len > currentIndent:
        isType = false
        if typ.txt != @[]:
          typs &= typ
        typ.txt = @[]
        typ.push = @[]

      # Let's start      

      if line.strip.startsWith("{.push"):
        push &= line
      if line.strip.startsWith("{.pop"):
        push.delete(push.high)
      #echo push    

      # Let's check if we are within a type block
      if line == "type": # We only consider `type` in first column
        isType = true
        indent = currentIndent 
        typ.push = push

      # We handle the information depending on if we are within a type block or not.
      if isType:
        typ.txt &= line
      else:
        newFile &= line & "\n"
    
    # 

  return (typs, newFile)

proc createTypesFile*(pattern:string) =
  var dirs = toSeq( walkDirs(pattern) )
  for d in dirs:
    var txt = ""
    var tmp = d.split('/')
    var prefix = tmp[tmp.high]
  #for fname in walkFiles("./tk*/*/*.nim"): 

    for fname in walkFiles(fmt"{d}/{prefix}*.nim"):
      #if fname != fmt"./{prefix}types.nim":
        var (typs, newFile) = getTypeBlock(fname)     
        for typ in typs:
          for p in typ.push:
            txt &= p & "\n"
          for line in typ.txt:
            txt &= line & "\n"
          for p in typ.push:
            txt &= "{.pop.}\n"

        if typs.len > 0:  # Si el fichero no contiene tipos, no tenemos que hacer nada con él
          # Backup the existing file if we modify it
          fname.copyFile(fname & ".backup")  # Backup old files

          # Create the new file content
          newFile = fmt"import {prefix}_types" & "\n\n" & newFile
          #for line in typ.newFile:
          #  newFile &= line & "\n"
          #echo newFile


          fname.writeFile(newFile) 
    #echo txt   
    fmt"{d}/{prefix}_types.nim".writeFile(txt)

# ---------------
# 2. Rename types
# ---------------
proc renameTypes*(replaceTypes:seq[tuple[a,b:string]]) =
  #var txt = ""
  #for fname in walkFiles(fmt"./{prefix}*.nim"):
  for fname in walkFiles("./tk*/*/*.nim"): 
    var txt = fname.readFile()
    for (a,b) in replaceTypes:
      txt = txt.replace(" " & a & ",", " " & b & ",")
      txt = txt.replace(" " & a & ";", " " & b & ";")
      txt = txt.replace(" " & a & ")", " " & b & ")")      
      txt = txt.replace(": " & a & " {", ": " & b & " {")  
      txt = txt.replace(" " & a & "* {", " " & b & "* {") 
      txt = txt.replace("= " & a & "\n", "= " & b & "\n")
      txt = txt.replace(": var " & a & " {", ": var " & b & " {")  
      txt = txt.replace(": ptr " & a & " {", ": ptr " & b & " {")       
      txt = txt.replace("[" & a & "]", "[" & b & "]")
      txt = txt.replace("of " & a & " ", "of " & b & " ")
      txt = txt.replace("of " & a & "\n", "of " & b & "\n")
      txt = txt.replace(" " & a & "]", " " & b & "]")
      txt = txt.replace(": " & a & " ", ": " & b & " ")  

    fname.writeFile(txt)

# ---------------
# 2. Rename procs
# ---------------
proc renameProcs*(replaceProcs:seq[tuple[a,b:string]]) =
  #var txt = ""
  for fname in walkFiles("./tk*/*/*.nim"): 
  #for fname in walkFiles(fmt"./{prefix}*.nim"):
    var txt = fname.readFile()
    for (a,b) in replaceProcs:
      txt = txt.replace("proc " & a & "*(", "proc " & b & "*(")
      txt = txt.replace("converter " & a & "*(", "converter " & b & "*(")     
      txt = txt.replace("= " & a & "(", "= " & b & "(") 

    fname.writeFile(txt)

# ................................
# 4. Replace includes with imports
# --------------------------------
proc convertIncludesToImports*(fname:string) = #replaceProcs:seq[tuple[a,b:string]]) =    
  var txt = fname.readFile()
  var lines = txt.splitLines()
  var newlines:seq[string]
  var includes:seq[string]
  for line in lines:  
    if line.strip.startsWith("include "):
      var tmp = line.strip.split("include ")[1].replace(".", "/")
      var tmp2 = tmp.split('/')
      includes &= tmp2[tmp2.high]
      newlines &= line.replace("include ", "import ")
    else:
      newlines &= line
  # We only modify the file if it contains some "include" statement
  if includes.len > 0:
    newlines &= "export"
    for incl in includes:
      newlines[newlines.high] &= " " & incl & ","
    var tmp = newlines[newlines.high] 
    newlines[newlines.high] = tmp[(tmp.low) .. (tmp.high-1)]
    var newtxt = ""
    for line in newlines:
      newtxt &= line & "\n"
  
    fname.writeFile(newtxt)


proc convertIncludesToImports*() = #replaceProcs:seq[tuple[a,b:string]]) =
  for fname in walkFiles("./tk*/*/*.nim"): 
    convertIncludesToImports(fname)
  for fname in walkFiles("./tk*/*.nim"): 
    convertIncludesToImports(fname)    


# ------------------------------------------------
# 5. Convert discarded lines into something useful
# ------------------------------------------------


#
# 7. Reorder *_types.nim content
#
type
  TypOb = object
    lines:seq[string]
    name:string
    depend:string  # Should be a seq
    needs:seq[string]

proc getLinesPairs(lines:seq[string]):seq[tuple[a,b:int]] =
  var lineNumbers:seq[int]
  for i in 0..lines.high:
    var line = lines[i]
    if line == "type":
      lineNumbers &= i

  # Split each type
  var pairs:seq[tuple[a,b:int]]
  for i in 0..lineNumbers.high-1:  
    pairs &= (lineNumbers[i], (lineNumbers[i+1] - 1))    

  if pairs == @[]:
    pairs &= (lines.low, lines.high)
  else:
    pairs &= (pairs[pairs.high].b, lines.high)

  return pairs

proc likelyImports():Table[string,string] =
  for i in walkDirs("./tk*/*"):
    var tmp = i.split('/')
    var name = tmp[tmp.high]
    result[name] = i[2..i.high] & fmt"/{name}_types"
    #result &= (name, )

proc getTypeName(data:var string; line:string) =
  # Get type name
  var ident = line.skipWhile({' '})
  if ident == 2:
    var typName:string
    discard line.parseUntil(typName, '*')
    typName = typName.strip
    data = typName    

proc reorderContent(fname:string) =
  var paths = likelyImports()
  var typs:seq[TypOb] = @[]
  var txt = fname.readFile()
  var lines = txt.splitLines()


  var pairs = getLinesPairs( lines )

  for (a,b) in pairs:
    var tmp:TypOb
    for n in a .. b:
      var line = lines[n]
      tmp.lines &= lines[n]

      # Get type name
      getTypeName(tmp.name, line)

      # Get dependency
      if line.contains("= object of "):
        var items  = line.split("= object of ")
        var depend = items[1].split()[0]

        if depend.contains('['):
          depend = depend.split('[')[0]
        tmp.depend = depend
      
      elif line.contains("= enum\n"):  # FIXME
        discard

      elif line.contains('='):
        var tmp1 = line.split('=')[1]
        if tmp1.contains('['):
          #tmp1 = tmp1.split('[')[1]
          #tmp1 = tmp1.split(']')[0]
          tmp.depend = tmp1

    typs &= tmp


  # ----------------------------------------------Reorder
  var neworder:seq[int]
  # 1. We include those that don't depend on anything
  var items:seq[int] #= toSeq(0..typs.high)
  for i in 0..typs.high:
    if typs[i].depend == "" or typs[i].depend == "RootObj":
      neworder &= i
    else:
      items &= i

  # 2. Include those dependences that are outside of the this package
  var requiredImports:HashSet[string]
  var remove:seq[int]
  for i in items:
    var dependency = toLower(typs[i].depend).strip    
    if not dependency.startsWith("message") and not dependency.startsWith("handle["): # FIXME
      echo ">> ", dependency
      for k in paths.keys:
        if dependency.startsWith(k):
          requiredImports.incl(k)
          remove &= i

  for i in remove:
    items.delete(items.find(i))
    neworder &= i  

  echo requiredImports

  echo "===="

  # 3. 

  var nItems = typs.len

  while items.len > 0:
    var remove:seq[int]

    for i in items:
      # Take the depend, because that should go first
      var depend = typs[i].depend

      if depend.contains('['):
        var tmp1 = depend.split('[')
        if tmp1[0].strip == "Handle":
           requiredImports.incl("standard")
        depend = tmp1[1][0..(tmp1[1].high - 1)]

      # Remove from the list when the dependency is covered
      for n in neworder:
        if typs[n].name == depend:
          remove &= i
          break

    for i in remove:
      items.delete(items.find(i))
      neworder &= i
    if items.len == nItems:
      for i in items:
        #echo typs[i].name, " ", typs[i].depend      
        if typs[i].depend != "":
          echo toLower(typs[i].depend)
      break
      # Stuck with some external dependency
      #for i in items:
      #  echo typs[i].name, " ", typs[i].depend
    else:
      nItems = items.len
  echo requiredImports

  # Create needed imports
  var depends:seq[string]
  for i in items:
    depends &= typs[i].depend

  var provides:seq[string]
  for i in neworder:
    provides &= typs[i].name

  #-----------------------------------
  # Create the new file
  var newtxt = ""
  newtxt &= "# PROVIDES: " 
  for i in provides:
    newtxt &= i & " "


  newtxt = newtxt.strip  
  newtxt &= "\n# DEPENDS: " 
  for i in depends:
    newtxt &= i & " "
  newtxt = newtxt.strip
  newtxt &= "\n\n"
  #echo flagHandle
  #if flagHandle:
  #  newtxt &= "import tkernel/standard/standard_types\n"
  for i in requiredImports:
    echo paths[i]
  #  for name in paths:
  #    if i == name:
  #      echo paths[i]
  
  for i in neworder:
    for line in typs[i].lines:
      newtxt &= line & "\n"
    newtxt &= "\n"

  for i in items:   
    for line in typs[i].lines:  
      newtxt &= line & "\n"       

    newtxt &= "\n"

  #for typ in typs:
  #  echo typ.name, " ", typ.depend
  fname.writeFile(newtxt)

#
# 8. Add import statements: *_types.nim content
#
proc addImportsToTypes(pattern:string = "tkernel/standard/*_types.nim") =
  var providedBy = initTable[string,string]()
  var needed = initTable[string,seq[string]]()

  for fname in walkFiles(pattern):
    var txt = fname.readFile()
    var lines = txt.splitLines()
    
    # Get what provides
    var provides:seq[string]
    if lines[0].startsWith("# PROVIDES: "):
      provides = lines[0].split("# PROVIDES: ")[1].split()
    for typ in provides:
      providedBy[typ] = fname

    # Get what needs
    var needs:seq[string]
    if lines[1].startsWith("# DEPENDS: "):
      needs = lines[1].split("# DEPENDS: ")[1].split()

    needed[fname] = needs
    #echo needs

  for fname in needed.keys:
    echo fname
    var reqs:seq[string]
    echo fname
    var imports:seq[string]
    for f in needed[fname]:
      if f in providedBy:
        var tmp = providedBy[f][2 .. (providedBy[f].high - 4)]
        imports &= tmp
        #echo imports
      elif f == "RootObj##":
        discard
      else:
        echo "   - not found: " & f




#
# 9. Check includes contains the _types files
#
proc correctIncludes(pattern:string) =
  var txt = ""

  var dirs = toSeq( walkDirs(pattern) )
  for d in dirs:
    var tmp = d.split('/')
    var prefix = tmp[tmp.high]

  #for fname in walkFiles("./tk*/*/*.nim"): 
    var fname = fmt"{d}/{prefix}_includes.nim"
    if fname.fileExists:
      txt = fname.readFile()
      
      if not txt.contains(fmt"{prefix}_types"):
        txt &= fmt"import {prefix}_types" & "\n" & fmt"export {prefix}_types" & "\n"
      fname.writeFile(txt)
      

# -----------------------
# 10. Append to beginning
# -----------------------
proc appendBeg*(fname, append:string) =
  var content = fname.readFile
  if not content.startsWith(append):
    var tmp = append & "\n" & content
    fname.writeFile( tmp )

#===================================================
#===================================================

# 1. Create types with files

#"./tkmath/gp"
#createTypesFile("./tk*/*")
#createTypesFile("./tkernel/standard")

#reorderContent("./tkernel/standard/standard_types.nim")
reorderContent("./tkernel/message/message_types.nim")

#for fname in walkFiles("./tk*/*/*_types.nim"):
#  reorderContent(fname)

#addImportsToTypes("./tk*/*/*_types.nim")
#correctIncludes("./tk*/*")

# 2. Rename types
# thmath/gp
var replaceTypes: seq[tuple[a,b:string]]
var tmp = @["Ax1", "Ax2", "Ax2d", "Ax3", "Ax22d", "Circ", "Circ2d", "Cone", "Cylinder",
  "Dir", "Dir2d", "Elips", "Elips2d", "EulerSequence", "Gtrfs", "Gtrsf2d", "Hypr", "Hypr2d",
  "Lin", "Lin2d", "Mat", "Mat2d", "Parab", "Parab2d", "Pln", "Pnt", "Pnt2d", "Quaternion",
  "QuaternionSlerp", "Sphere", "Torus", "Trsf", "Trsf2d", "TrsfForm", "Vec", "Vec2d",
  "VectorWithNullmag", "Xy", "Xyz" ]

#for i in tmp:
#  replaceTypes &= (i,  i & "Obj")  




#renameTypes(replaceTypes)

# 3. Rename procs
var replaceProcs: seq[tuple[a,b:string]]
#for i in tmp:
#  replaceProcs &= ("new" & i, i.toLowerAscii)


#renameProcs(replaceProcs)


# ......
# 10. Other mods
#------

#"tkmath/gp/gp_types.nim".appendBeg("import tkernel/standard/[standard_handle]")



#convertIncludesToImports()


# TODO: reorder types "object of ..."

