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
## ! For better efficiency on heavy data types it is recommended to use
## ! either BHV_IndexedBoxSet which uses indirect indexing for accessing
## ! the elements and their boxes or set the element to be an index
## ! of the real element in the application's internal data structures.
## !
## ! \tparam NumType Numeric data type
## ! \tparam Dimension Vector dimension
## ! \tparam DataType Type of elements on which the boxes are built

type
  BVH_BoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BVH_BoxSet<\'0,\'1,\'2>", header: "BVH_BoxSet.hxx", bycopy.} = object of BVH_PrimitiveSet[
      NumType, Dimension] ## ! @name Constructors
                        ## ! Empty constructor for use the default BVH_Builder
                        ## ! @name Setting expected size of the BVH
                        ## ! Sets the expected size of BVH tree
                        ## ! @name Adding elements in BVH
                        ## ! Adds the element into BVH
                        ## ! @name BVH construction
                        ## ! BVH construction
                        ## ! @name Clearing the elements and boxes
                        ## ! Clears the vectors of elements and boxes
                        ## ! @name Necessary overrides for BVH construction
                        ## ! Make inherited method Box() visible to avoid CLang warning
                        ## ! @name Fields
    ## !< Elements
    ## !< Boxes for the elements


proc newBVH_BoxSet*[NumType; Dimension: static[cint]; DataType](): BVH_BoxSet[
    NumType, Dimension, DataType] {.cdecl, constructor,
                                 importcpp: "BVH_BoxSet<\'*0,\'*1,\'*2>(@)",
                                 header: "BVH_BoxSet.hxx".}
proc newBVH_BoxSet*[NumType; Dimension: static[cint]; DataType](
    theBuilder: Handle[BVH_Builder[NumType, Dimension]]): BVH_BoxSet[NumType,
    Dimension, DataType] {.cdecl, constructor,
                         importcpp: "BVH_BoxSet<\'*0,\'*1,\'*2>(@)",
                         header: "BVH_BoxSet.hxx".}
proc setSize*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_BoxSet[NumType, Dimension, DataType]; theSize: csize_t) {.cdecl,
    importcpp: "SetSize", header: "BVH_BoxSet.hxx".}
proc add*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_BoxSet[NumType, Dimension, DataType]; theElement: DataType;
    theBox: BVH_Box[NumType, Dimension]) {.cdecl, importcpp: "Add", header: "BVH_BoxSet.hxx".}
proc build*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_BoxSet[NumType, Dimension, DataType]) {.cdecl, importcpp: "Build",
    header: "BVH_BoxSet.hxx".}
proc clear*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_BoxSet[NumType, Dimension, DataType]) {.cdecl, importcpp: "Clear",
    header: "BVH_BoxSet.hxx".}
## using statement

proc box*[NumType; Dimension: static[cint]; DataType](
    this: BVH_BoxSet[NumType, Dimension, DataType]; theIndex: cint): BVH_Box[NumType,
    Dimension] {.noSideEffect, cdecl, importcpp: "Box", header: "BVH_BoxSet.hxx".}
proc center*[NumType; Dimension: static[cint]; DataType](
    this: BVH_BoxSet[NumType, Dimension, DataType]; theIndex: cint; theAxis: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "Center", header: "BVH_BoxSet.hxx".}
proc size*[NumType; Dimension: static[cint]; DataType](
    this: BVH_BoxSet[NumType, Dimension, DataType]): cint {.noSideEffect, cdecl,
    importcpp: "Size", header: "BVH_BoxSet.hxx".}
proc swap*[NumType; Dimension: static[cint]; DataType](
    this: var BVH_BoxSet[NumType, Dimension, DataType]; theIndex1: cint;
    theIndex2: cint) {.cdecl, importcpp: "Swap", header: "BVH_BoxSet.hxx".}
proc element*[NumType; Dimension: static[cint]; DataType](
    this: BVH_BoxSet[NumType, Dimension, DataType]; theIndex: cint): DataType {.
    noSideEffect, cdecl, importcpp: "Element", header: "BVH_BoxSet.hxx".}