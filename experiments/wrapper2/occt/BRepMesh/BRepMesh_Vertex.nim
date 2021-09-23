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
  ../Standard/Standard_Macro, ../gp/gp_XY, BRepMesh_DegreeOfFreedom,
  ../Precision/Precision

## ! Light weighted structure representing vertex
## ! of the mesh in parametric space. Vertex could be
## ! associated with 3d point stored in external map.

type
  BRepMesh_Vertex* {.importcpp: "BRepMesh_Vertex", header: "BRepMesh_Vertex.hxx",
                    bycopy.} = object ## ! Default constructor


proc constructBRepMesh_Vertex*(): BRepMesh_Vertex {.constructor,
    importcpp: "BRepMesh_Vertex(@)", header: "BRepMesh_Vertex.hxx".}
proc constructBRepMesh_Vertex*(theUV: gp_XY; theLocation3d: Standard_Integer;
                              theMovability: BRepMesh_DegreeOfFreedom): BRepMesh_Vertex {.
    constructor, importcpp: "BRepMesh_Vertex(@)", header: "BRepMesh_Vertex.hxx".}
proc constructBRepMesh_Vertex*(theU: Standard_Real; theV: Standard_Real;
                              theMovability: BRepMesh_DegreeOfFreedom): BRepMesh_Vertex {.
    constructor, importcpp: "BRepMesh_Vertex(@)", header: "BRepMesh_Vertex.hxx".}
proc Initialize*(this: var BRepMesh_Vertex; theUV: gp_XY;
                theLocation3d: Standard_Integer;
                theMovability: BRepMesh_DegreeOfFreedom) {.
    importcpp: "Initialize", header: "BRepMesh_Vertex.hxx".}
proc Coord*(this: BRepMesh_Vertex): gp_XY {.noSideEffect, importcpp: "Coord",
                                        header: "BRepMesh_Vertex.hxx".}
proc ChangeCoord*(this: var BRepMesh_Vertex): var gp_XY {.importcpp: "ChangeCoord",
    header: "BRepMesh_Vertex.hxx".}
proc Location3d*(this: BRepMesh_Vertex): Standard_Integer {.noSideEffect,
    importcpp: "Location3d", header: "BRepMesh_Vertex.hxx".}
proc Movability*(this: BRepMesh_Vertex): BRepMesh_DegreeOfFreedom {.noSideEffect,
    importcpp: "Movability", header: "BRepMesh_Vertex.hxx".}
proc SetMovability*(this: var BRepMesh_Vertex;
                   theMovability: BRepMesh_DegreeOfFreedom) {.
    importcpp: "SetMovability", header: "BRepMesh_Vertex.hxx".}
proc HashCode*(this: BRepMesh_Vertex; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "BRepMesh_Vertex.hxx".}
proc IsEqual*(this: BRepMesh_Vertex; theOther: BRepMesh_Vertex): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_Vertex.hxx".}
proc `==`*(this: BRepMesh_Vertex; Other: BRepMesh_Vertex): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "BRepMesh_Vertex.hxx".}
## ! Computes a hash code for the given vertex, in the range [1, theUpperBound]
## ! @param theVertex the vertex which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theVertex: BRepMesh_Vertex; theUpperBound: Standard_Integer): Standard_Integer =
  discard
