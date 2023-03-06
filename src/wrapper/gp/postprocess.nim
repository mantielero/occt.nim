import std/[os, strutils, strformat]
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

  var txt = fname.readFile()
  var lines = txt.splitLines()
  var isType = false
  var indent = 0
  for line in lines:
    var currentIndent = line.countPrefixSpaces
    if line.strip.startsWith("{.push"):
      push &= line
    if line.strip.startsWith("{.pop"):
      push.delete(push.high)
    #echo push    

    # Añadimos el módulo type
    if line.strip == "type":
      isType = true
      #var tmp = line.split("type")
      indent = currentIndent 
      typ.push = push
    if isType:
      typ.txt &= line
    else:
      newFile &= line & "\n"
    #echo indent, " - ", currentIndent, " - ", (currentIndent < indent), ": ", line     
    if currentIndent <= indent and line.strip != "type":
      isType = false
      if typ.txt != @[]:
        typs &= typ
      typ.txt = @[]
      typ.push = @[]
  return (typs, newFile)

proc createTypesFile*(prefix:string) =
  var txt = ""
  for fname in walkFiles(fmt"./{prefix}*.nim"):
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
        newFile = fmt"import {prefix}types" & "\n\n" & newFile
        #for line in typ.newFile:
        #  newFile &= line & "\n"
        #echo newFile
        fname.writeFile(newFile) 
      
  fmt"{prefix}types.nim".writeFile(txt)

# ---------------
# 2. Rename types
# ---------------
proc renameTypes*(prefix:string;replaceTypes:seq[tuple[a,b:string]]) =
  #var txt = ""
  for fname in walkFiles(fmt"./{prefix}*.nim"):
    var txt = fname.readFile()
    for (a,b) in replaceTypes:
      txt = txt.replace(" " & a & ",", " " & b & ",")
      txt = txt.replace(" " & a & ";", " " & b & ";")
      txt = txt.replace(" " & a & ")", " " & b & ")")      
      txt = txt.replace(": " & a & " {", ": " & b & " {")  
      txt = txt.replace(" " & a & "* {", " " & b & "* {")       
    
    fname.writeFile(txt)

# ---------------
# 2. Rename procs
# ---------------
proc renameProcs*(prefix:string; replaceProcs:seq[tuple[a,b:string]]) =
  #var txt = ""
  for fname in walkFiles(fmt"./{prefix}*.nim"):
    var txt = fname.readFile()
    for (a,b) in replaceProcs:
      txt = txt.replace("proc " & a & "*(", "proc " & b & "*(")
      txt = txt.replace("converter " & a & "*(", "converter " & b & "*(")     
    
    fname.writeFile(txt)

#===================================================
#===================================================

# 1. 
#createTypesFile("gp_")


# 2. Rename types
# thmath/gp
var replaceTypes: seq[tuple[a,b:string]]
var tmp = @["Ax1", "Ax2", "Ax2d", "Ax3", "Ax22d", "Circ", "Circ2d", "Cone", "Cylinder",
  "Dir", "Dir2d", "Elips", "Elips2d", "EulerSequence", "Gtrfs", "Gtrsf2d", "Hypr", "Hypr2d",
  "Lin", "Lin2d", "Mat", "Mat2d", "Parab", "Parab2d", "Pln", "Pnt", "Pnt2d", "Quaternion",
  "QuaternionSlerp", "Sphere", "Torus", "Trsf", "Trsf2d", "TrsfForm", "Vec", "Vec2d",
  "VectorWithNullmag", "Xy", "Xyz" ]
for i in tmp:
  replaceTypes &= (i,  i & "Obj")  




renameTypes("gp_", replaceTypes)

# 3. Rename procs
var replaceProcs: seq[tuple[a,b:string]]
for i in tmp:
  replaceProcs &= ("new" & i, i.toLowerAscii)


renameProcs("gp_", replaceProcs)


# ......
# 10. Other mods
#------
#var txt = "tkmath/gp/gp_types.nim".readFile
