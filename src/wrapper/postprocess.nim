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
      newFile &= line.strip & "\n"
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
        #if fname.contains("quantity_acceleration"):
        #  echo "--->",line
      # We handle the information depending on if we are within a type block or not.
      if isType:
        typ.txt &= line
      else:
        newFile &= line & "\n"
  if typ.txt.len > 0:
    typs &= typ  
    # 
  #if fname.contains("quantity_acceleration"):    
  #  echo typs
  return (typs, newFile)

proc createTypesFile*(pattern:string) =
  # Get subfolders
  var dirs = toSeq( walkDirs(pattern) )
  for d in dirs:
    var txt = ""
    var tmp = d.split('/')
    var prefix = tmp[tmp.high]
  #for fname in walkFiles("./tk*/*/*.nim"): 

    # Get the files within the subfolder
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
    needs:HashSet[string]

proc getLinesPairs(lines:seq[string]):seq[tuple[a,b:int]] =
  var lineNumbers:seq[int]
  for i in 0..lines.high:
    var line = lines[i]
    #if line == "type":
    #  lineNumbers &= i

    if line.len > 2:
      if line[0..1] == "  " and line[2] != ' ' and line[2] != '#' and line[0] != '#':
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
  # creates a table relating as follows: gp --> tkmath/gp/gp_types
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

proc removeComments(line:string):string =
  if line.contains('#'):  
    return line.split('#')[0].strip
  return line.strip

proc populateDependencies(typ:var TypOb) =
  var needs:HashSet[string]
  var flagFirstEqual = false
  var txt = ""
  #echo "=============="
  for n in 0..typ.lines.high:
    var line = typ.lines[n]
    #echo ">>", line    
    line = line.removeComments()
    
    if line.contains('=') and not flagFirstEqual:
      flagFirstEqual = true
      txt = line.split('=')[1]
    elif flagFirstEqual:
      txt &= line

  txt = txt.strip

  # Option 1: object of
  if txt.startsWith("object of"):
    txt = txt.split("object of")[1].strip
    needs.incl(txt)
  
  # Option 2:
  elif txt.startsWith("enum "):
    txt = txt.split("enum ")[1].strip
    #needs.incl(txt)    
    # FIXME

  # Otherwise:
  else:
    if txt.contains('['):
      var tmp = txt.split('[')
      needs.incl( tmp[0].strip )
      #if tmp[1].contains(']'):
      var tmp1 = tmp[1].rsplit(']')[0]
      if tmp1.contains(','):
        var tmp2 = tmp1.split(',')
        for val in tmp2:
          needs.incl(val.strip)
      else:
        needs.incl( tmp1.strip )
    
    else:
      needs.incl( txt.strip )
  if typ.name == "GeomAxis1Placement":
    echo txt
    echo "--> ", needs        
  var remove = toHashSet(["RootObj", "", "true", "false"])
  typ.needs = needs - remove


proc removeDocumentationComments(typs:var seq[TypOb]; i:int) =
  for n in 0..typs[i].lines.high:
    var line = typs[i].lines[n]
    if line.contains('#'):
      line = line.split('#')[0]
    typs[i].lines[n] = line


proc reorderTypes*(typs:var seq[TypOb]) = 
  # # First those not having any needs
  # var remove:seq[int]  
  # for i in 0..typs.high:
  #   if typ.needs.len == 0:
  #     result &= typ
  #     remove &= i
  # # Remove those already processed
  # for i in remove.high..0:
  #   typs.delete( i )
  # remove = @[]

  var flag = true
  var n = 0 
  while flag:
    n = n + 1
    flag = false
    block sorting:
      # Process all items
      #echo "========================================================"
      for i in 0..<typs.high:
        var typ = typs[i]
        #if typ.name == "GeomAxis1Placement":
        #  echo "NEEDS-------------", typ.needs        
        #echo typ.lines[0]
        # Comprobamos con todos los siguientes
        for k in (i+1)..typs.high:
          #echo i, " ", k
          var nextTyp = typs[k]
            
          if nextTyp.name in typ.needs: # Move after
            typs.insert(typ, k+1)
            typs.delete(i)
            flag = true
            echo "Moving:   i:",i,  " to:",k+1
            if n > 1000:
              flag = false
            break sorting
  
proc getRequiredImports(typs:seq[TypOb];paths:Table[string,string]):HashSet[string] =      
  for i in 0..typs.high:
    #typs.getDependencies(i)    
    echo "NEEDS: ", typs[i].needs

    for need in typs[i].needs:
      var tmp = need.toLower.strip
      if tmp == "handle":
        result.incl("standard")
      else:
        for k in paths.keys:
          if tmp.startsWith( k ):
            result.incl(k)


    



proc reorderContent(fname:string) =
  echo fname
  var folder = fname.split('/')[2]
  var paths = likelyImports()  # Table: gp --> tkmath/gp/gp_types, and so on
  var typs:seq[TypOb] = @[]
  var txt = fname.readFile()
  var lines = txt.splitLines()
  var pairs = getLinesPairs( lines )  # Get type definition blocks


  for (a,b) in pairs:
    var tmp:TypOb
    for n in a .. b:
      var line = lines[n]
      if line != "type":
        tmp.lines &= line

      # Get type name
      getTypeName(tmp.name, line)

      # Get dependencies
      tmp.populateDependencies()

    typs &= tmp

  for i in 0..typs.high:
    typs.removeDocumentationComments(i)
  # ----------------------------------------------Reorder
  typs.reorderTypes()

  var neworder:seq[int]
  # 1. We include those that don't depend on anything
  var items:seq[int] #= toSeq(0..typs.high)
  for i in 0..typs.high:
    if typs[i].needs.len == 0:
      neworder &= i
    else:
      items &= i

  # 2. Include those dependences that are outside of this package
  var requiredImports:HashSet[string] = getRequiredImports(typs, paths)
  echo "RequiredImports: ", requiredImports
  var remove:seq[int]

  echo fname
  # for i in items:
  #   #typs.getDependencies(i)    
  #   echo "NEEDS: ", typs[i].needs

  #   for need in typs[i].needs:
  #     var tmp = need.toLower.strip
  #     if tmp == "handle":
  #       requiredImports.incl("standard")
  #     else:
  #       for k in paths.keys:
  #         if tmp.startsWith( k ):
  #           requiredImports.incl(k)
  #           if not i in remove:
  #             remove &= i

  # for i in remove:
  #   items.delete(items.find(i))
  #   neworder &= i  
    
  # # 2.2 Then those with Handle
  # remove = @[]

  # 3. Reorder
  #var nItems = typs.len

  # FIXME
  # while items.len > 0:
  #   var remove:seq[int]

  #   for i in items:
  #     # The same as before
  #     var flag = true
  #     for need in typs[i].needs:
  #       var tmp = need.toLower.strip
  #       var f = false
  #       if tmp == "handle":
  #         requiredImports.incl("standard")
  #         f = true
  #       else:
  #         for k in paths.keys:
  #           if tmp.startsWith( k ):
  #             requiredImports.incl( k )
  #             f = true
  #       if not f:
  #         flag = false 

  #     if flag and not i in remove:
  #       remove &= i

  #   for i in remove:
  #     items.delete( items.find(i) )
  #     neworder &= i

  #   if items.len == nItems:
  #     break

  #   else:
  #     nItems = items.len
  #echo requiredImports

  # Create needed imports
  # var depends:seq[string]
  # for i in items:
  #   depends &= typs[i].depend

  # var provides:seq[string]
  # for i in neworder:
  #   provides &= typs[i].name

  # #-----------------------------------
  # # Create the new file
  var newtxt = ""
  # newtxt &= "# PROVIDES: " 
  # for i in provides:
  #   newtxt &= i & " "


  # newtxt = newtxt.strip  
  # newtxt &= "\n# DEPENDS: " 
  # for i in depends:
  #   newtxt &= i & " "
  # newtxt = newtxt.strip
  # newtxt &= "\n\n"
  #echo flagHandle
  #if flagHandle:
  #  newtxt &= "import tkernel/standard/standard_types\n"
  for i in requiredImports:
    var currentPath = fname.split("./")[1]
    currentPath = currentPath.split(".nim")[0]
    var tmp2 = paths[i].split('/')
    if currentPath == paths[i]:
      discard
    else:
      var currentFolders = currentPath.split('/')
      #var txt = ""
      if currentFolders[0] != tmp2[0]:
        newtxt &=  "import ../../" & paths[i] & "\n"
      else:
        if currentFolders[1] != tmp2[1]:
          newtxt &=  "import ../" & paths[i] & "\n"
      #echo currentPath, " ", tmp2
  #    newtxt &= "import " & paths[i] & "\n"
  #  for name in paths:
  #    if i == name:
  #      echo paths[i]
  
  newtxt &= "type\n"
  var filter:HashSet[string]
  #for i in neworder:
  for i in 0..typs.high:
    #echo typs[i].lines[0]
    if not (typs[i].name in filter):
      for line in typs[i].lines:
        if line.strip != "":
          newtxt &= line & "\n"

      newtxt &= "\n"
    filter.incl(typs[i].name)
  
  clear(filter)
  #for i in items:   
  # for i in 0..typs.high:
  #   if not (typs[i].lines[0] in filter):
  #     for line in typs[i].lines:
  #       if line.strip != "":  
  #         newtxt &= line & "\n"
      
  #     newtxt &= "\n"
  #   filter.incl(typs[i].lines[0])

  #for typ in typs:
  #  echo typ.name, " ", typ.depend
  fname.writeFile(newtxt)

#
# 8. Add import statements: *_types.nim content
#




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
#[ var (typs, newFile) = getTypeBlock("./tkg3d/geom/geom_axis1placement.nim")
#for i in borrame:
#  echo i
for typ in typs:
  echo "#-----"
  for i in typ.txt:
    echo "  " & i ]#


#"./tkmath/gp"
#createTypesFile("./tk*/*")
#createTypesFile("./tkg3d/geom")

#reorderContent("./tkernel/standard/standard_types.nim")
reorderContent("./tkg3d/geom/geom_types.nim")

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

