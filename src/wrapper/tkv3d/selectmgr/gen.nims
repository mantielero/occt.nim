#!/usr/bin/env nim
import strutils, os, algorithm
let lib = "/usr/include/opencascade/"
let packageName = "selectmgr"
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

# ls /usr/include/opencascade/SelectMgr*.hxx | cut -c 26-

genFiles("SelectMgr_AndFilter")
genFiles("SelectMgr_AndOrFilter")
genFiles("SelectMgr_BaseFrustum")
pp("selectmgr_basefrustum.nim",
  replaceAll = @[("graphic3dWorldViewProjState()", "newGraphic3dWorldViewProjState()")]
)
genFiles("SelectMgr_BVHThreadPool")
genFiles("SelectMgr_CompositionFilter")
genFiles("SelectMgr_EntityOwner")
genFiles("SelectMgr_Filter")
genFiles("SelectMgr_FilterType")
genFiles("SelectMgr_FrustumBuilder")
genFiles("SelectMgr_Frustum")
genFiles("SelectMgr")
genFiles("SelectMgr_IndexedDataMapOfOwnerCriterion")
genFiles("SelectMgr_IndexedMapOfOwner")
pp("selectmgr_indexedmapofowner.nim",
  commentRange = @[(17,19)]
)
genFiles("SelectMgr_ListIteratorOfListOfFilter")
genFiles("SelectMgr_ListOfFilter")
pp("selectmgr_listoffilter.nim",
  replaceAll = @[("SelectMgrListIteratorOfListOfFilter* = Iterator[Handle[SelectMgrFilter]]",
    """SelectMgrListIteratorOfListOfFilter*[HandleSelectMgrFilter] {.importcpp:"NCollection_List<'0>::Iterator", header:"SelectMgr_ListOfFilter.hxx", bycopy.} = object"""
  )]
)
genFiles("SelectMgr_OrFilter")
genFiles("SelectMgr_PickingStrategy")
genFiles("SelectMgr_RectangularFrustum")
genFiles("SelectMgr_SelectableObject")
genFiles("SelectMgr_SelectableObjectSet")
genFiles("SelectMgr_SelectingVolumeManager")
pp("selectmgr_selectingvolumemanager.nim",
  replaceAll = @[("Handle[SelectMgrFrustumBuilder] = nil", "Handle[SelectMgrFrustumBuilder] = cast[Handle[SelectMgrFrustumBuilder]](nil)"),
    ("graphic3dWorldViewProjState()", "newGraphic3dWorldViewProjState()")
  ]
)
genFiles("SelectMgr_Selection")
genFiles("SelectMgr_SelectionImageFiller")
genFiles("SelectMgr_SelectionManager")
genFiles("SelectMgr_SensitiveEntity")
genFiles("SelectMgr_SensitiveEntitySet")
pp("selectmgr_sensitiveentityset.nim",
  replaceAll = @[("""SelectMgrIndexedMapOfHSensitive* = NCollectionIndexedMap[
      Handle[SelectMgrSensitiveEntity]]""",
      """SelectMgrIndexedMapOfHSensitive*[HandleSelectMgrSensitiveEntity] {.importcpp:"NCollection_IndexedMap<'0>", header:"SelectMgr_SensitiveEntitySet.hxx", bycopy.} = object"""
      )]
)
genFiles("SelectMgr_SequenceOfFilter")
genFiles("SelectMgr_SequenceOfOwner")
genFiles("SelectMgr_SequenceOfSelection")
genFiles("SelectMgr_SortCriterion")
genFiles("SelectMgr_StateOfSelection")
pp("selectmgr_stateofselection.nim",
  replaceAll = @[("SelectMgrSOS", "selectMgrSOS")]
)
genFiles("SelectMgr_ToleranceMap")
genFiles("SelectMgr_TriangularFrustum")
genFiles("SelectMgr_TriangularFrustumSet")
pp("selectmgr_triangularfrustumset.nim",
  replaceAll = @[("SelectMgrTriangFrustumsIter* = Iterator[Handle[SelectMgrTriangularFrustum]]",
    """SelectMgrTriangFrustumsIter*[HandleSelectMgrTriangularFrustum] {.importcpp:"NCollection_List<'0>::Iterator", header:"SelectMgr_TriangularFrustumSet.hxx", bycopy.} = object"""
  )]
)
genFiles("SelectMgr_TypeOfBVHUpdate")
genFiles("SelectMgr_TypeOfDepthTolerance")
genFiles("SelectMgr_TypeOfUpdate")
genFiles("SelectMgr_VectorTypes")
genFiles("SelectMgr_ViewClipRange")
genFiles("SelectMgr_ViewerSelector3d")
genFiles("SelectMgr_ViewerSelector")
pp("selectmgr_viewerselector.nim",
  replaceAll = @[("""SelectMgrMapOfObjectSensitives* = NCollectionDataMap[
      Handle[SelectMgrSelectableObject], Handle[SelectMgrSensitiveEntitySet]]""",
      """SelectMgrMapOfObjectSensitives*[HandleSelectMgrSelectableObject, HandleSelectMgrSensitiveEntitySet] {.importcpp:"NCollection_DataMap< '0, '1 >", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object"""
      ),
      ("""SelectMgrMapOfObjectSensitivesIterator* = Iterator[
      Handle[SelectMgrSelectableObject], Handle[SelectMgrSensitiveEntitySet]]""",
      """SelectMgrMapOfObjectSensitivesIterator*[HandleSelectMgrSelectableObject, HandleSelectMgrSensitiveEntitySet] {.importcpp:"NCollection_DataMap< '0, '1 >::Iterator", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object"""
      ),
      ("""SelectMgrFrustumCache* = NCollectionDataMap[cint, SelectMgrSelectingVolumeManager]""",
      """SelectMgrFrustumCache*[cint, SelectMgrSelectingVolumeManager] {.importcpp:"NCollection_DataMap< '0, '1 >", header:"SelectMgr_ViewerSelector.hxx", bycopy.} = object"""
      )
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