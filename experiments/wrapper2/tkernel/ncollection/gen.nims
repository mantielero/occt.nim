#!/usr/bin/env nim
import strutils
let lib = "/usr/include/opencascade/"
let c2nimFile = "ncollection.c2nim"
let beg = """
when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

"""
proc genFiles(file:string;remove:seq[tuple[a,b:int]] = @[]; addSemiColon:seq[int] = @[]) =
    cpFile(lib & file & ".hxx", file & ".hxx")

    # Colons to add at the end of line
    if addSemiColon.len > 0:
        for line in addSemiColon:
            var edit = "'" & $line & " s/$/;/i'"
            edit = "sed -e " & edit & " -i " & file & ".hxx"

            exec edit

    # Lines to remove from the header
    if remove.len > 0:
        var edit = ""
        var n = 0
        for item in remove:
            edit &= $item.a & "," & $item.b & "d"
            n += 1
            if n != remove.len:
                edit &= ";"
        exec "sed -e '" & edit & "' -i " & file & ".hxx"


    exec "c2nim --cpp --header --strict --out:" & file.toLower & ".nim " & c2nimFile & " " & file & ".hxx"
    let txt = readFile(file.toLower & ".nim")
    writeFile(file.toLower & ".nim", beg & txt)
    #rmFile(file & ".hxx")
    echo file



# ls -l | cut -c 44-
genFiles("NCollection_AccAllocator", remove= @[(116,118)], addSemiColon = @[115])
genFiles("NCollection_AlignedAllocator")
genFiles("NCollection_Array1")
genFiles("NCollection_Array2", remove= @[(390,423)])
genFiles("NCollection_BaseAllocator", remove = @[(30,32),(49,81)])
genFiles("NCollection_BaseList")
genFiles("NCollection_BaseMap")
genFiles("NCollection_BaseSequence")
genFiles("NCollection_BaseVector")
genFiles("NCollection_Buffer")
genFiles("NCollection_CellFilter", remove= @[(235,237), (239,239), (304, 309), (324, 336), (348,350), (353,353), (369,378), (399, 421), (442,465)], addSemiColon = @[303, 323, 347,352, 368, 398, 441])
genFiles("NCollection_DataMap")
genFiles("NCollection_DefaultHasher")
genFiles("NCollection_DefineAlloc")
genFiles("NCollection_DefineArray1")
genFiles("NCollection_DefineArray2")
genFiles("NCollection_DefineDataMap")
genFiles("NCollection_DefineDoubleMap")
genFiles("NCollection_DefineHArray1")
genFiles("NCollection_DefineHArray2")
genFiles("NCollection_DefineHSequence")
genFiles("NCollection_DefineIndexedDataMap")
genFiles("NCollection_DefineIndexedMap")
genFiles("NCollection_DefineList")
genFiles("NCollection_DefineMap")
genFiles("NCollection_DefineSequence")
genFiles("NCollection_DefineVector")
genFiles("NCollection_DoubleMap")
genFiles("NCollection_EBTree")
genFiles("NCollection_Haft.h")
genFiles("NCollection_Handle")
genFiles("NCollection_HArray1")
genFiles("NCollection_HArray2")
genFiles("NCollection_HeapAllocator")
genFiles("NCollection_HSequence")
genFiles("NCollection_IncAllocator")
genFiles("NCollection_IndexedDataMap")
genFiles("NCollection_IndexedMap")
genFiles("NCollection_Lerp")
genFiles("NCollection_List")
genFiles("NCollection_ListNode")
genFiles("NCollection_LocalArray")
genFiles("NCollection_Map")
genFiles("NCollection_Mat4")
genFiles("NCollection_Sequence")
genFiles("NCollection_Shared")
genFiles("NCollection_SparseArrayBase")
genFiles("NCollection_SparseArray")
genFiles("NCollection_StdAllocator")
genFiles("NCollection_StlIterator")
genFiles("NCollection_String")
genFiles("NCollection_TListIterator")
genFiles("NCollection_TListNode")
genFiles("NCollection_TypeDef")
genFiles("NCollection_UBTreeFiller")
genFiles("NCollection_UBTree")
genFiles("NCollection_UtfIterator")
genFiles("NCollection_UtfString")
genFiles("NCollection_Vec2")
genFiles("NCollection_Vec3")
genFiles("NCollection_Vec4")
genFiles("NCollection_Vector")
genFiles("NCollection_WinHeapAllocator")
