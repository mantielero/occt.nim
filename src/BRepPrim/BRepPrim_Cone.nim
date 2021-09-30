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
  BRepPrimCone* {.importcpp: "BRepPrim_Cone", header: "BRepPrim_Cone.hxx", bycopy.} = object of BRepPrimRevolution


proc `new`*(this: var BRepPrimCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cone::operator new", header: "BRepPrim_Cone.hxx".}
proc `delete`*(this: var BRepPrimCone; theAddress: pointer) {.
    importcpp: "BRepPrim_Cone::operator delete", header: "BRepPrim_Cone.hxx".}
proc `new[]`*(this: var BRepPrimCone; theSize: csize_t): pointer {.
    importcpp: "BRepPrim_Cone::operator new[]", header: "BRepPrim_Cone.hxx".}
proc `delete[]`*(this: var BRepPrimCone; theAddress: pointer) {.
    importcpp: "BRepPrim_Cone::operator delete[]", header: "BRepPrim_Cone.hxx".}
proc `new`*(this: var BRepPrimCone; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepPrim_Cone::operator new", header: "BRepPrim_Cone.hxx".}
proc `delete`*(this: var BRepPrimCone; a2: pointer; a3: pointer) {.
    importcpp: "BRepPrim_Cone::operator delete", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(angle: StandardReal; position: Ax2; height: StandardReal;
                           radius: StandardReal = 0): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(angle: StandardReal): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(angle: StandardReal; apex: Pnt): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(angle: StandardReal; axes: Ax2): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(r1: StandardReal; r2: StandardReal; h: StandardReal): BRepPrimCone {.
    constructor, importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(center: Pnt; r1: StandardReal; r2: StandardReal;
                           h: StandardReal): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc constructBRepPrimCone*(axes: Ax2; r1: StandardReal; r2: StandardReal;
                           h: StandardReal): BRepPrimCone {.constructor,
    importcpp: "BRepPrim_Cone(@)", header: "BRepPrim_Cone.hxx".}
proc makeEmptyLateralFace*(this: BRepPrimCone): TopoDS_Face {.noSideEffect,
    importcpp: "MakeEmptyLateralFace", header: "BRepPrim_Cone.hxx".}