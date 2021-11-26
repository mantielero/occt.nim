##  Created on: 1992-11-05
##  Created by: Remi LEQUETTE
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of TopoDS_Face"
type
  BRepPrimCylinder* {.importcpp: "BRepPrim_Cylinder",
                     header: "BRepPrim_Cylinder.hxx", bycopy.} = object of BRepPrimRevolution
    ## !< cylinder radius


proc `new`*(this: var BRepPrimCylinder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cylinder::operator new", header: "BRepPrim_Cylinder.hxx".}
proc `delete`*(this: var BRepPrimCylinder; theAddress: pointer) {.
    importcpp: "BRepPrim_Cylinder::operator delete",
    header: "BRepPrim_Cylinder.hxx".}
proc `new[]`*(this: var BRepPrimCylinder; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cylinder::operator new[]",
    header: "BRepPrim_Cylinder.hxx".}
proc `delete[]`*(this: var BRepPrimCylinder; theAddress: pointer) {.
    importcpp: "BRepPrim_Cylinder::operator delete[]",
    header: "BRepPrim_Cylinder.hxx".}
proc `new`*(this: var BRepPrimCylinder; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Cylinder::operator new", header: "BRepPrim_Cylinder.hxx".}
proc `delete`*(this: var BRepPrimCylinder; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Cylinder::operator delete",
    header: "BRepPrim_Cylinder.hxx".}
proc constructBRepPrimCylinder*(position: Ax2; radius: StandardReal;
                               height: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc constructBRepPrimCylinder*(radius: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc constructBRepPrimCylinder*(center: Pnt; radius: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc constructBRepPrimCylinder*(axes: Ax2; radius: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc constructBRepPrimCylinder*(r: StandardReal; h: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc constructBRepPrimCylinder*(center: Pnt; r: StandardReal; h: StandardReal): BRepPrimCylinder {.
    constructor, importcpp: "BRepPrim_Cylinder(@)", header: "BRepPrim_Cylinder.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimCylinder): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Cylinder.hxx".}