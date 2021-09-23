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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BRepLProp_CurveTool* {.importcpp: "BRepLProp_CurveTool",
                        header: "BRepLProp_CurveTool.hxx", bycopy.} = object ## ! Computes the point <P> of
                                                                        ## parameter <U> on the curve <C>.


proc Value*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt) {.
    importcpp: "BRepLProp_CurveTool::Value(@)", header: "BRepLProp_CurveTool.hxx".}
proc D1*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "BRepLProp_CurveTool::D1(@)", header: "BRepLProp_CurveTool.hxx".}
proc D2*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec) {.importcpp: "BRepLProp_CurveTool::D2(@)",
                       header: "BRepLProp_CurveTool.hxx".}
proc D3*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec;
        V2: var gp_Vec; V3: var gp_Vec) {.importcpp: "BRepLProp_CurveTool::D3(@)",
                                    header: "BRepLProp_CurveTool.hxx".}
proc Continuity*(C: BRepAdaptor_Curve): Standard_Integer {.
    importcpp: "BRepLProp_CurveTool::Continuity(@)",
    header: "BRepLProp_CurveTool.hxx".}
proc FirstParameter*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "BRepLProp_CurveTool::FirstParameter(@)",
    header: "BRepLProp_CurveTool.hxx".}
proc LastParameter*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "BRepLProp_CurveTool::LastParameter(@)",
    header: "BRepLProp_CurveTool.hxx".}