##  Created on: 1991-02-26
##  Created by: Isabelle GRIGNON
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  ExtremaPCFOfEPCOfExtPC2d* {.importcpp: "Extrema_PCFOfEPCOfExtPC2d",
                             header: "Extrema_PCFOfEPCOfExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructExtremaPCFOfEPCOfExtPC2d*(): ExtremaPCFOfEPCOfExtPC2d {.constructor,
    importcpp: "Extrema_PCFOfEPCOfExtPC2d(@)",
    header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc constructExtremaPCFOfEPCOfExtPC2d*(p: Pnt2d; c: Adaptor2dCurve2d): ExtremaPCFOfEPCOfExtPC2d {.
    constructor, importcpp: "Extrema_PCFOfEPCOfExtPC2d(@)",
    header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc initialize*(this: var ExtremaPCFOfEPCOfExtPC2d; c: Adaptor2dCurve2d) {.
    importcpp: "Initialize", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc setPoint*(this: var ExtremaPCFOfEPCOfExtPC2d; p: Pnt2d) {.importcpp: "SetPoint",
    header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc value*(this: var ExtremaPCFOfEPCOfExtPC2d; u: cfloat; f: var cfloat): bool {.
    importcpp: "Value", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc derivative*(this: var ExtremaPCFOfEPCOfExtPC2d; u: cfloat; df: var cfloat): bool {.
    importcpp: "Derivative", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc values*(this: var ExtremaPCFOfEPCOfExtPC2d; u: cfloat; f: var cfloat; df: var cfloat): bool {.
    importcpp: "Values", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc getStateNumber*(this: var ExtremaPCFOfEPCOfExtPC2d): cint {.
    importcpp: "GetStateNumber", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc nbExt*(this: ExtremaPCFOfEPCOfExtPC2d): cint {.noSideEffect, importcpp: "NbExt",
    header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc squareDistance*(this: ExtremaPCFOfEPCOfExtPC2d; n: cint): cfloat {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc isMin*(this: ExtremaPCFOfEPCOfExtPC2d; n: cint): bool {.noSideEffect,
    importcpp: "IsMin", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc point*(this: ExtremaPCFOfEPCOfExtPC2d; n: cint): ExtremaPOnCurv2d {.noSideEffect,
    importcpp: "Point", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc subIntervalInitialize*(this: var ExtremaPCFOfEPCOfExtPC2d; theUfirst: cfloat;
                           theUlast: cfloat) {.importcpp: "SubIntervalInitialize",
    header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}
proc searchOfTolerance*(this: var ExtremaPCFOfEPCOfExtPC2d): cfloat {.
    importcpp: "SearchOfTolerance", header: "Extrema_PCFOfEPCOfExtPC2d.hxx".}

























