##  Created on: 1992-03-26
##  Created by: Laurent BUCHARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Ax22d,
  ../GeomAbs/GeomAbs_CurveType, ../gp/gp_Trsf2d

discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  IntCurve_IConicTool* {.importcpp: "IntCurve_IConicTool",
                        header: "IntCurve_IConicTool.hxx", bycopy.} = object


proc constructIntCurve_IConicTool*(): IntCurve_IConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurve_IConicTool*(IT: IntCurve_IConicTool): IntCurve_IConicTool {.
    constructor, importcpp: "IntCurve_IConicTool(@)",
    header: "IntCurve_IConicTool.hxx".}
proc constructIntCurve_IConicTool*(E: gp_Elips2d): IntCurve_IConicTool {.
    constructor, importcpp: "IntCurve_IConicTool(@)",
    header: "IntCurve_IConicTool.hxx".}
proc constructIntCurve_IConicTool*(L: gp_Lin2d): IntCurve_IConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurve_IConicTool*(C: gp_Circ2d): IntCurve_IConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurve_IConicTool*(P: gp_Parab2d): IntCurve_IConicTool {.
    constructor, importcpp: "IntCurve_IConicTool(@)",
    header: "IntCurve_IConicTool.hxx".}
proc constructIntCurve_IConicTool*(H: gp_Hypr2d): IntCurve_IConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc Value*(this: IntCurve_IConicTool; X: Standard_Real): gp_Pnt2d {.noSideEffect,
    importcpp: "Value", header: "IntCurve_IConicTool.hxx".}
proc D1*(this: IntCurve_IConicTool; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d) {.
    noSideEffect, importcpp: "D1", header: "IntCurve_IConicTool.hxx".}
proc D2*(this: IntCurve_IConicTool; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d;
        N: var gp_Vec2d) {.noSideEffect, importcpp: "D2",
                        header: "IntCurve_IConicTool.hxx".}
proc Distance*(this: IntCurve_IConicTool; P: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Distance", header: "IntCurve_IConicTool.hxx".}
proc GradDistance*(this: IntCurve_IConicTool; P: gp_Pnt2d): gp_Vec2d {.noSideEffect,
    importcpp: "GradDistance", header: "IntCurve_IConicTool.hxx".}
proc FindParameter*(this: IntCurve_IConicTool; P: gp_Pnt2d): Standard_Real {.
    noSideEffect, importcpp: "FindParameter", header: "IntCurve_IConicTool.hxx".}