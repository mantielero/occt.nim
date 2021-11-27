##  Created by: Eugeny MALTCHIKOV
##  Created on: 2019-04-17
##  Copyright (c) 2019 OPEN CASCADE SAS
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

## ! Implements easy to use interfaces for adding the elements into
## ! BVH tree and its following construction.
## ! To make it more effective it is better to set the number of elements
## ! that are going to be added into BVH tree.
## ! It uses the indirect indexing for accessing the elements and their boxes
## ! which allows using heavy data types as elements with better efficiency
## ! during BVH construction and just a bit slower selection time.
## ! Due to better BVH tree construction time the class will be more efficient
## ! than BVH_BoxSet on the operations where just a few selections from
## ! the tree required.
## !
## ! \tparam NumType Numeric data type
## ! \tparam Dimension Vector dimension
## ! \tparam DataType Type of elements on which the boxes are built

type
  BVH_IndexedBoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BVH_IndexedBoxSet<\'0,\'1,\'2>",
      header: "BVH_IndexedBoxSet.hxx", bycopy.} = object of BVH_BoxSet[NumType,
      Dimension, DataType] ## ! @name Constructors
                         ## ! Empty constructor for use the default BVH_Builder
                         ## ! @name Setting expected size of the BVH
                         ## ! Sets the expected size of BVH tree
                         ## ! @name Adding elements in BVH
                         ## ! Adds the element into BVH
                         ## ! @name Clearing the elements and boxes
                         ## ! Clears the vectors of elements and boxes
                         ## ! @name Necessary overrides for BVH construction
                         ## ! Make inherited method Box() visible to avoid CLang warning
                         ## ! @name Fields


proc newBVH_IndexedBoxSet*[NumType; Dimension: static[cint]; DataType](): BVH_IndexedBoxSet[
    NumType, Dimension, DataType] {.cdecl, constructor, importcpp: "BVH_IndexedBoxSet<\'*0,\'*1,\'*2>(@)",
                                 header: "BVH_IndexedBoxSet.hxx".}
proc newBVH_IndexedBoxSet*[NumType; Dimension: static[cint]; DataType](
    theBuilder: Handle[BVH_Builder[NumType, Dimension]]): BVH_IndexedBoxSet[
    NumType, Dimension, DataType] {.cdecl, constructor, importcpp: "BVH_IndexedBoxSet<\'*0,\'*1,\'*2>(@)",
                                 header: "BVH_IndexedBoxSet.hxx".}
proc setSize*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_IndexedBoxSet[NumType, Dimension, DataType]; theSize: csize_t) {.
    cdecl, importcpp: "SetSize", header: "BVH_IndexedBoxSet.hxx".}
proc add*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_IndexedBoxSet[NumType, Dimension, DataType]; theElement: DataType;
    theBox: BVH_Box[NumType, Dimension]) {.cdecl, importcpp: "Add", header: "BVH_IndexedBoxSet.hxx".}
proc clear*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_IndexedBoxSet[NumType, Dimension, DataType]) {.cdecl,
    importcpp: "Clear", header: "BVH_IndexedBoxSet.hxx".}
## using statement

proc box*[NumType; Dimension: static[cint]; DataType](
    this: BVH_IndexedBoxSet[NumType, Dimension, DataType]; theIndex: cint): BVH_Box[
    NumType, Dimension] {.noSideEffect, cdecl, importcpp: "Box", header: "BVH_IndexedBoxSet.hxx".}
proc swap*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_IndexedBoxSet[NumType, Dimension, DataType]; theIndex1: cint;
    theIndex2: cint) {.cdecl, importcpp: "Swap", header: "BVH_IndexedBoxSet.hxx".}
proc element*[NumType; Dimension: static[cint]; DataType](
    this: BVH_IndexedBoxSet[NumType, Dimension, DataType]; theIndex: cint): DataType {.
    noSideEffect, cdecl, importcpp: "Element", header: "BVH_IndexedBoxSet.hxx".}