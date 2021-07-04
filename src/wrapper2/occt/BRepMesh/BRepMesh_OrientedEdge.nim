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
  ../Standard/Standard_Macro, BRepMesh_DegreeOfFreedom

## ! Light weighted structure representing simple link.

type
  BRepMesh_OrientedEdge* {.importcpp: "BRepMesh_OrientedEdge",
                          header: "BRepMesh_OrientedEdge.hxx", bycopy.} = object ## !
                                                                            ## Default
                                                                            ## constructor.


proc constructBRepMesh_OrientedEdge*(): BRepMesh_OrientedEdge {.constructor,
    importcpp: "BRepMesh_OrientedEdge(@)", header: "BRepMesh_OrientedEdge.hxx".}
proc constructBRepMesh_OrientedEdge*(theFirstNode: Standard_Integer;
                                    theLastNode: Standard_Integer): BRepMesh_OrientedEdge {.
    constructor, importcpp: "BRepMesh_OrientedEdge(@)",
    header: "BRepMesh_OrientedEdge.hxx".}
proc FirstNode*(this: BRepMesh_OrientedEdge): Standard_Integer {.noSideEffect,
    importcpp: "FirstNode", header: "BRepMesh_OrientedEdge.hxx".}
proc LastNode*(this: BRepMesh_OrientedEdge): Standard_Integer {.noSideEffect,
    importcpp: "LastNode", header: "BRepMesh_OrientedEdge.hxx".}
proc HashCode*(this: BRepMesh_OrientedEdge; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "BRepMesh_OrientedEdge.hxx".}
proc IsEqual*(this: BRepMesh_OrientedEdge; theOther: BRepMesh_OrientedEdge): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_OrientedEdge.hxx".}
proc `==`*(this: BRepMesh_OrientedEdge; Other: BRepMesh_OrientedEdge): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "BRepMesh_OrientedEdge.hxx".}
## ! Computes a hash code for the given oriented edge, in the range [1, theUpperBound]
## ! @param theOrientedEdge the oriented edge which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theOrientedEdge: BRepMesh_OrientedEdge;
              theUpperBound: Standard_Integer): Standard_Integer =
  discard
