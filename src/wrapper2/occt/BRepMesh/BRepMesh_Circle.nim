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

## ! Describes a 2d circle with a size of only 3 Standard_Real
## ! numbers instead of gp who needs 7 Standard_Real numbers.

type
  BRepMeshCircle* {.importcpp: "BRepMesh_Circle", header: "BRepMesh_Circle.hxx",
                   bycopy.} = object ## ! Default constructor.


proc constructBRepMeshCircle*(): BRepMeshCircle {.constructor,
    importcpp: "BRepMesh_Circle(@)", header: "BRepMesh_Circle.hxx".}
proc constructBRepMeshCircle*(theLocation: GpXY; theRadius: StandardReal): BRepMeshCircle {.
    constructor, importcpp: "BRepMesh_Circle(@)", header: "BRepMesh_Circle.hxx".}
proc setLocation*(this: var BRepMeshCircle; theLocation: GpXY) {.
    importcpp: "SetLocation", header: "BRepMesh_Circle.hxx".}
proc setRadius*(this: var BRepMeshCircle; theRadius: StandardReal) {.
    importcpp: "SetRadius", header: "BRepMesh_Circle.hxx".}
proc location*(this: BRepMeshCircle): GpXY {.noSideEffect, importcpp: "Location",
    header: "BRepMesh_Circle.hxx".}
proc radius*(this: BRepMeshCircle): StandardReal {.noSideEffect, importcpp: "Radius",
    header: "BRepMesh_Circle.hxx".}

