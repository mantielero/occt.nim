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

discard "forward decl of gp_Elips2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  IntCurveIConicTool* {.importcpp: "IntCurve_IConicTool",
                       header: "IntCurve_IConicTool.hxx", bycopy.} = object


proc constructIntCurveIConicTool*(): IntCurveIConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurveIConicTool*(it: IntCurveIConicTool): IntCurveIConicTool {.
    constructor, importcpp: "IntCurve_IConicTool(@)",
    header: "IntCurve_IConicTool.hxx".}
proc constructIntCurveIConicTool*(e: Elips2d): IntCurveIConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurveIConicTool*(L: Lin2d): IntCurveIConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurveIConicTool*(c: Circ2d): IntCurveIConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurveIConicTool*(p: Parab2d): IntCurveIConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc constructIntCurveIConicTool*(h: Hypr2d): IntCurveIConicTool {.constructor,
    importcpp: "IntCurve_IConicTool(@)", header: "IntCurve_IConicTool.hxx".}
proc value*(this: IntCurveIConicTool; x: float): Pnt2d {.noSideEffect,
    importcpp: "Value", header: "IntCurve_IConicTool.hxx".}
proc d1*(this: IntCurveIConicTool; u: float; p: var Pnt2d; t: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "IntCurve_IConicTool.hxx".}
proc d2*(this: IntCurveIConicTool; u: float; p: var Pnt2d; t: var Vec2d; n: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "IntCurve_IConicTool.hxx".}
proc distance*(this: IntCurveIConicTool; p: Pnt2d): float {.noSideEffect,
    importcpp: "Distance", header: "IntCurve_IConicTool.hxx".}
proc gradDistance*(this: IntCurveIConicTool; p: Pnt2d): Vec2d {.noSideEffect,
    importcpp: "GradDistance", header: "IntCurve_IConicTool.hxx".}
proc findParameter*(this: IntCurveIConicTool; p: Pnt2d): float {.noSideEffect,
    importcpp: "FindParameter", header: "IntCurve_IConicTool.hxx".}
