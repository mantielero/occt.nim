##  Copyright (c) 2013 OPEN CASCADE SAS
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

## ! Light weighted structure representing simple link.

type
  BRepMeshOrientedEdge* {.importcpp: "BRepMesh_OrientedEdge",
                         header: "BRepMesh_OrientedEdge.hxx", bycopy.} = object ## !
                                                                           ## Default
                                                                           ## constructor.


proc constructBRepMeshOrientedEdge*(): BRepMeshOrientedEdge {.constructor,
    importcpp: "BRepMesh_OrientedEdge(@)", header: "BRepMesh_OrientedEdge.hxx".}
proc constructBRepMeshOrientedEdge*(theFirstNode: StandardInteger;
                                   theLastNode: StandardInteger): BRepMeshOrientedEdge {.
    constructor, importcpp: "BRepMesh_OrientedEdge(@)",
    header: "BRepMesh_OrientedEdge.hxx".}
proc firstNode*(this: BRepMeshOrientedEdge): StandardInteger {.noSideEffect,
    importcpp: "FirstNode", header: "BRepMesh_OrientedEdge.hxx".}
proc lastNode*(this: BRepMeshOrientedEdge): StandardInteger {.noSideEffect,
    importcpp: "LastNode", header: "BRepMesh_OrientedEdge.hxx".}
proc hashCode*(this: BRepMeshOrientedEdge; theUpperBound: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "HashCode", header: "BRepMesh_OrientedEdge.hxx".}
proc isEqual*(this: BRepMeshOrientedEdge; theOther: BRepMeshOrientedEdge): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_OrientedEdge.hxx".}
proc `==`*(this: BRepMeshOrientedEdge; other: BRepMeshOrientedEdge): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "BRepMesh_OrientedEdge.hxx".}
## ! Computes a hash code for the given oriented edge, in the range [1, theUpperBound]
## ! @param theOrientedEdge the oriented edge which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theOrientedEdge: BRepMeshOrientedEdge;
              theUpperBound: StandardInteger): StandardInteger =
  discard


