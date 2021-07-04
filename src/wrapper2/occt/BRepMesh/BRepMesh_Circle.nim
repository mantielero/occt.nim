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
  ../Standard/Standard_Macro, ../gp/gp_XY

## ! Describes a 2d circle with a size of only 3 Standard_Real
## ! numbers instead of gp who needs 7 Standard_Real numbers.

type
  BRepMesh_Circle* {.importcpp: "BRepMesh_Circle", header: "BRepMesh_Circle.hxx",
                    bycopy.} = object ## ! Default constructor.


proc constructBRepMesh_Circle*(): BRepMesh_Circle {.constructor,
    importcpp: "BRepMesh_Circle(@)", header: "BRepMesh_Circle.hxx".}
proc constructBRepMesh_Circle*(theLocation: gp_XY; theRadius: Standard_Real): BRepMesh_Circle {.
    constructor, importcpp: "BRepMesh_Circle(@)", header: "BRepMesh_Circle.hxx".}
proc SetLocation*(this: var BRepMesh_Circle; theLocation: gp_XY) {.
    importcpp: "SetLocation", header: "BRepMesh_Circle.hxx".}
proc SetRadius*(this: var BRepMesh_Circle; theRadius: Standard_Real) {.
    importcpp: "SetRadius", header: "BRepMesh_Circle.hxx".}
proc Location*(this: BRepMesh_Circle): gp_XY {.noSideEffect, importcpp: "Location",
    header: "BRepMesh_Circle.hxx".}
proc Radius*(this: BRepMesh_Circle): Standard_Real {.noSideEffect,
    importcpp: "Radius", header: "BRepMesh_Circle.hxx".}