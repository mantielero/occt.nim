##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dGcc_CurveTool* {.importcpp: "Geom2dGcc_CurveTool",
                        header: "Geom2dGcc_CurveTool.hxx", bycopy.} = object


proc FirstParameter*(C: Geom2dAdaptor_Curve): Standard_Real {.
    importcpp: "Geom2dGcc_CurveTool::FirstParameter(@)",
    header: "Geom2dGcc_CurveTool.hxx".}
proc LastParameter*(C: Geom2dAdaptor_Curve): Standard_Real {.
    importcpp: "Geom2dGcc_CurveTool::LastParameter(@)",
    header: "Geom2dGcc_CurveTool.hxx".}
proc EpsX*(C: Geom2dAdaptor_Curve; Tol: Standard_Real): Standard_Real {.
    importcpp: "Geom2dGcc_CurveTool::EpsX(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc NbSamples*(C: Geom2dAdaptor_Curve): Standard_Integer {.
    importcpp: "Geom2dGcc_CurveTool::NbSamples(@)",
    header: "Geom2dGcc_CurveTool.hxx".}
proc Value*(C: Geom2dAdaptor_Curve; X: Standard_Real): gp_Pnt2d {.
    importcpp: "Geom2dGcc_CurveTool::Value(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc D1*(C: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d) {.
    importcpp: "Geom2dGcc_CurveTool::D1(@)", header: "Geom2dGcc_CurveTool.hxx".}
proc D2*(C: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d;
        N: var gp_Vec2d) {.importcpp: "Geom2dGcc_CurveTool::D2(@)",
                        header: "Geom2dGcc_CurveTool.hxx".}
proc D3*(C: Geom2dAdaptor_Curve; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d;
        N: var gp_Vec2d; dN: var gp_Vec2d) {.importcpp: "Geom2dGcc_CurveTool::D3(@)",
                                       header: "Geom2dGcc_CurveTool.hxx".}