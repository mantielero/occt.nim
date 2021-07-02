##  Created on: 1992-03-04
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
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Parab2d"
discard "forward decl of gp_Hypr2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Ax22d"
type
  IntCurvePConic* {.importcpp: "IntCurve_PConic", header: "IntCurve_PConic.hxx",
                   bycopy.} = object


proc constructIntCurvePConic*(pc: IntCurvePConic): IntCurvePConic {.constructor,
    importcpp: "IntCurve_PConic(@)", header: "IntCurve_PConic.hxx".}
proc constructIntCurvePConic*(e: GpElips2d): IntCurvePConic {.constructor,
    importcpp: "IntCurve_PConic(@)", header: "IntCurve_PConic.hxx".}
proc constructIntCurvePConic*(c: GpCirc2d): IntCurvePConic {.constructor,
    importcpp: "IntCurve_PConic(@)", header: "IntCurve_PConic.hxx".}
proc constructIntCurvePConic*(p: GpParab2d): IntCurvePConic {.constructor,
    importcpp: "IntCurve_PConic(@)", header: "IntCurve_PConic.hxx".}
proc constructIntCurvePConic*(h: GpHypr2d): IntCurvePConic {.constructor,
    importcpp: "IntCurve_PConic(@)", header: "IntCurve_PConic.hxx".}
proc constructIntCurvePConic*(L: GpLin2d): IntCurvePConic {.constructor,
    importcpp: "IntCurve_PConic(@)", header: "IntCurve_PConic.hxx".}
proc setEpsX*(this: var IntCurvePConic; epsDist: StandardReal) {.importcpp: "SetEpsX",
    header: "IntCurve_PConic.hxx".}
proc setAccuracy*(this: var IntCurvePConic; nb: StandardInteger) {.
    importcpp: "SetAccuracy", header: "IntCurve_PConic.hxx".}
proc accuracy*(this: IntCurvePConic): StandardInteger {.noSideEffect,
    importcpp: "Accuracy", header: "IntCurve_PConic.hxx".}
proc epsX*(this: IntCurvePConic): StandardReal {.noSideEffect, importcpp: "EpsX",
    header: "IntCurve_PConic.hxx".}
proc typeCurve*(this: IntCurvePConic): GeomAbsCurveType {.noSideEffect,
    importcpp: "TypeCurve", header: "IntCurve_PConic.hxx".}
proc axis2*(this: IntCurvePConic): GpAx22d {.noSideEffect, importcpp: "Axis2",
    header: "IntCurve_PConic.hxx".}
proc param1*(this: IntCurvePConic): StandardReal {.noSideEffect, importcpp: "Param1",
    header: "IntCurve_PConic.hxx".}
proc param2*(this: IntCurvePConic): StandardReal {.noSideEffect, importcpp: "Param2",
    header: "IntCurve_PConic.hxx".}

