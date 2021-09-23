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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfReal,
  ../TColStd/TColStd_SequenceOfInteger, ../Extrema/Extrema_SequenceOfPOnCurv2d,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../math/math_FunctionWithDerivative

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter* {.
      importcpp: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter",
      header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructHLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter*(): HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor,
    importcpp: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc constructHLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter*(P: gp_Pnt2d;
    C: Standard_Address): HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter {.
    constructor,
    importcpp: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Initialize*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                C: Standard_Address) {.importcpp: "Initialize", header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc SetPoint*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
              P: gp_Pnt2d) {.importcpp: "SetPoint", header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Value*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
           U: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Derivative*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                U: Standard_Real; DF: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Values*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
            U: Standard_Real; F: var Standard_Real; DF: var Standard_Real): Standard_Boolean {.
    importcpp: "Values",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc GetStateNumber*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter): Standard_Integer {.
    importcpp: "GetStateNumber",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc NbExt*(this: HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter): Standard_Integer {.
    noSideEffect, importcpp: "NbExt",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc SquareDistance*(this: HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                    N: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc IsMin*(this: HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
           N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsMin",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Point*(this: HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
           N: Standard_Integer): Extrema_POnCurv2d {.noSideEffect,
    importcpp: "Point",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc SubIntervalInitialize*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter;
                           theUfirst: Standard_Real; theUlast: Standard_Real) {.
    importcpp: "SubIntervalInitialize",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc SearchOfTolerance*(this: var HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter): Standard_Real {.
    importcpp: "SearchOfTolerance",
    header: "HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter.hxx".}