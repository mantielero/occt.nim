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
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  ExtremaPCFOfEPCOfExtPC* {.importcpp: "Extrema_PCFOfEPCOfExtPC",
                           header: "Extrema_PCFOfEPCOfExtPC.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructExtremaPCFOfEPCOfExtPC*(): ExtremaPCFOfEPCOfExtPC {.constructor,
    importcpp: "Extrema_PCFOfEPCOfExtPC(@)", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc constructExtremaPCFOfEPCOfExtPC*(p: GpPnt; c: Adaptor3dCurve): ExtremaPCFOfEPCOfExtPC {.
    constructor, importcpp: "Extrema_PCFOfEPCOfExtPC(@)",
    header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc initialize*(this: var ExtremaPCFOfEPCOfExtPC; c: Adaptor3dCurve) {.
    importcpp: "Initialize", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc setPoint*(this: var ExtremaPCFOfEPCOfExtPC; p: GpPnt) {.importcpp: "SetPoint",
    header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc value*(this: var ExtremaPCFOfEPCOfExtPC; u: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc derivative*(this: var ExtremaPCFOfEPCOfExtPC; u: StandardReal;
                df: var StandardReal): StandardBoolean {.importcpp: "Derivative",
    header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc values*(this: var ExtremaPCFOfEPCOfExtPC; u: StandardReal; f: var StandardReal;
            df: var StandardReal): StandardBoolean {.importcpp: "Values",
    header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc getStateNumber*(this: var ExtremaPCFOfEPCOfExtPC): StandardInteger {.
    importcpp: "GetStateNumber", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc nbExt*(this: ExtremaPCFOfEPCOfExtPC): StandardInteger {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc squareDistance*(this: ExtremaPCFOfEPCOfExtPC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc isMin*(this: ExtremaPCFOfEPCOfExtPC; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc point*(this: ExtremaPCFOfEPCOfExtPC; n: StandardInteger): ExtremaPOnCurv {.
    noSideEffect, importcpp: "Point", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc subIntervalInitialize*(this: var ExtremaPCFOfEPCOfExtPC;
                           theUfirst: StandardReal; theUlast: StandardReal) {.
    importcpp: "SubIntervalInitialize", header: "Extrema_PCFOfEPCOfExtPC.hxx".}
proc searchOfTolerance*(this: var ExtremaPCFOfEPCOfExtPC): StandardReal {.
    importcpp: "SearchOfTolerance", header: "Extrema_PCFOfEPCOfExtPC.hxx".}

