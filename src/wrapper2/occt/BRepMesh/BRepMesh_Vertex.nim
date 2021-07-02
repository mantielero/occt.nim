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

## ! Light weighted structure representing vertex
## ! of the mesh in parametric space. Vertex could be
## ! associated with 3d point stored in external map.

type
  BRepMeshVertex* {.importcpp: "BRepMesh_Vertex", header: "BRepMesh_Vertex.hxx",
                   bycopy.} = object ## ! Default constructor


proc constructBRepMeshVertex*(): BRepMeshVertex {.constructor,
    importcpp: "BRepMesh_Vertex(@)", header: "BRepMesh_Vertex.hxx".}
proc constructBRepMeshVertex*(theUV: GpXY; theLocation3d: StandardInteger;
                             theMovability: BRepMeshDegreeOfFreedom): BRepMeshVertex {.
    constructor, importcpp: "BRepMesh_Vertex(@)", header: "BRepMesh_Vertex.hxx".}
proc constructBRepMeshVertex*(theU: StandardReal; theV: StandardReal;
                             theMovability: BRepMeshDegreeOfFreedom): BRepMeshVertex {.
    constructor, importcpp: "BRepMesh_Vertex(@)", header: "BRepMesh_Vertex.hxx".}
proc initialize*(this: var BRepMeshVertex; theUV: GpXY;
                theLocation3d: StandardInteger;
                theMovability: BRepMeshDegreeOfFreedom) {.importcpp: "Initialize",
    header: "BRepMesh_Vertex.hxx".}
proc coord*(this: BRepMeshVertex): GpXY {.noSideEffect, importcpp: "Coord",
                                      header: "BRepMesh_Vertex.hxx".}
proc changeCoord*(this: var BRepMeshVertex): var GpXY {.importcpp: "ChangeCoord",
    header: "BRepMesh_Vertex.hxx".}
proc location3d*(this: BRepMeshVertex): StandardInteger {.noSideEffect,
    importcpp: "Location3d", header: "BRepMesh_Vertex.hxx".}
proc movability*(this: BRepMeshVertex): BRepMeshDegreeOfFreedom {.noSideEffect,
    importcpp: "Movability", header: "BRepMesh_Vertex.hxx".}
proc setMovability*(this: var BRepMeshVertex; theMovability: BRepMeshDegreeOfFreedom) {.
    importcpp: "SetMovability", header: "BRepMesh_Vertex.hxx".}
proc hashCode*(this: BRepMeshVertex; theUpperBound: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "HashCode", header: "BRepMesh_Vertex.hxx".}
proc isEqual*(this: BRepMeshVertex; theOther: BRepMeshVertex): StandardBoolean {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_Vertex.hxx".}
proc `==`*(this: BRepMeshVertex; other: BRepMeshVertex): StandardBoolean {.
    noSideEffect, importcpp: "(# == #)", header: "BRepMesh_Vertex.hxx".}
## ! Computes a hash code for the given vertex, in the range [1, theUpperBound]
## ! @param theVertex the vertex which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theVertex: BRepMeshVertex; theUpperBound: StandardInteger): StandardInteger =
  discard


