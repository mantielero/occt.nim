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
  Geom2dGccFunctionTanCuCuCu* {.importcpp: "Geom2dGcc_FunctionTanCuCuCu",
                               header: "Geom2dGcc_FunctionTanCuCuCu.hxx", bycopy.} = object of MathFunctionSetWithDerivatives


proc constructGeom2dGccFunctionTanCuCuCu*(c1: Geom2dAdaptorCurve;
    c2: Geom2dAdaptorCurve; c3: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCuCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(c1: Circ2d; c2: Geom2dAdaptorCurve;
    c3: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(c1: Circ2d; c2: Circ2d;
    c3: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(c1: Circ2d; l2: Lin2d;
    c3: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(l1: Lin2d; l2: Lin2d;
    c3: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(l1: Lin2d; c2: Geom2dAdaptorCurve;
    c3: Geom2dAdaptorCurve): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(c1: Circ2d; c2: Geom2dAdaptorCurve;
    p3: Pnt2d): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(l1: Lin2d; c2: Geom2dAdaptorCurve;
    p3: Pnt2d): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc constructGeom2dGccFunctionTanCuCuCu*(c1: Geom2dAdaptorCurve; p2: Pnt2d;
    p3: Pnt2d): Geom2dGccFunctionTanCuCuCu {.constructor,
    importcpp: "Geom2dGcc_FunctionTanCuCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc initDerivative*(this: var Geom2dGccFunctionTanCuCuCu; x: MathVector;
                    point1: var Pnt2d; point2: var Pnt2d; point3: var Pnt2d;
                    tan1: var Vec2d; tan2: var Vec2d; tan3: var Vec2d; d21: var Vec2d;
                    d22: var Vec2d; d23: var Vec2d) {.importcpp: "InitDerivative",
    header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc nbVariables*(this: Geom2dGccFunctionTanCuCuCu): int {.noSideEffect,
    importcpp: "NbVariables", header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc nbEquations*(this: Geom2dGccFunctionTanCuCuCu): int {.noSideEffect,
    importcpp: "NbEquations", header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc value*(this: var Geom2dGccFunctionTanCuCuCu; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc derivatives*(this: var Geom2dGccFunctionTanCuCuCu; x: MathVector;
                 d: var MathMatrix): bool {.importcpp: "Derivatives", header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
proc values*(this: var Geom2dGccFunctionTanCuCuCu; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "Geom2dGcc_FunctionTanCuCuCu.hxx".}
