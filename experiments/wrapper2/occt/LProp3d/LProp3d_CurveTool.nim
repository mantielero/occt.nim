##  Created on: 2002-08-02
##  Created by: Alexander KARTOMIN  (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  LProp3dCurveTool* {.importcpp: "LProp3d_CurveTool",
                     header: "LProp3d_CurveTool.hxx", bycopy.} = object ## ! Computes the point <P> of parameter <U> on the HCurve <C>.


proc value*(c: Handle[Adaptor3dHCurve]; u: float; p: var Pnt) {.
    importcpp: "LProp3d_CurveTool::Value(@)", header: "LProp3d_CurveTool.hxx".}
proc d1*(c: Handle[Adaptor3dHCurve]; u: float; p: var Pnt; v1: var Vec) {.
    importcpp: "LProp3d_CurveTool::D1(@)", header: "LProp3d_CurveTool.hxx".}
proc d2*(c: Handle[Adaptor3dHCurve]; u: float; p: var Pnt; v1: var Vec; v2: var Vec) {.
    importcpp: "LProp3d_CurveTool::D2(@)", header: "LProp3d_CurveTool.hxx".}
proc d3*(c: Handle[Adaptor3dHCurve]; u: float; p: var Pnt; v1: var Vec; v2: var Vec;
        v3: var Vec) {.importcpp: "LProp3d_CurveTool::D3(@)",
                    header: "LProp3d_CurveTool.hxx".}
proc continuity*(c: Handle[Adaptor3dHCurve]): int {.
    importcpp: "LProp3d_CurveTool::Continuity(@)", header: "LProp3d_CurveTool.hxx".}
proc firstParameter*(c: Handle[Adaptor3dHCurve]): float {.
    importcpp: "LProp3d_CurveTool::FirstParameter(@)",
    header: "LProp3d_CurveTool.hxx".}
proc lastParameter*(c: Handle[Adaptor3dHCurve]): float {.
    importcpp: "LProp3d_CurveTool::LastParameter(@)",
    header: "LProp3d_CurveTool.hxx".}
