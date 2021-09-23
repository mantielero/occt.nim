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
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfReal,
  ../TColStd/TColStd_SequenceOfInteger, ../Extrema/Extrema_SequenceOfPOnCurv2d,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../math/math_FunctionWithDerivative

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dInt_Geom2dCurveTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter* {.
      importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter",
      header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructGeom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter*(): Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor,
    importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc constructGeom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter*(P: gp_Pnt2d;
    C: Adaptor2d_Curve2d): Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter {.
    constructor,
    importcpp: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter(@)",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Initialize*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                C: Adaptor2d_Curve2d) {.importcpp: "Initialize", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc SetPoint*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
              P: gp_Pnt2d) {.importcpp: "SetPoint", header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Value*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
           U: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Derivative*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                U: Standard_Real; DF: var Standard_Real): Standard_Boolean {.
    importcpp: "Derivative",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Values*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
            U: Standard_Real; F: var Standard_Real; DF: var Standard_Real): Standard_Boolean {.
    importcpp: "Values",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc GetStateNumber*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter): Standard_Integer {.
    importcpp: "GetStateNumber",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc NbExt*(this: Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter): Standard_Integer {.
    noSideEffect, importcpp: "NbExt",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc SquareDistance*(this: Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                    N: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc IsMin*(this: Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
           N: Standard_Integer): Standard_Boolean {.noSideEffect,
    importcpp: "IsMin",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc Point*(this: Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
           N: Standard_Integer): Extrema_POnCurv2d {.noSideEffect,
    importcpp: "Point",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc SubIntervalInitialize*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter;
                           theUfirst: Standard_Real; theUlast: Standard_Real) {.
    importcpp: "SubIntervalInitialize",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}
proc SearchOfTolerance*(this: var Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter): Standard_Real {.
    importcpp: "SearchOfTolerance",
    header: "Geom2dInt_PCLocFOfTheLocateExtPCOfTheProjPCurOfGInter.hxx".}