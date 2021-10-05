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
  NCollectionUBTree*[TheObjType; TheBndType] {.
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

  NCollectionUBTreeSelector*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::Selector",
      header: "NCollection_UBTree.hxx", bycopy.} = object ## *
                                                     ##  Constructor
                                                     ##
                                                     ## *
                                                     ##  The method Accept() should set this flag if the selection process
                                                     ##  is to be stopped
                                                     ##


proc constructNCollectionUBTreeSelector*[TheObjType; TheBndType](): NCollectionUBTreeSelector[
    TheObjType, TheBndType] {.cdecl, constructor, importcpp: "NCollection_UBTree<\'*0,\'*1>::Selector(@)",
                            dynlib: tkernel.}
proc reject*[TheObjType; TheBndType](this: NCollectionUBTreeSelector[TheObjType,
    TheBndType]; a2: TheBndType): bool {.noSideEffect, cdecl, importcpp: "Reject",
                                     dynlib: tkernel.}
proc accept*[TheObjType; TheBndType](this: var NCollectionUBTreeSelector[TheObjType,
    TheBndType]; a2: TheObjType): bool {.cdecl, importcpp: "Accept", dynlib: tkernel.}
proc stop*[TheObjType; TheBndType](this: NCollectionUBTreeSelector[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "Stop", dynlib: tkernel.}
proc destroyNCollectionUBTreeSelector*[TheObjType; TheBndType](
    this: var NCollectionUBTreeSelector[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~Selector()", dynlib: tkernel.}
type
  NCollectionUBTreeTreeNode*[TheObjType; TheBndType] {.
      importcpp: "NCollection_UBTree<\'0,\'1>::TreeNode",
      header: "NCollection_UBTree.hxx", bycopy.} = object
    ## /< bounding geometry
    ## /< the object
    ## /< 2 children forming a b-tree
    ## /< the pointer to a parent node


proc constructNCollectionUBTreeTreeNode*[TheObjType; TheBndType](
    theObj: TheObjType; theBnd: TheBndType): NCollectionUBTreeTreeNode[TheObjType,
    TheBndType] {.cdecl, constructor,
                 importcpp: "NCollection_UBTree<\'*0,\'*1>::TreeNode(@)",
                 dynlib: tkernel.}
proc isLeaf*[TheObjType; TheBndType](this: NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "IsLeaf", dynlib: tkernel.}
proc isRoot*[TheObjType; TheBndType](this: NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]): bool {.noSideEffect, cdecl, importcpp: "IsRoot", dynlib: tkernel.}
proc bnd*[TheObjType; TheBndType](this: NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]): TheBndType {.noSideEffect, cdecl, importcpp: "Bnd", dynlib: tkernel.}
proc changeBnd*[TheObjType; TheBndType](this: var NCollectionUBTreeTreeNode[
    TheObjType, TheBndType]): var TheBndType {.cdecl, importcpp: "ChangeBnd",
    dynlib: tkernel.}
proc `object`*[TheObjType; TheBndType](this: NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]): TheObjType {.noSideEffect, cdecl, importcpp: "Object",
                             dynlib: tkernel.}
proc child*[TheObjType; TheBndType](this: NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]; i: cint): NCollectionUBTreeTreeNode {.noSideEffect, cdecl,
    importcpp: "Child", dynlib: tkernel.}
proc changeChild*[TheObjType; TheBndType](this: var NCollectionUBTreeTreeNode[
    TheObjType, TheBndType]; i: cint): var NCollectionUBTreeTreeNode {.cdecl,
    importcpp: "ChangeChild", dynlib: tkernel.}
proc parent*[TheObjType; TheBndType](this: NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]): NCollectionUBTreeTreeNode {.noSideEffect, cdecl,
    importcpp: "Parent", dynlib: tkernel.}
proc changeParent*[TheObjType; TheBndType](
    this: var NCollectionUBTreeTreeNode[TheObjType, TheBndType]): var NCollectionUBTreeTreeNode {.
    cdecl, importcpp: "ChangeParent", dynlib: tkernel.}
proc gemmate*[TheObjType; TheBndType](this: var NCollectionUBTreeTreeNode[
    TheObjType, TheBndType]; theNewBnd: TheBndType; theObj: TheObjType;
                                    theBnd: TheBndType;
                                    theAlloc: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Gemmate", dynlib: tkernel.}
proc kill*[TheObjType; TheBndType](this: var NCollectionUBTreeTreeNode[TheObjType,
    TheBndType]; i: cint; theAlloc: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "Kill", dynlib: tkernel.}
proc destroyNCollectionUBTreeTreeNode*[TheObjType; TheBndType](
    this: var NCollectionUBTreeTreeNode[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~TreeNode()", dynlib: tkernel.}
proc delNode*[TheObjType; TheBndType](theNode: ptr NCollectionUBTreeTreeNode;
                                    theAlloc: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "TreeNode::delNode(@)", dynlib: tkernel.}
proc constructNCollectionUBTree*[TheObjType; TheBndType](): NCollectionUBTree[
    TheObjType, TheBndType] {.cdecl, constructor,
                            importcpp: "NCollection_UBTree<\'*0,\'*1>(@)",
                            dynlib: tkernel.}
proc constructNCollectionUBTree*[TheObjType; TheBndType](
    theAllocator: Handle[NCollectionBaseAllocator]): NCollectionUBTree[TheObjType,
    TheBndType] {.cdecl, constructor,
                 importcpp: "NCollection_UBTree<\'*0,\'*1>(@)", dynlib: tkernel.}
proc add*[TheObjType; TheBndType](this: var NCollectionUBTree[TheObjType, TheBndType];
                                theObj: TheObjType; theBnd: TheBndType): bool {.
    cdecl, importcpp: "Add", dynlib: tkernel.}
proc select*[TheObjType; TheBndType](this: NCollectionUBTree[TheObjType, TheBndType];
                                   theSelector: var NCollectionUBTreeSelector): cint {.
    noSideEffect, cdecl, importcpp: "Select", dynlib: tkernel.}
proc clear*[TheObjType; TheBndType](this: var NCollectionUBTree[TheObjType,
    TheBndType]; aNewAlloc: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)) {.cdecl,
    importcpp: "Clear", dynlib: tkernel.}
  ##       { if (myRoot) delete myRoot; myRoot = 0L; }
proc isEmpty*[TheObjType; TheBndType](this: NCollectionUBTree[TheObjType, TheBndType]): bool {.
    noSideEffect, cdecl, importcpp: "IsEmpty", dynlib: tkernel.}
proc root*[TheObjType; TheBndType](this: NCollectionUBTree[TheObjType, TheBndType]): NCollectionUBTreeTreeNode {.
    noSideEffect, cdecl, importcpp: "Root", dynlib: tkernel.}
proc destroyNCollectionUBTree*[TheObjType; TheBndType](
    this: var NCollectionUBTree[TheObjType, TheBndType]) {.cdecl,
    importcpp: "#.~NCollection_UBTree()", dynlib: tkernel.}
proc allocator*[TheObjType; TheBndType](this: NCollectionUBTree[TheObjType,
    TheBndType]): Handle[NCollectionBaseAllocator] {.noSideEffect, cdecl,
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
