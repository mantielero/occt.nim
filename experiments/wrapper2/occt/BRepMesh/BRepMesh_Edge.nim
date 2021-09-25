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

## ! Light weighted structure representing link of the mesh.

type
  BRepMeshEdge* {.importcpp: "BRepMesh_Edge", header: "BRepMesh_Edge.hxx", bycopy.} = object of BRepMeshOrientedEdge ##
                                                                                                           ## !
                                                                                                           ## Default
                                                                                                           ## constructor.


proc constructBRepMeshEdge*(): BRepMeshEdge {.constructor,
    importcpp: "BRepMesh_Edge(@)", header: "BRepMesh_Edge.hxx".}
proc constructBRepMeshEdge*(theFirstNode: int; theLastNode: int;
                           theMovability: BRepMeshDegreeOfFreedom): BRepMeshEdge {.
    constructor, importcpp: "BRepMesh_Edge(@)", header: "BRepMesh_Edge.hxx".}
proc movability*(this: BRepMeshEdge): BRepMeshDegreeOfFreedom {.noSideEffect,
    importcpp: "Movability", header: "BRepMesh_Edge.hxx".}
proc setMovability*(this: var BRepMeshEdge; theMovability: BRepMeshDegreeOfFreedom) {.
    importcpp: "SetMovability", header: "BRepMesh_Edge.hxx".}
proc isSameOrientation*(this: BRepMeshEdge; theOther: BRepMeshEdge): bool {.
    noSideEffect, importcpp: "IsSameOrientation", header: "BRepMesh_Edge.hxx".}
proc isEqual*(this: BRepMeshEdge; theOther: BRepMeshEdge): bool {.noSideEffect,
    importcpp: "IsEqual", header: "BRepMesh_Edge.hxx".}
proc `==`*(this: BRepMeshEdge; other: BRepMeshEdge): bool {.noSideEffect,
    importcpp: "(# == #)", header: "BRepMesh_Edge.hxx".}
## ! Computes a hash code for the given edge, in the range [1, theUpperBound]
## ! @param theEdge the edge which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theEdge: BRepMeshEdge; theUpperBound: int): int =
  discard

