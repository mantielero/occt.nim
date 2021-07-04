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

import
  ../Standard/Standard_OutOfRange

## ! This class represents a pair of integer indices to store
## ! element indices connected to link. It is restricted to
## ! store more than two indices in it.

type
  BRepMesh_PairOfIndex* {.importcpp: "BRepMesh_PairOfIndex",
                         header: "BRepMesh_PairOfIndex.hxx", bycopy.} = object ## !
                                                                          ## Default
                                                                          ## constructor


proc constructBRepMesh_PairOfIndex*(): BRepMesh_PairOfIndex {.constructor,
    importcpp: "BRepMesh_PairOfIndex(@)", header: "BRepMesh_PairOfIndex.hxx".}
proc Clear*(this: var BRepMesh_PairOfIndex) {.importcpp: "Clear",
    header: "BRepMesh_PairOfIndex.hxx".}
proc Append*(this: var BRepMesh_PairOfIndex; theIndex: Standard_Integer) {.
    importcpp: "Append", header: "BRepMesh_PairOfIndex.hxx".}
proc Prepend*(this: var BRepMesh_PairOfIndex; theIndex: Standard_Integer) {.
    importcpp: "Prepend", header: "BRepMesh_PairOfIndex.hxx".}
proc IsEmpty*(this: BRepMesh_PairOfIndex): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "BRepMesh_PairOfIndex.hxx".}
proc Extent*(this: BRepMesh_PairOfIndex): Standard_Integer {.noSideEffect,
    importcpp: "Extent", header: "BRepMesh_PairOfIndex.hxx".}
proc FirstIndex*(this: BRepMesh_PairOfIndex): Standard_Integer {.noSideEffect,
    importcpp: "FirstIndex", header: "BRepMesh_PairOfIndex.hxx".}
proc LastIndex*(this: BRepMesh_PairOfIndex): Standard_Integer {.noSideEffect,
    importcpp: "LastIndex", header: "BRepMesh_PairOfIndex.hxx".}
proc Index*(this: BRepMesh_PairOfIndex; thePairPos: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Index", header: "BRepMesh_PairOfIndex.hxx".}
proc SetIndex*(this: var BRepMesh_PairOfIndex; thePairPos: Standard_Integer;
              theIndex: Standard_Integer) {.importcpp: "SetIndex",
    header: "BRepMesh_PairOfIndex.hxx".}
proc RemoveIndex*(this: var BRepMesh_PairOfIndex; thePairPos: Standard_Integer) {.
    importcpp: "RemoveIndex", header: "BRepMesh_PairOfIndex.hxx".}