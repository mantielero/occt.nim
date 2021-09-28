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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter* {.
      importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter",
      header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx", bycopy.} = object


proc `new`*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter; theSize: csize_t): pointer {.
    importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::operator new",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter;
              theAddress: pointer) {.importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::operator delete", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `new[]`*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter;
             theSize: csize_t): pointer {.importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::operator new[]", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `delete[]`*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter;
                theAddress: pointer) {.importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::operator delete[]", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `new`*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter; a2: csize_t;
           theAddress: pointer): pointer {.importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::operator new", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter; a2: pointer;
              a3: pointer) {.importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter::operator delete", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dIntTheLocateExtPCOfTheProjPCurOfGInter*(): Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor, importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dIntTheLocateExtPCOfTheProjPCurOfGInter*(p: Pnt2d;
    c: Adaptor2dCurve2d; u0: StandardReal; tolU: StandardReal): Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor, importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dIntTheLocateExtPCOfTheProjPCurOfGInter*(p: Pnt2d;
    c: Adaptor2dCurve2d; u0: StandardReal; umin: StandardReal; usup: StandardReal;
    tolU: StandardReal): Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor, importcpp: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc initialize*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter;
                c: Adaptor2dCurve2d; umin: StandardReal; usup: StandardReal;
                tolU: StandardReal) {.importcpp: "Initialize", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc perform*(this: var Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter; p: Pnt2d;
             u0: StandardReal) {.importcpp: "Perform", header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc isDone*(this: Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter): StandardBoolean {.
    noSideEffect, importcpp: "IsDone",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc squareDistance*(this: Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter): StandardReal {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc isMin*(this: Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter): StandardBoolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc point*(this: Geom2dIntTheLocateExtPCOfTheProjPCurOfGInter): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "Geom2dInt_TheLocateExtPCOfTheProjPCurOfGInter.hxx".}