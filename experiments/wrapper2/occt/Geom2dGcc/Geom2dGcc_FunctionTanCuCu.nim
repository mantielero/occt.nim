##  Created on: 1992-02-20
##  Created by: Remy GILET
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
  ../Standard/Standard_Handle, ../Geom2dAdaptor/Geom2dAdaptor_Curve,
  ../gp/gp_Circ2d, Geom2dGcc_Type3, ../math/math_FunctionSetWithDerivatives,
  ../math/math_Vector, ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Circ2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of math_Matrix"
type
  Geom2dGcc_FunctionTanCuCu* {.importcpp: "Geom2dGcc_FunctionTanCuCu",
                              header: "Geom2dGcc_FunctionTanCuCu.hxx", bycopy.} = object of math_FunctionSetWithDerivatives


proc constructGeom2dGcc_FunctionTanCuCu*(Curv1: Geom2dAdaptor_Curve;
                                        Curv2: Geom2dAdaptor_Curve): Geom2dGcc_FunctionTanCuCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc constructGeom2dGcc_FunctionTanCuCu*(Circ1: gp_Circ2d;
                                        Curv2: Geom2dAdaptor_Curve): Geom2dGcc_FunctionTanCuCu {.
    constructor, importcpp: "Geom2dGcc_FunctionTanCuCu(@)",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc InitDerivative*(this: var Geom2dGcc_FunctionTanCuCu; X: math_Vector;
                    Point1: var gp_Pnt2d; Point2: var gp_Pnt2d; Tan1: var gp_Vec2d;
                    Tan2: var gp_Vec2d; D21: var gp_Vec2d; D22: var gp_Vec2d) {.
    importcpp: "InitDerivative", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc NbVariables*(this: Geom2dGcc_FunctionTanCuCu): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc NbEquations*(this: Geom2dGcc_FunctionTanCuCu): Standard_Integer {.noSideEffect,
    importcpp: "NbEquations", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc Value*(this: var Geom2dGcc_FunctionTanCuCu; X: math_Vector; F: var math_Vector): Standard_Boolean {.
    importcpp: "Value", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc Derivatives*(this: var Geom2dGcc_FunctionTanCuCu; X: math_Vector;
                 Deriv: var math_Matrix): Standard_Boolean {.
    importcpp: "Derivatives", header: "Geom2dGcc_FunctionTanCuCu.hxx".}
proc Values*(this: var Geom2dGcc_FunctionTanCuCu; X: math_Vector; F: var math_Vector;
            Deriv: var math_Matrix): Standard_Boolean {.importcpp: "Values",
    header: "Geom2dGcc_FunctionTanCuCu.hxx".}