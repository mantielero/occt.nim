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

discard "forward decl of IntCurve_PConic"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  IntCurvePConicTool* {.importcpp: "IntCurve_PConicTool",
                       header: "IntCurve_PConicTool.hxx", bycopy.} = object


proc epsX*(c: IntCurvePConic): float {.importcpp: "IntCurve_PConicTool::EpsX(@)",
                                   header: "IntCurve_PConicTool.hxx".}
proc nbSamples*(c: IntCurvePConic): int {.importcpp: "IntCurve_PConicTool::NbSamples(@)",
                                      header: "IntCurve_PConicTool.hxx".}
proc nbSamples*(c: IntCurvePConic; u0: float; u1: float): int {.
    importcpp: "IntCurve_PConicTool::NbSamples(@)",
    header: "IntCurve_PConicTool.hxx".}
proc value*(c: IntCurvePConic; x: float): Pnt2d {.
    importcpp: "IntCurve_PConicTool::Value(@)", header: "IntCurve_PConicTool.hxx".}
proc d1*(c: IntCurvePConic; u: float; p: var Pnt2d; t: var Vec2d) {.
    importcpp: "IntCurve_PConicTool::D1(@)", header: "IntCurve_PConicTool.hxx".}
proc d2*(c: IntCurvePConic; u: float; p: var Pnt2d; t: var Vec2d; n: var Vec2d) {.
    importcpp: "IntCurve_PConicTool::D2(@)", header: "IntCurve_PConicTool.hxx".}
