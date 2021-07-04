##  Created on: 1992-06-04
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Real,
  Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter* {.
      importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter",
      header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx", bycopy.} = object


proc constructGeom2dInt_TheLocateExtPCOfTheProjPCurOfGInter*(): Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter {.
    constructor, importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dInt_TheLocateExtPCOfTheProjPCurOfGInter*(P: gp_Pnt2d;
    C: Adaptor2d_Curve2d; U0: Standard_Real; TolU: Standard_Real): Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter {.
    constructor, importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dInt_TheLocateExtPCOfTheProjPCurOfGInter*(P: gp_Pnt2d;
    C: Adaptor2d_Curve2d; U0: Standard_Real; Umin: Standard_Real; Usup: Standard_Real;
    TolU: Standard_Real): Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter {.
    constructor, importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Initialize*(this: var Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter;
                C: Adaptor2d_Curve2d; Umin: Standard_Real; Usup: Standard_Real;
                TolU: Standard_Real) {.importcpp: "Initialize", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Perform*(this: var Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter; P: gp_Pnt2d;
             U0: Standard_Real) {.importcpp: "Perform", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc IsDone*(this: Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter): Standard_Boolean {.
    noSideEffect, importcpp: "IsDone",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc SquareDistance*(this: Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc IsMin*(this: Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Point*(this: Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter): Extrema_POnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}