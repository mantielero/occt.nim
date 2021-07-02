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
  ExtremaPCLocFOfLocEPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d",
      header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructExtremaPCLocFOfLocEPCOfLocateExtPC2d*(): ExtremaPCLocFOfLocEPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc constructExtremaPCLocFOfLocEPCOfLocateExtPC2d*(p: GpPnt2d; c: Adaptor2dCurve2d): ExtremaPCLocFOfLocEPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc initialize*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; c: Adaptor2dCurve2d) {.
    importcpp: "Initialize", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc setPoint*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; p: GpPnt2d) {.
    importcpp: "SetPoint", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc value*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; u: StandardReal;
           f: var StandardReal): StandardBoolean {.importcpp: "Value",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc derivative*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; u: StandardReal;
                df: var StandardReal): StandardBoolean {.importcpp: "Derivative",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc values*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d; u: StandardReal;
            f: var StandardReal; df: var StandardReal): StandardBoolean {.
    importcpp: "Values", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc getStateNumber*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d): StandardInteger {.
    importcpp: "GetStateNumber",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc nbExt*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d): StandardInteger {.
    noSideEffect, importcpp: "NbExt",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc squareDistance*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d; n: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc isMin*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc point*(this: ExtremaPCLocFOfLocEPCOfLocateExtPC2d; n: StandardInteger): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc subIntervalInitialize*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d;
                           theUfirst: StandardReal; theUlast: StandardReal) {.
    importcpp: "SubIntervalInitialize",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc searchOfTolerance*(this: var ExtremaPCLocFOfLocEPCOfLocateExtPC2d): StandardReal {.
    importcpp: "SearchOfTolerance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}

