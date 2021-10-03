##  Created on: 2002-07-30
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
##  The algorithm of unbalanced binary  tree of overlapped bounding boxes with
##  the possibility of deleting objects from the tree.
##
##  In addition to  the requirements to the object type  defined in the parent
##  class this  class requires that the  object can be hashed  and compared to
##  another object (functions HashCode and  IsEqual are defined for it), since
##  the class NCollection_DataMap  is used where the object  plays the role of
##  the key.
##

type
  NCollectionEBTree*[TheObjType; TheBndType] {.
      importcpp: "NCollection_EBTree<\'0,\'1>", header: "NCollection_EBTree.hxx",
      bycopy.} = object of NCollectionUBTree[TheObjType, TheBndType]

  NCollectionEBTreeUBTree* = NCollectionUBTree[TheObjType, TheBndType]
  NCollectionEBTreeTreeNode* = TreeNode

proc constructNCollectionEBTree*[TheObjType; TheBndType](
    theAllocator: Handle[NCollectionBaseAllocator] = 0): NCollectionEBTree[
    TheObjType, TheBndType] {.cdecl, constructor,
                            importcpp: "NCollection_EBTree<\'*0,\'*1>(@)",
                            dynlib: tkernel.}
proc add*[TheObjType; TheBndType](this: var NCollectionEBTree[TheObjType, TheBndType];
                                theObj: TheObjType; theBnd: TheBndType): bool {.
    cdecl, importcpp: "Add", dynlib: tkernel.}
proc remove*[TheObjType; TheBndType](this: var NCollectionEBTree[TheObjType,
    TheBndType]; theObj: TheObjType): bool {.cdecl, importcpp: "Remove",
    dynlib: tkernel.}
proc contains*[TheObjType; TheBndType](this: NCollectionEBTree[TheObjType,
    TheBndType]; theObj: TheObjType): bool {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkernel.}
proc findNode*[TheObjType; TheBndType](this: NCollectionEBTree[TheObjType,
    TheBndType]; theObj: TheObjType): NCollectionEBTreeTreeNode {.noSideEffect,
    cdecl, importcpp: "FindNode", dynlib: tkernel.}
proc clear*[TheObjType; TheBndType](this: var NCollectionEBTree[TheObjType,
    TheBndType]; aNewAlloc: Handle[NCollectionBaseAllocator] = 0) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
##  ================== METHODS TEMPLATES =====================
## =======================================================================
## function : Remove
## purpose  : Removes the given object and updates the tree.
##            Returns false if the tree does not contain theObj.
## =======================================================================
##  ======================================================================
##  Declaration of handled version of NCollection_EBTree.
##  In the macros below the arguments are:
##  _HEBTREE      - the desired name of handled class
##  _OBJTYPE      - the name of the object type
##  _BNDTYPE      - the name of the bounding box type
##  _HUBTREE      - the name of parent class
##                  (defined using macro DEFINE_HUBTREE)
