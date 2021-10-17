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
  NCollectionUBTreeFiller*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object ##  ---------- PUBLIC TYPES ----------
                                                           ## ! Structure of pair (object, bnd box)
                                                           ##  Assignment operator is made empty and private in order to
                                                           ##  avoid warning on MSVC (C4512)
                                                           ##  ---------- PRIVATE FIELDS ----------
    ## !< random number generator

  NCollectionUBTreeFillerObjBnd*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTreeFiller<\'0,\'1>::ObjBnd",
      header: "NCollection_UBTreeFiller.hxx", bycopy.} = object
    myObj* {.importc: "myObj".}: TheObjType
    myBnd* {.importc: "myBnd".}: TheBndType


proc newNCollectionUBTreeFillerObjBnd*[TheObjType; TheBndType](theObj: TheObjType;
    theBnd: TheBndType): NCollectionUBTreeFillerObjBnd[TheObjType, TheBndType] {.
    cdecl, constructor,
    importcpp: "NCollection_UBTreeFiller<\'*0,\'*1>::ObjBnd(@)", dynlib: tkernel.}
proc newNCollectionUBTreeFillerObjBnd*[TheObjType; TheBndType](): NCollectionUBTreeFillerObjBnd[
    TheObjType, TheBndType] {.cdecl, constructor, importcpp: "NCollection_UBTreeFiller<\'*0,\'*1>::ObjBnd(@)",
                            dynlib: tkernel.}
type
  NCollectionUBTreeFillerUBTree* = NCollectionUBTree[TheObjType, TheBndType]
  NCollectionUBTreeFillerUBTreeNode* = TreeNode

proc newNCollectionUBTreeFiller*[TheObjType; TheBndType](
    theTree: var NCollectionUBTreeFillerUBTree;
    theAlloc: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0);
    isFullRandom: bool = true): NCollectionUBTreeFiller[TheObjType,
    TheBndType] {.cdecl, constructor,
                 importcpp: "NCollection_UBTreeFiller<\'*0,\'*1>(@)",
                 dynlib: tkernel.}
proc add*[TheObjType; TheBndType](this: var NCollectionUBTreeFiller[TheObjType,
    TheBndType]; theObj: TheObjType; theBnd: TheBndType) {.cdecl, importcpp: "Add",
    dynlib: tkernel.}
proc fill*[TheObjType; TheBndType](this: var NCollectionUBTreeFiller[TheObjType,
    TheBndType]): cint {.cdecl, importcpp: "Fill", dynlib: tkernel.}
proc reset*[TheObjType; TheBndType](this: var NCollectionUBTreeFiller[TheObjType,
    TheBndType]) {.cdecl, importcpp: "Reset", dynlib: tkernel.}
proc checkTree*[TheObjType; TheBndType](this: var NCollectionUBTreeFiller[
    TheObjType, TheBndType]; theStream: var StandardOStream): cint {.cdecl,
    importcpp: "CheckTree", dynlib: tkernel.}
proc destroyNCollectionUBTreeFiller*[TheObjType; TheBndType](
    this: var NCollectionUBTreeFiller[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~NCollection_UBTreeFiller()", dynlib: tkernel.}