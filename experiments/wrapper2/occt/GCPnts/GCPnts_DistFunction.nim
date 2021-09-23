##  Copyright (c) 2014-2014 OPEN CASCADE SAS
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
  ../gp/gp_Lin, ../math/math_Function, ../math/math_MultipleVarFunction,
  ../Adaptor3d/Adaptor3d_Curve

discard "forward decl of gp_Pnt"
type
  GCPnts_DistFunction* {.importcpp: "GCPnts_DistFunction",
                        header: "GCPnts_DistFunction.hxx", bycopy.} = object of math_Function


proc constructGCPnts_DistFunction*(theCurve: Adaptor3d_Curve; U1: Standard_Real;
                                  U2: Standard_Real): GCPnts_DistFunction {.
    constructor, importcpp: "GCPnts_DistFunction(@)",
    header: "GCPnts_DistFunction.hxx".}
proc constructGCPnts_DistFunction*(theOther: GCPnts_DistFunction): GCPnts_DistFunction {.
    constructor, importcpp: "GCPnts_DistFunction(@)",
    header: "GCPnts_DistFunction.hxx".}
proc Value*(this: var GCPnts_DistFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GCPnts_DistFunction.hxx".}
##
## ! The same as class GCPnts_DistFunction, but it can be used in minimization algorithms that
## ! requires multi variable function

type
  GCPnts_DistFunctionMV* {.importcpp: "GCPnts_DistFunctionMV",
                          header: "GCPnts_DistFunction.hxx", bycopy.} = object of math_MultipleVarFunction


proc constructGCPnts_DistFunctionMV*(theCurvLinDist: var GCPnts_DistFunction): GCPnts_DistFunctionMV {.
    constructor, importcpp: "GCPnts_DistFunctionMV(@)",
    header: "GCPnts_DistFunction.hxx".}
proc Value*(this: var GCPnts_DistFunctionMV; X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GCPnts_DistFunction.hxx".}
proc NbVariables*(this: GCPnts_DistFunctionMV): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "GCPnts_DistFunction.hxx".}
