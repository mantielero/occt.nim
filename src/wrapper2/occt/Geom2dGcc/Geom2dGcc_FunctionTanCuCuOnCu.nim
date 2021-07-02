##  Created on: 1991-05-13
##  Created by: Laurent PAINNOT
##  Copyright (c) 1991-1999 Matra Datavision
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  Geom2dGccFunctionTanCuCuOnCu* {.importcpp: "Geom2dGcc_FunctionTanCuCuOnCu",
                                 header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx",
                                 bycopy.} = object of MathFunctionSetWithDerivatives


proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: Geom2dAdaptorCurve;
    c2: Geom2dAdaptorCurve; onCi: GpCirc2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: GpCirc2d; c2: Geom2dAdaptorCurve;
    onCi: GpCirc2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(l1: GpLin2d; c2: Geom2dAdaptorCurve;
    onCi: GpCirc2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: Geom2dAdaptorCurve; p2: GpPnt2d;
    onCi: GpCirc2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: Geom2dAdaptorCurve;
    c2: Geom2dAdaptorCurve; onLi: GpLin2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: GpCirc2d; c2: Geom2dAdaptorCurve;
    onLi: GpLin2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(l1: GpLin2d; c2: Geom2dAdaptorCurve;
    onLi: GpLin2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: Geom2dAdaptorCurve; p2: GpPnt2d;
    onLi: GpLin2d; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: Geom2dAdaptorCurve;
    c2: Geom2dAdaptorCurve; onCu: Geom2dAdaptorCurve; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: GpCirc2d; c2: Geom2dAdaptorCurve;
    onCu: Geom2dAdaptorCurve; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(l1: GpLin2d; c2: Geom2dAdaptorCurve;
    onCu: Geom2dAdaptorCurve; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuOnCu*(c1: Geom2dAdaptorCurve; p1: GpPnt2d;
    onCu: Geom2dAdaptorCurve; rad: StandardReal): Geom2dGccFunctionTanCuCuOnCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuOnCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc initDerivative*(this: var Geom2dGccFunctionTanCuCuOnCu; x: MathVector;
                    point1: var GpPnt2d; point2: var GpPnt2d; point3: var GpPnt2d;
                    tan1: var GpVec2d; tan2: var GpVec2d; tan3: var GpVec2d;
                    d21: var GpVec2d; d22: var GpVec2d; d23: var GpVec2d) {.
    importcpp: "InitDerivative", header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc nbVariables*(this: Geom2dGccFunctionTanCuCuOnCu): StandardInteger {.
    noSideEffect, importcpp: "NbVariables",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc nbEquations*(this: Geom2dGccFunctionTanCuCuOnCu): StandardInteger {.
    noSideEffect, importcpp: "NbEquations",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc value*(this: var Geom2dGccFunctionTanCuCuOnCu; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc derivatives*(this: var Geom2dGccFunctionTanCuCuOnCu; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}
proc values*(this: var Geom2dGccFunctionTanCuCuOnCu; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "Geom2dGcc_FunctionTanCuCuOnCu.hxx".}

