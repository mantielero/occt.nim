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
  ExtremaPCFOfEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx",
                                       bycopy.} = object of MathFunctionWithDerivative


proc constructExtremaPCFOfEPCOfELPCOfLocateExtPC*(): ExtremaPCFOfEPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc constructExtremaPCFOfEPCOfELPCOfLocateExtPC*(p: GpPnt; c: Adaptor3dCurve): ExtremaPCFOfEPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc initialize*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC; c: Adaptor3dCurve) {.
    importcpp: "Initialize", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc setPoint*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC; p: GpPnt) {.
    importcpp: "SetPoint", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc value*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC; u: StandardReal;
           f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc derivative*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC; u: StandardReal;
                df: var StandardReal): StandardBoolean {.importcpp: "Derivative",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc values*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC; u: StandardReal;
            f: var StandardReal; df: var StandardReal): StandardBoolean {.
    importcpp: "Values", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc getStateNumber*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC): StandardInteger {.
    importcpp: "GetStateNumber", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc nbExt*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC): StandardInteger {.
    noSideEffect, importcpp: "NbExt",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc squareDistance*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc isMin*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc point*(this: ExtremaPCFOfEPCOfELPCOfLocateExtPC; n: StandardInteger): ExtremaPOnCurv {.
    noSideEffect, importcpp: "Point",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc subIntervalInitialize*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC;
                           theUfirst: StandardReal; theUlast: StandardReal) {.
    importcpp: "SubIntervalInitialize",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc searchOfTolerance*(this: var ExtremaPCFOfEPCOfELPCOfLocateExtPC): StandardReal {.
    importcpp: "SearchOfTolerance",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}

