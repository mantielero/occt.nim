when defined(windows):
  const tkernel* = "TKernel.dll"
elif defined(macosx):
  const tkernel* = "libTKernel.dylib"
else:
  const tkernel* = "libTKernel.so" 

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
##  The algorithm of unbalanced binary tree of overlapped bounding boxes.
##
##  Once the tree of boxes  of geometric objects is constructed, the algorithm
##  is capable of fast geometric selection of objects.  The tree can be easily
##  updated by adding to it a new object with bounding box.
##
##  The time of adding to the tree  of one object is O(log(N)), where N is the
##  total number of  objects, so the time  of building a tree of  N objects is
##  O(N(log(N)). The search time of one object is O(log(N)).
##
##  Defining  various classes  inheriting NCollection_UBTree::Selector  we can
##  perform various kinds of selection over the same b-tree object
##
##  The object  may be of any  type allowing copying. Among  the best suitable
##  solutions there can  be a pointer to an object,  handled object or integer
##  index of object inside some  collection.  The bounding object may have any
##  dimension  and  geometry. The  minimal  interface  of TheBndType  (besides
##  public empty and copy constructor and operator =) used in UBTree algorithm
##  is as the following:
##  @code
##    class MyBndType
##    {
##     public:
##      inline void                   Add (const MyBndType& other);
##      // Updates me with other bounding
##
##      inline Standard_Boolean       IsOut (const MyBndType& other) const;
##      // Classifies other bounding relatively me
##
##      inline Standard_Real          SquareExtent() const;
##      // Computes the squared maximal linear extent of me.
##      // (For box it is the squared diagonal of box)
##    };
##  @endcode
##  To select objects you need to define a class derived from UBTree::Selector
##  that  should  redefine  the  necessary  virtual methods  to  maintain  the
##  selection condition.  The object  of this class  is also used  to retrieve
##  selected objects after search.
##

type
  NCollection_UBTree*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>", header: "NCollection_UBTree.hxx",
      bycopy.} = object         ## ! Memory allocation
                     ##  ---------- PUBLIC TYPES ----------
                     ## *
                     ##  Class defining the minimal interface of selector.
                     ##
                     ##  ---------- PROTECTED METHODS ----------
                     ## *
                     ##  @return
                     ##    the last added node
                     ##
                     ##  ---------- PRIVATE METHODS ----------
                     ## / Copy constructor (prohibited).
    ## /< root of the tree
    ## /< the last added node
    ## /< Allocator for TreeNode

  NCollection_UBTreeSelector*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::Selector",
      header: "NCollection_UBTree.hxx", bycopy.} = object ## *
                                                     ##  Constructor
                                                     ##
                                                     ## *
                                                     ##  The method Accept() should set this flag if the selection process
                                                     ##  is to be stopped
                                                     ##


proc constructNCollection_UBTreeSelector*[TheObjType; TheBndType](): NCollection_UBTreeSelector[
    TheObjType, TheBndType] {.cdecl, constructor, importcpp: "NCollection_UBTree<\'*0,\'*1>::Selector(@)",
                            dynlib: tkernel.}
proc Reject*[TheObjType; TheBndType](this: NCollection_UBTreeSelector[TheObjType,
    TheBndType]; a2: TheBndType): bool {.noSideEffect, cdecl, importcpp: "Reject",
                                     dynlib: tkernel.}
proc Accept*[TheObjType; TheBndType](this: var NCollection_UBTreeSelector[
    TheObjType, TheBndType]; a2: TheObjType): bool {.cdecl, importcpp: "Accept",
    dynlib: tkernel.}
proc Stop*[TheObjType; TheBndType](this: NCollection_UBTreeSelector[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "Stop", dynlib: tkernel.}
proc destroyNCollection_UBTreeSelector*[TheObjType; TheBndType](
    this: var NCollection_UBTreeSelector[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~Selector()", dynlib: tkernel.}
type
  NCollection_UBTreeTreeNode*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::TreeNode",
      header: "NCollection_UBTree.hxx", bycopy.} = object
    ## /< bounding geometry
    ## /< the object
    ## /< 2 children forming a b-tree
    ## /< the pointer to a parent node


proc constructNCollection_UBTreeTreeNode*[TheObjType; TheBndType](
    theObj: TheObjType; theBnd: TheBndType): NCollection_UBTreeTreeNode[TheObjType,
    TheBndType] {.cdecl, constructor,
                 importcpp: "NCollection_UBTree<\'*0,\'*1>::TreeNode(@)",
                 dynlib: tkernel.}
proc IsLeaf*[TheObjType; TheBndType](this: NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "IsLeaf", dynlib: tkernel.}
proc IsRoot*[TheObjType; TheBndType](this: NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "IsRoot", dynlib: tkernel.}
proc Bnd*[TheObjType; TheBndType](this: NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]): TheBndType {.noSideEffect, cdecl, importcpp: "Bnd", dynlib: tkernel.}
proc ChangeBnd*[TheObjType; TheBndType](this: var NCollection_UBTreeTreeNode[
    TheObjType, TheBndType]): var TheBndType {.cdecl, importcpp: "ChangeBnd",
    dynlib: tkernel.}
proc Object*[TheObjType; TheBndType](this: NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]): TheObjType {.noSideEffect, cdecl, importcpp: "Object",
                             dynlib: tkernel.}
proc Child*[TheObjType; TheBndType](this: NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]; i: cint): NCollection_UBTreeTreeNode {.noSideEffect, cdecl,
    importcpp: "Child", dynlib: tkernel.}
proc ChangeChild*[TheObjType; TheBndType](this: var NCollection_UBTreeTreeNode[
    TheObjType, TheBndType]; i: cint): var NCollection_UBTreeTreeNode {.cdecl,
    importcpp: "ChangeChild", dynlib: tkernel.}
proc Parent*[TheObjType; TheBndType](this: NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]): NCollection_UBTreeTreeNode {.noSideEffect, cdecl,
    importcpp: "Parent", dynlib: tkernel.}
proc ChangeParent*[TheObjType; TheBndType](
    this: var NCollection_UBTreeTreeNode[TheObjType, TheBndType]): var NCollection_UBTreeTreeNode {.
    cdecl, importcpp: "ChangeParent", dynlib: tkernel.}
proc Gemmate*[TheObjType; TheBndType](this: var NCollection_UBTreeTreeNode[
    TheObjType, TheBndType]; theNewBnd: TheBndType; theObj: TheObjType;
                                    theBnd: TheBndType;
                                    theAlloc: handle[NCollection_BaseAllocator]) {.
    cdecl, importcpp: "Gemmate", dynlib: tkernel.}
proc Kill*[TheObjType; TheBndType](this: var NCollection_UBTreeTreeNode[TheObjType,
    TheBndType]; i: cint; theAlloc: handle[NCollection_BaseAllocator]) {.cdecl,
    importcpp: "Kill", dynlib: tkernel.}
proc destroyNCollection_UBTreeTreeNode*[TheObjType; TheBndType](
    this: var NCollection_UBTreeTreeNode[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~TreeNode()", dynlib: tkernel.}
proc delNode*[TheObjType; TheBndType](theNode: ptr NCollection_UBTreeTreeNode;
                                    theAlloc: handle[NCollection_BaseAllocator]) {.
    cdecl, importcpp: "TreeNode::delNode(@)", dynlib: tkernel.}
proc constructNCollection_UBTree*[TheObjType; TheBndType](): NCollection_UBTree[
    TheObjType, TheBndType] {.cdecl, constructor,
                            importcpp: "NCollection_UBTree<\'*0,\'*1>(@)",
                            dynlib: tkernel.}
proc constructNCollection_UBTree*[TheObjType; TheBndType](
    theAllocator: handle[NCollection_BaseAllocator]): NCollection_UBTree[
    TheObjType, TheBndType] {.cdecl, constructor,
                            importcpp: "NCollection_UBTree<\'*0,\'*1>(@)",
                            dynlib: tkernel.}
proc Add*[TheObjType; TheBndType](this: var NCollection_UBTree[TheObjType, TheBndType];
                                theObj: TheObjType; theBnd: TheBndType): bool {.
    cdecl, importcpp: "Add", dynlib: tkernel.}
proc Select*[TheObjType; TheBndType](this: NCollection_UBTree[TheObjType, TheBndType];
                                   theSelector: var NCollection_UBTreeSelector): cint {.
    noSideEffect, cdecl, importcpp: "Select", dynlib: tkernel.}
proc Clear*[TheObjType; TheBndType](this: var NCollection_UBTree[TheObjType,
    TheBndType]; aNewAlloc: handle[NCollection_BaseAllocator] = 0L'i64) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
  ##       { if (myRoot) delete myRoot; myRoot = 0L; }
proc IsEmpty*[TheObjType; TheBndType](this: NCollection_UBTree[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc Root*[TheObjType; TheBndType](this: NCollection_UBTree[TheObjType, TheBndType]): NCollection_UBTreeTreeNode {.
    noSideEffect, cdecl, importcpp: "Root", dynlib: tkernel.}
proc destroyNCollection_UBTree*[TheObjType; TheBndType](
    this: var NCollection_UBTree[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~NCollection_UBTree()", dynlib: tkernel.}
proc Allocator*[TheObjType; TheBndType](this: NCollection_UBTree[TheObjType,
    TheBndType]): handle[NCollection_BaseAllocator] {.noSideEffect, cdecl,
    importcpp: "Allocator", dynlib: tkernel.}
##  ======================================================================
## *
##  Declaration of handled version of NCollection_UBTree.
##  In the macros below the arguments are:
##  _HUBTREE      - the desired name of handled class
##  _OBJTYPE      - the name of the object type
##  _BNDTYPE      - the name of the bounding box type
##  _HPARENT      - the name of parent class (usually Standard_Transient)
##
