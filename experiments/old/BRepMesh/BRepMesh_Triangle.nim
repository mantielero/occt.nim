##  Created on: 1993-09-23
##  Created by: Didier PIFFAULT
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! Light weighted structure representing triangle
## ! of mesh consisting of oriented links.

type
  BRepMeshTriangle* {.importcpp: "BRepMesh_Triangle",
                     header: "BRepMesh_Triangle.hxx", bycopy.} = object ## ! Default constructor.
    myEdges* {.importc: "myEdges".}: array[3, int]
    myOrientations* {.importc: "myOrientations".}: array[3, bool]
    myMovability* {.importc: "myMovability".}: BRepMeshDegreeOfFreedom


proc constructBRepMeshTriangle*(): BRepMeshTriangle {.constructor,
    importcpp: "BRepMesh_Triangle(@)", header: "BRepMesh_Triangle.hxx".}
proc constructBRepMeshTriangle*(theEdges: array[3, int];
                               theOrientations: array[3, bool];
                               theMovability: BRepMeshDegreeOfFreedom): BRepMeshTriangle {.
    constructor, importcpp: "BRepMesh_Triangle(@)", header: "BRepMesh_Triangle.hxx".}
proc initialize*(this: var BRepMeshTriangle; theEdges: array[3, int];
                theOrientations: array[3, bool];
                theMovability: BRepMeshDegreeOfFreedom) {.importcpp: "Initialize",
    header: "BRepMesh_Triangle.hxx".}
proc edges*(this: BRepMeshTriangle; theEdges: array[3, int];
           theOrientations: array[3, bool]) {.noSideEffect, importcpp: "Edges",
    header: "BRepMesh_Triangle.hxx".}
proc movability*(this: BRepMeshTriangle): BRepMeshDegreeOfFreedom {.noSideEffect,
    importcpp: "Movability", header: "BRepMesh_Triangle.hxx".}
proc setMovability*(this: var BRepMeshTriangle;
                   theMovability: BRepMeshDegreeOfFreedom) {.
    importcpp: "SetMovability", header: "BRepMesh_Triangle.hxx".}
proc hashCode*(this: BRepMeshTriangle; theUpperBound: int): int {.noSideEffect,
    importcpp: "HashCode", header: "BRepMesh_Triangle.hxx".}
proc isEqual*(this: BRepMeshTriangle; theOther: BRepMeshTriangle): bool {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_Triangle.hxx".}
proc `==`*(this: BRepMeshTriangle; theOther: BRepMeshTriangle): bool {.noSideEffect,
    importcpp: "(# == #)", header: "BRepMesh_Triangle.hxx".}
## ! Computes a hash code for the given triangle, in the range [1, theUpperBound]
## ! @param theTriangle the triangle which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theTriangle: BRepMeshTriangle; theUpperBound: int): int =
  discard














































