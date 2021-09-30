##  Created on: 1992-03-26
##  Created by: Herve LEGRAND
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

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomLPropCurveTool* {.importcpp: "GeomLProp_CurveTool",
                       header: "GeomLProp_CurveTool.hxx", bycopy.} = object


proc `new`*(this: var GeomLPropCurveTool; theSize: csize_t): pointer {.
    importcpp: "GeomLProp_CurveTool::operator new",
    header: "GeomLProp_CurveTool.hxx".}
proc `delete`*(this: var GeomLPropCurveTool; theAddress: pointer) {.
    importcpp: "GeomLProp_CurveTool::operator delete",
    header: "GeomLProp_CurveTool.hxx".}
proc `new[]`*(this: var GeomLPropCurveTool; theSize: csize_t): pointer {.
    importcpp: "GeomLProp_CurveTool::operator new[]",
    header: "GeomLProp_CurveTool.hxx".}
proc `delete[]`*(this: var GeomLPropCurveTool; theAddress: pointer) {.
    importcpp: "GeomLProp_CurveTool::operator delete[]",
    header: "GeomLProp_CurveTool.hxx".}
proc `new`*(this: var GeomLPropCurveTool; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomLProp_CurveTool::operator new",
    header: "GeomLProp_CurveTool.hxx".}
proc `delete`*(this: var GeomLPropCurveTool; a2: pointer; a3: pointer) {.
    importcpp: "GeomLProp_CurveTool::operator delete",
    header: "GeomLProp_CurveTool.hxx".}
proc value*(c: Handle[GeomCurve]; u: StandardReal; p: var Pnt) {.
    importcpp: "GeomLProp_CurveTool::Value(@)", header: "GeomLProp_CurveTool.hxx".}
proc d1*(c: Handle[GeomCurve]; u: StandardReal; p: var Pnt; v1: var Vec) {.
    importcpp: "GeomLProp_CurveTool::D1(@)", header: "GeomLProp_CurveTool.hxx".}
proc d2*(c: Handle[GeomCurve]; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "GeomLProp_CurveTool::D2(@)", header: "GeomLProp_CurveTool.hxx".}
proc d3*(c: Handle[GeomCurve]; u: StandardReal; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.importcpp: "GeomLProp_CurveTool::D3(@)",
                    header: "GeomLProp_CurveTool.hxx".}
proc continuity*(c: Handle[GeomCurve]): int {.
    importcpp: "GeomLProp_CurveTool::Continuity(@)",
    header: "GeomLProp_CurveTool.hxx".}
proc firstParameter*(c: Handle[GeomCurve]): StandardReal {.
    importcpp: "GeomLProp_CurveTool::FirstParameter(@)",
    header: "GeomLProp_CurveTool.hxx".}
proc lastParameter*(c: Handle[GeomCurve]): StandardReal {.
    importcpp: "GeomLProp_CurveTool::LastParameter(@)",
    header: "GeomLProp_CurveTool.hxx".}