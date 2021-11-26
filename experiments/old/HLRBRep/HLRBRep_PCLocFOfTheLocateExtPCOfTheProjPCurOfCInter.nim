##  Created on: 1992-10-14
##  Created by: Christophe MARION
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter* {.
      importcpp: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter",
      header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx", bycopy.} = object of MathFunctionWithDerivative


proc constructHLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter*(): HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor,
    importcpp: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc constructHLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter*(p: Pnt2d;
    c: StandardAddress): HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor,
    importcpp: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc initialize*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                c: StandardAddress) {.importcpp: "Initialize", header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc setPoint*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
              p: Pnt2d) {.importcpp: "SetPoint", header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc value*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter; u: cfloat;
           f: var cfloat): bool {.importcpp: "Value", header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc derivative*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                u: cfloat; df: var cfloat): bool {.importcpp: "Derivative",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc values*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
            u: cfloat; f: var cfloat; df: var cfloat): bool {.importcpp: "Values",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc getStateNumber*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter): cint {.
    importcpp: "GetStateNumber",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc nbExt*(this: HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter): cint {.
    noSideEffect, importcpp: "NbExt",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc squareDistance*(this: HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                    n: cint): cfloat {.noSideEffect, importcpp: "SquareDistance", header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc isMin*(this: HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter; n: cint): bool {.
    noSideEffect, importcpp: "IsMin",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc point*(this: HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter; n: cint): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc subIntervalInitialize*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                           theUfirst: cfloat; theUlast: cfloat) {.
    importcpp: "SubIntervalInitialize",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc searchOfTolerance*(this: var HLRBRepPCLocFOfTheLocateExtPCOfTheProjPCurOfCInter): cfloat {.
    importcpp: "SearchOfTolerance",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}

























