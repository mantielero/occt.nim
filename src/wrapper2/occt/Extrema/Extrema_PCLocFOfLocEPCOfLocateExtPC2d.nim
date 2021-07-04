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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfReal,
  ../TColStd/TColStd_SequenceOfInteger, Extrema_SequenceOfPOnCurv2d,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../math/math_FunctionWithDerivative

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  Extrema_PCLocFOfLocEPCOfLocateExtPC2d* {.
      importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d",
      header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx", bycopy.} = object of math_FunctionWithDerivative


proc constructExtrema_PCLocFOfLocEPCOfLocateExtPC2d*(): Extrema_PCLocFOfLocEPCOfLocateExtPC2d {.
    constructor, importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc constructExtrema_PCLocFOfLocEPCOfLocateExtPC2d*(P: gp_Pnt2d;
    C: Adaptor2d_Curve2d): Extrema_PCLocFOfLocEPCOfLocateExtPC2d {.constructor,
    importcpp: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d(@)",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Initialize*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
                C: Adaptor2d_Curve2d) {.importcpp: "Initialize", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SetPoint*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; P: gp_Pnt2d) {.
    importcpp: "SetPoint", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Value*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; U: Standard_Real;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Derivative*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; U: Standard_Real;
                DF: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Values*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d; U: Standard_Real;
            F: var Standard_Real; DF: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc GetStateNumber*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d): Standard_Integer {.
    importcpp: "GetStateNumber",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc NbExt*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d): Standard_Integer {.
    noSideEffect, importcpp: "NbExt",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SquareDistance*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
                    N: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc IsMin*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc Point*(this: Extrema_PCLocFOfLocEPCOfLocateExtPC2d; N: Standard_Integer): Extrema_POnCurv2d {.
    noSideEffect, importcpp: "Point",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SubIntervalInitialize*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d;
                           theUfirst: Standard_Real; theUlast: Standard_Real) {.
    importcpp: "SubIntervalInitialize",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}
proc SearchOfTolerance*(this: var Extrema_PCLocFOfLocEPCOfLocateExtPC2d): Standard_Real {.
    importcpp: "SearchOfTolerance",
    header: "Extrema_PCLocFOfLocEPCOfLocateExtPC2d.hxx".}