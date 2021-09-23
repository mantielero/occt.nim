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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  LProp3d_CurveTool* {.importcpp: "LProp3d_CurveTool",
                      header: "LProp3d_CurveTool.hxx", bycopy.} = object ## ! Computes the point <P> of parameter <U> on the HCurve <C>.


proc Value*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "LProp3d_CurveTool::Value(@)", header: "LProp3d_CurveTool.hxx".}
proc D1*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "LProp3d_CurveTool::D1(@)", header: "LProp3d_CurveTool.hxx".}
proc D2*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "LProp3d_CurveTool::D2(@)",
                       header: "LProp3d_CurveTool.hxx".}
proc D3*(C: handle[Adaptor3d_HCurve]; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "LProp3d_CurveTool::D3(@)",
                                    header: "LProp3d_CurveTool.hxx".}
proc Continuity*(C: handle[Adaptor3d_HCurve]): Standard_Integer {.
    importcpp: "LProp3d_CurveTool::Continuity(@)", header: "LProp3d_CurveTool.hxx".}
proc FirstParameter*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "LProp3d_CurveTool::FirstParameter(@)",
    header: "LProp3d_CurveTool.hxx".}
proc LastParameter*(C: handle[Adaptor3d_HCurve]): Standard_Real {.
    importcpp: "LProp3d_CurveTool::LastParameter(@)",
    header: "LProp3d_CurveTool.hxx".}