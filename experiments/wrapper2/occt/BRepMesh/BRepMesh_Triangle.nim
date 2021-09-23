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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Macro, BRepMesh_DegreeOfFreedom

## ! Light weighted structure representing triangle
## ! of mesh consisting of oriented links.

type
  BRepMesh_Triangle* {.importcpp: "BRepMesh_Triangle",
                      header: "BRepMesh_Triangle.hxx", bycopy.} = object ## ! Default constructor.
    myEdges* {.importc: "myEdges".}: array[3, Standard_Integer]
    myOrientations* {.importc: "myOrientations".}: array[3, Standard_Boolean]
    myMovability* {.importc: "myMovability".}: BRepMesh_DegreeOfFreedom


proc constructBRepMesh_Triangle*(): BRepMesh_Triangle {.constructor,
    importcpp: "BRepMesh_Triangle(@)", header: "BRepMesh_Triangle.hxx".}
proc constructBRepMesh_Triangle*(theEdges: array[3, Standard_Integer];
                                theOrientations: array[3, Standard_Boolean];
                                theMovability: BRepMesh_DegreeOfFreedom): BRepMesh_Triangle {.
    constructor, importcpp: "BRepMesh_Triangle(@)", header: "BRepMesh_Triangle.hxx".}
proc Initialize*(this: var BRepMesh_Triangle; theEdges: array[3, Standard_Integer];
                theOrientations: array[3, Standard_Boolean];
                theMovability: BRepMesh_DegreeOfFreedom) {.
    importcpp: "Initialize", header: "BRepMesh_Triangle.hxx".}
proc Edges*(this: BRepMesh_Triangle; theEdges: array[3, Standard_Integer];
           theOrientations: array[3, Standard_Boolean]) {.noSideEffect,
    importcpp: "Edges", header: "BRepMesh_Triangle.hxx".}
proc Movability*(this: BRepMesh_Triangle): BRepMesh_DegreeOfFreedom {.noSideEffect,
    importcpp: "Movability", header: "BRepMesh_Triangle.hxx".}
proc SetMovability*(this: var BRepMesh_Triangle;
                   theMovability: BRepMesh_DegreeOfFreedom) {.
    importcpp: "SetMovability", header: "BRepMesh_Triangle.hxx".}
proc HashCode*(this: BRepMesh_Triangle; theUpperBound: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "HashCode", header: "BRepMesh_Triangle.hxx".}
proc IsEqual*(this: BRepMesh_Triangle; theOther: BRepMesh_Triangle): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BRepMesh_Triangle.hxx".}
proc `==`*(this: BRepMesh_Triangle; theOther: BRepMesh_Triangle): Standard_Boolean {.
    noSideEffect, importcpp: "(# == #)", header: "BRepMesh_Triangle.hxx".}
## ! Computes a hash code for the given triangle, in the range [1, theUpperBound]
## ! @param theTriangle the triangle which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theTriangle: BRepMesh_Triangle; theUpperBound: Standard_Integer): Standard_Integer =
  discard
