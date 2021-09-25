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

discard "forward decl of gp_Pnt"
type
  GCPntsDistFunction* {.importcpp: "GCPnts_DistFunction",
                       header: "GCPnts_DistFunction.hxx", bycopy.} = object of MathFunction


proc constructGCPntsDistFunction*(theCurve: Adaptor3dCurve; u1: float; u2: float): GCPntsDistFunction {.
    constructor, importcpp: "GCPnts_DistFunction(@)",
    header: "GCPnts_DistFunction.hxx".}
proc constructGCPntsDistFunction*(theOther: GCPntsDistFunction): GCPntsDistFunction {.
    constructor, importcpp: "GCPnts_DistFunction(@)",
    header: "GCPnts_DistFunction.hxx".}
proc value*(this: var GCPntsDistFunction; x: float; f: var float): bool {.
    importcpp: "Value", header: "GCPnts_DistFunction.hxx".}
##
## ! The same as class GCPnts_DistFunction, but it can be used in minimization algorithms that
## ! requires multi variable function

type
  GCPntsDistFunctionMV* {.importcpp: "GCPnts_DistFunctionMV",
                         header: "GCPnts_DistFunction.hxx", bycopy.} = object of MathMultipleVarFunction


proc constructGCPntsDistFunctionMV*(theCurvLinDist: var GCPntsDistFunction): GCPntsDistFunctionMV {.
    constructor, importcpp: "GCPnts_DistFunctionMV(@)",
    header: "GCPnts_DistFunction.hxx".}
proc value*(this: var GCPntsDistFunctionMV; x: MathVector; f: var float): bool {.
    importcpp: "Value", header: "GCPnts_DistFunction.hxx".}
proc nbVariables*(this: GCPntsDistFunctionMV): int {.noSideEffect,
    importcpp: "NbVariables", header: "GCPnts_DistFunction.hxx".}

