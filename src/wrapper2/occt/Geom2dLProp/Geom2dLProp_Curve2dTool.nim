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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dLProp_Curve2dTool* {.importcpp: "Geom2dLProp_Curve2dTool",
                            header: "Geom2dLProp_Curve2dTool.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Computes
                                                                                ## the
                                                                                ## point
                                                                                ## <P>
                                                                                ## of
                                                                                ## parameter
                                                                                ## <U>
                                                                                ## on
                                                                                ## the
                                                                                ## curve
                                                                                ## <C>.


proc Value*(C: handle[Geom2d_Curve]; U: Standard_Real; P: var gp_Pnt2d) {.
    importcpp: "Geom2dLProp_Curve2dTool::Value(@)",
    header: "Geom2dLProp_Curve2dTool.hxx".}
proc D1*(C: handle[Geom2d_Curve]; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d) {.
    importcpp: "Geom2dLProp_Curve2dTool::D1(@)",
    header: "Geom2dLProp_Curve2dTool.hxx".}
proc D2*(C: handle[Geom2d_Curve]; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d) {.importcpp: "Geom2dLProp_Curve2dTool::D2(@)",
                         header: "Geom2dLProp_Curve2dTool.hxx".}
proc D3*(C: handle[Geom2d_Curve]; U: Standard_Real; P: var gp_Pnt2d; V1: var gp_Vec2d;
        V2: var gp_Vec2d; V3: var gp_Vec2d) {.importcpp: "Geom2dLProp_Curve2dTool::D3(@)",
                                        header: "Geom2dLProp_Curve2dTool.hxx".}
proc Continuity*(C: handle[Geom2d_Curve]): Standard_Integer {.
    importcpp: "Geom2dLProp_Curve2dTool::Continuity(@)",
    header: "Geom2dLProp_Curve2dTool.hxx".}
proc FirstParameter*(C: handle[Geom2d_Curve]): Standard_Real {.
    importcpp: "Geom2dLProp_Curve2dTool::FirstParameter(@)",
    header: "Geom2dLProp_Curve2dTool.hxx".}
proc LastParameter*(C: handle[Geom2d_Curve]): Standard_Real {.
    importcpp: "Geom2dLProp_Curve2dTool::LastParameter(@)",
    header: "Geom2dLProp_Curve2dTool.hxx".}