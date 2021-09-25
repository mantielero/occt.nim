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

discard "forward decl of gp_Pnt2d"
type
  GCPntsDistFunction2d* {.importcpp: "GCPnts_DistFunction2d",
                         header: "GCPnts_DistFunction2d.hxx", bycopy.} = object of MathFunction


proc constructGCPntsDistFunction2d*(theCurve: Adaptor2dCurve2d; u1: float; u2: float): GCPntsDistFunction2d {.
    constructor, importcpp: "GCPnts_DistFunction2d(@)",
    header: "GCPnts_DistFunction2d.hxx".}
proc constructGCPntsDistFunction2d*(theOther: GCPntsDistFunction2d): GCPntsDistFunction2d {.
    constructor, importcpp: "GCPnts_DistFunction2d(@)",
    header: "GCPnts_DistFunction2d.hxx".}
proc value*(this: var GCPntsDistFunction2d; x: float; f: var float): bool {.
    importcpp: "Value", header: "GCPnts_DistFunction2d.hxx".}
##
## ! The same as class GCPnts_DistFunction2d,
## ! but it can be used in minimization algorithms that
## ! requires multi variable function

type
  GCPntsDistFunction2dMV* {.importcpp: "GCPnts_DistFunction2dMV",
                           header: "GCPnts_DistFunction2d.hxx", bycopy.} = object of MathMultipleVarFunction


proc constructGCPntsDistFunction2dMV*(theCurvLinDist: var GCPntsDistFunction2d): GCPntsDistFunction2dMV {.
    constructor, importcpp: "GCPnts_DistFunction2dMV(@)",
    header: "GCPnts_DistFunction2d.hxx".}
proc value*(this: var GCPntsDistFunction2dMV; x: MathVector; f: var float): bool {.
    importcpp: "Value", header: "GCPnts_DistFunction2d.hxx".}
proc nbVariables*(this: GCPntsDistFunction2dMV): int {.noSideEffect,
    importcpp: "NbVariables", header: "GCPnts_DistFunction2d.hxx".}

