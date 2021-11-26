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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter* {.
      importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter",
      header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx", bycopy.} = object of MathFunctionWithDerivative


proc `new`*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
           theSize: csize_t): pointer {.importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::operator new", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
              theAddress: pointer) {.importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::operator delete", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `new[]`*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
             theSize: csize_t): pointer {.importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::operator new[]", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `delete[]`*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                theAddress: pointer) {.importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::operator delete[]", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `new`*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
           a2: csize_t; theAddress: pointer): pointer {.importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::operator new",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc `delete`*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
              a2: pointer; a3: pointer) {.importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter::operator delete", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter*(): Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor,
    importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter*(p: Pnt2d;
    c: Adaptor2dCurve2d): Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor,
    importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc initialize*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                c: Adaptor2dCurve2d) {.importcpp: "Initialize", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc setPoint*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
              p: Pnt2d) {.importcpp: "SetPoint", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc value*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
           u: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc derivative*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                u: StandardReal; df: var StandardReal): StandardBoolean {.
    importcpp: "Derivative",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc values*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
            u: StandardReal; f: var StandardReal; df: var StandardReal): StandardBoolean {.
    importcpp: "Values",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc getStateNumber*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter): int {.
    importcpp: "GetStateNumber",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc nbExt*(this: Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter): int {.
    noSideEffect, importcpp: "NbExt",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc squareDistance*(this: Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                    n: int): StandardReal {.noSideEffect,
    importcpp: "SquareDistance",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc isMin*(this: Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter; n: int): StandardBoolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc point*(this: Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter; n: int): ExtremaPOnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc subIntervalInitialize*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                           theUfirst: StandardReal; theUlast: StandardReal) {.
    importcpp: "SubIntervalInitialize",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc searchOfTolerance*(this: var Geom2dIntPCLocFOfTheLocateExtPCOfTheProjPCurOfGInter): StandardReal {.
    importcpp: "SearchOfTolerance",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}