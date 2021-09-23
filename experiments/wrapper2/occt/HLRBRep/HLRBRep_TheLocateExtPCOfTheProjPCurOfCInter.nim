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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter,
  ../Standard/Standard_Address

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of HLRBRep_CurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of HLRBRep_PCLocFOfTheLocateExtPCOfTheProjPCurOfCInter"
type
  HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter* {.
      importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter",
      header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx", bycopy.} = object


proc constructHLRBRep_TheLocateExtPCOfTheProjPCurOfCInter*(): HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter {.
    constructor, importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc constructHLRBRep_TheLocateExtPCOfTheProjPCurOfCInter*(P: gp_Pnt2d;
    C: Standard_Address; U0: Standard_Real; TolU: Standard_Real): HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter {.
    constructor, importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc constructHLRBRep_TheLocateExtPCOfTheProjPCurOfCInter*(P: gp_Pnt2d;
    C: Standard_Address; U0: Standard_Real; Umin: Standard_Real; Usup: Standard_Real;
    TolU: Standard_Real): HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter {.
    constructor, importcpp: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter(@)",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Initialize*(this: var HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter;
                C: Standard_Address; Umin: Standard_Real; Usup: Standard_Real;
                TolU: Standard_Real) {.importcpp: "Initialize", header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Perform*(this: var HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter; P: gp_Pnt2d;
             U0: Standard_Real) {.importcpp: "Perform", header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc IsDone*(this: HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc SquareDistance*(this: HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc IsMin*(this: HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}
proc Point*(this: HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter): Extrema_POnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "HLRBRep_TheLocateExtPCOfTheProjPCurOfCInter.hxx".}