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

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BRepLPropCurveTool* {.importcpp: "BRepLProp_CurveTool",
                       header: "BRepLProp_CurveTool.hxx", bycopy.} = object ## ! Computes the point <P> of parameter <U> on the curve <C>.


proc value*(c: BRepAdaptorCurve; u: float; p: var Pnt) {.
    importcpp: "BRepLProp_CurveTool::Value(@)", header: "BRepLProp_CurveTool.hxx".}
proc d1*(c: BRepAdaptorCurve; u: float; p: var Pnt; v1: var Vec) {.
    importcpp: "BRepLProp_CurveTool::D1(@)", header: "BRepLProp_CurveTool.hxx".}
proc d2*(c: BRepAdaptorCurve; u: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "BRepLProp_CurveTool::D2(@)", header: "BRepLProp_CurveTool.hxx".}
proc d3*(c: BRepAdaptorCurve; u: float; p: var Pnt; v1: var Vec; v2: var Vec; v3: var Vec) {.
    importcpp: "BRepLProp_CurveTool::D3(@)", header: "BRepLProp_CurveTool.hxx".}
proc continuity*(c: BRepAdaptorCurve): int {.
    importcpp: "BRepLProp_CurveTool::Continuity(@)",
    header: "BRepLProp_CurveTool.hxx".}
proc firstParameter*(c: BRepAdaptorCurve): float {.
    importcpp: "BRepLProp_CurveTool::FirstParameter(@)",
    header: "BRepLProp_CurveTool.hxx".}
proc lastParameter*(c: BRepAdaptorCurve): float {.
    importcpp: "BRepLProp_CurveTool::LastParameter(@)",
    header: "BRepLProp_CurveTool.hxx".}
