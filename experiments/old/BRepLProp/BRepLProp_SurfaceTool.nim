##  Created on: 1994-02-24
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BRepLPropSurfaceTool* {.importcpp: "BRepLProp_SurfaceTool",
                         header: "BRepLProp_SurfaceTool.hxx", bycopy.} = object


proc `new`*(this: var BRepLPropSurfaceTool; theSize: csize_t): pointer {.
    importcpp: "BRepLProp_SurfaceTool::operator new",
    header: "BRepLProp_SurfaceTool.hxx".}
proc `delete`*(this: var BRepLPropSurfaceTool; theAddress: pointer) {.
    importcpp: "BRepLProp_SurfaceTool::operator delete",
    header: "BRepLProp_SurfaceTool.hxx".}
proc `new[]`*(this: var BRepLPropSurfaceTool; theSize: csize_t): pointer {.
    importcpp: "BRepLProp_SurfaceTool::operator new[]",
    header: "BRepLProp_SurfaceTool.hxx".}
proc `delete[]`*(this: var BRepLPropSurfaceTool; theAddress: pointer) {.
    importcpp: "BRepLProp_SurfaceTool::operator delete[]",
    header: "BRepLProp_SurfaceTool.hxx".}
proc `new`*(this: var BRepLPropSurfaceTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepLProp_SurfaceTool::operator new",
    header: "BRepLProp_SurfaceTool.hxx".}
proc `delete`*(this: var BRepLPropSurfaceTool; a2: pointer; a3: pointer) {.
    importcpp: "BRepLProp_SurfaceTool::operator delete",
    header: "BRepLProp_SurfaceTool.hxx".}
proc value*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var Pnt) {.
    importcpp: "BRepLProp_SurfaceTool::Value(@)",
    header: "BRepLProp_SurfaceTool.hxx".}
proc d1*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec) {.importcpp: "BRepLProp_SurfaceTool::D1(@)",
                                header: "BRepLProp_SurfaceTool.hxx".}
proc d2*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; duv: var Vec) {.
    importcpp: "BRepLProp_SurfaceTool::D2(@)", header: "BRepLProp_SurfaceTool.hxx".}
proc dn*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; iu: int; iv: int): Vec {.
    importcpp: "BRepLProp_SurfaceTool::DN(@)", header: "BRepLProp_SurfaceTool.hxx".}
proc continuity*(s: BRepAdaptorSurface): int {.
    importcpp: "BRepLProp_SurfaceTool::Continuity(@)",
    header: "BRepLProp_SurfaceTool.hxx".}
proc bounds*(s: BRepAdaptorSurface; u1: var StandardReal; v1: var StandardReal;
            u2: var StandardReal; v2: var StandardReal) {.
    importcpp: "BRepLProp_SurfaceTool::Bounds(@)",
    header: "BRepLProp_SurfaceTool.hxx".}