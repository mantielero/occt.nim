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
  ../gp/gp_Lin2d, ../math/math_Function, ../math/math_MultipleVarFunction,
  ../Adaptor2d/Adaptor2d_Curve2d

discard "forward decl of gp_Pnt2d"
type
  GCPnts_DistFunction2d* {.importcpp: "GCPnts_DistFunction2d",
                          header: "GCPnts_DistFunction2d.hxx", bycopy.} = object of math_Function


proc constructGCPnts_DistFunction2d*(theCurve: Adaptor2d_Curve2d;
                                    U1: Standard_Real; U2: Standard_Real): GCPnts_DistFunction2d {.
    constructor, importcpp: "GCPnts_DistFunction2d(@)",
    header: "GCPnts_DistFunction2d.hxx".}
proc constructGCPnts_DistFunction2d*(theOther: GCPnts_DistFunction2d): GCPnts_DistFunction2d {.
    constructor, importcpp: "GCPnts_DistFunction2d(@)",
    header: "GCPnts_DistFunction2d.hxx".}
proc Value*(this: var GCPnts_DistFunction2d; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GCPnts_DistFunction2d.hxx".}
##
## ! The same as class GCPnts_DistFunction2d,
## ! but it can be used in minimization algorithms that
## ! requires multi variable function

type
  GCPnts_DistFunction2dMV* {.importcpp: "GCPnts_DistFunction2dMV",
                            header: "GCPnts_DistFunction2d.hxx", bycopy.} = object of math_MultipleVarFunction


proc constructGCPnts_DistFunction2dMV*(theCurvLinDist: var GCPnts_DistFunction2d): GCPnts_DistFunction2dMV {.
    constructor, importcpp: "GCPnts_DistFunction2dMV(@)",
    header: "GCPnts_DistFunction2d.hxx".}
proc Value*(this: var GCPnts_DistFunction2dMV; X: math_Vector; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "GCPnts_DistFunction2d.hxx".}
proc NbVariables*(this: GCPnts_DistFunction2dMV): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "GCPnts_DistFunction2d.hxx".}
