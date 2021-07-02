##  Created on: 2009-01-29
##  Created by: Pavel TELKOV
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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

## ! This class represents a pair of integer indices to store
## ! element indices connected to link. It is restricted to
## ! store more than two indices in it.

type
  BRepMeshPairOfIndex* {.importcpp: "BRepMesh_PairOfIndex",
                        header: "BRepMesh_PairOfIndex.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor


proc constructBRepMeshPairOfIndex*(): BRepMeshPairOfIndex {.constructor,
    importcpp: "BRepMesh_PairOfIndex(@)", header: "BRepMesh_PairOfIndex.hxx".}
proc clear*(this: var BRepMeshPairOfIndex) {.importcpp: "Clear",
    header: "BRepMesh_PairOfIndex.hxx".}
proc append*(this: var BRepMeshPairOfIndex; theIndex: StandardInteger) {.
    importcpp: "Append", header: "BRepMesh_PairOfIndex.hxx".}
proc prepend*(this: var BRepMeshPairOfIndex; theIndex: StandardInteger) {.
    importcpp: "Prepend", header: "BRepMesh_PairOfIndex.hxx".}
proc isEmpty*(this: BRepMeshPairOfIndex): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_PairOfIndex.hxx".}
proc extent*(this: BRepMeshPairOfIndex): StandardInteger {.noSideEffect,
    importcpp: "Extent", header: "BRepMesh_PairOfIndex.hxx".}
proc firstIndex*(this: BRepMeshPairOfIndex): StandardInteger {.noSideEffect,
    importcpp: "FirstIndex", header: "BRepMesh_PairOfIndex.hxx".}
proc lastIndex*(this: BRepMeshPairOfIndex): StandardInteger {.noSideEffect,
    importcpp: "LastIndex", header: "BRepMesh_PairOfIndex.hxx".}
proc index*(this: BRepMeshPairOfIndex; thePairPos: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "Index", header: "BRepMesh_PairOfIndex.hxx".}
proc setIndex*(this: var BRepMeshPairOfIndex; thePairPos: StandardInteger;
              theIndex: StandardInteger) {.importcpp: "SetIndex",
    header: "BRepMesh_PairOfIndex.hxx".}
proc removeIndex*(this: var BRepMeshPairOfIndex; thePairPos: StandardInteger) {.
    importcpp: "RemoveIndex", header: "BRepMesh_PairOfIndex.hxx".}

