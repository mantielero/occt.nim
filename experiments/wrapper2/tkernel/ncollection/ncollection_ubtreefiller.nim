when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

##  Created on: 2002-10-18
##  Created by: Michael SAZONOV
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

## *
##  This class is used to fill an UBTree in a random order.
##  The quality of a tree is much better (from the point of view of
##  the search time) if objects are added to it in a random order to
##  avoid adding a chain of neerby objects one following each other.
##
##  This class collects objects to be added, and then add them to the tree
##  in a random order.
##

type
  NCollection_UBTreeFiller*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object ##  ---------- PUBLIC TYPES ----------
                                                           ## ! Structure of pair (object, bnd box)
                                                           ##  Assignment operator is made empty and private in order to
                                                           ##  avoid warning on MSVC (C4512)
                                                           ##  ---------- PRIVATE FIELDS ----------
    ## !< random number generator

  NCollection_UBTreeFillerObjBnd*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>::ObjBnd",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object
    myObj* {.importc: "myObj".}: TheObjType
    myBnd* {.importc: "myBnd".}: TheBndType


proc constructNCollection_UBTreeFillerObjBnd*[TheObjType; TheBndType](
    theObj: TheObjType; theBnd: TheBndType): NCollection_UBTreeFillerObjBnd[
    TheObjType, TheBndType] {.cdecl, constructor, importcpp: "NCollection_UBTreeFiller<\'*0,\'*1>::ObjBnd(@)",
                            dynlib: tkernel.}
proc constructNCollection_UBTreeFillerObjBnd*[TheObjType; TheBndType](): NCollection_UBTreeFillerObjBnd[
    TheObjType, TheBndType] {.cdecl, constructor, importcpp: "NCollection_UBTreeFiller<\'*0,\'*1>::ObjBnd(@)",
                            dynlib: tkernel.}
type
  NCollection_UBTreeFillerUBTree* = NCollection_UBTree[TheObjType, TheBndType]
  NCollection_UBTreeFillerUBTreeNode* = TreeNode

proc constructNCollection_UBTreeFiller*[TheObjType; TheBndType](
    theTree: var NCollection_UBTreeFillerUBTree;
    theAlloc: handle[NCollection_BaseAllocator] = 0L'i64;
    isFullRandom: bool = Standard_True): NCollection_UBTreeFiller[TheObjType,
    TheBndType] {.cdecl, constructor,
                 importcpp: "NCollection_UBTreeFiller<\'*0,\'*1>(@)",
                 dynlib: tkernel.}
proc Add*[TheObjType; TheBndType](this: var NCollection_UBTreeFiller[TheObjType,
    TheBndType]; theObj: TheObjType; theBnd: TheBndType) {.cdecl, importcpp: "Add",
    dynlib: tkernel.}
proc Fill*[TheObjType; TheBndType](this: var NCollection_UBTreeFiller[TheObjType,
    TheBndType]): cint {.cdecl, importcpp: "Fill", dynlib: tkernel.}
proc Reset*[TheObjType; TheBndType](this: var NCollection_UBTreeFiller[TheObjType,
    TheBndType]) {.cdecl, importcpp: "Reset", dynlib: tkernel.}
proc CheckTree*[TheObjType; TheBndType](this: var NCollection_UBTreeFiller[
    TheObjType, TheBndType]; theStream: var Standard_OStream): cint {.cdecl,
    importcpp: "CheckTree", dynlib: tkernel.}
proc destroyNCollection_UBTreeFiller*[TheObjType; TheBndType](
    this: var NCollection_UBTreeFiller[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~NCollection_UBTreeFiller()", dynlib: tkernel.}