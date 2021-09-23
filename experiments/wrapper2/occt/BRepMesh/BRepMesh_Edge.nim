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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Macro, BRepMesh_DegreeOfFreedom, BRepMesh_OrientedEdge

## ! Light weighted structure representing link of the mesh.

type
  BRepMesh_Edge* {.importcpp: "BRepMesh_Edge", header: "BRepMesh_Edge.hxx", bycopy.} = object of BRepMesh_OrientedEdge ##
                                                                                                             ## !
                                                                                                             ## Default
                                                                                                             ## constructor.


proc constructBRepMesh_Edge*(): BRepMesh_Edge {.constructor,
    importcpp: "BRepMesh_Edge(@)", header: "BRepMesh_Edge.hxx".}
proc constructBRepMesh_Edge*(theFirstNode: Standard_Integer;
                            theLastNode: Standard_Integer;
                            theMovability: BRepMesh_DegreeOfFreedom): BRepMesh_Edge {.
    constructor, importcpp: "BRepMesh_Edge(@)", header: "BRepMesh_Edge.hxx".}
proc Movability*(this: BRepMesh_Edge): BRepMesh_DegreeOfFreedom {.noSideEffect,
    importcpp: "Movability", header: "BRepMesh_Edge.hxx".}
proc SetMovability*(this: var BRepMesh_Edge; theMovability: BRepMesh_DegreeOfFreedom) {.
    importcpp: "SetMovability", header: "BRepMesh_Edge.hxx".}
proc IsSameOrientation*(this: BRepMesh_Edge; theOther: BRepMesh_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsSameOrientation", header: "BRepMesh_Edge.hxx".}
proc IsEqual*(this: BRepMesh_Edge; theOther: BRepMesh_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_Edge.hxx".}
proc `==`*(this: BRepMesh_Edge; Other: BRepMesh_Edge): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "BRepMesh_Edge.hxx".}
## ! Computes a hash code for the given edge, in the range [1, theUpperBound]
## ! @param theEdge the edge which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theEdge: BRepMesh_Edge; theUpperBound: Standard_Integer): Standard_Integer =
  discard
