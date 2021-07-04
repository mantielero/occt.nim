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
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Address,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfReal,
  ../TColStd/TColStd_SequenceOfInteger, Extrema_SequenceOfPOnCurv,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../math/math_FunctionWithDerivative

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  Extrema_PCFOfEPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx",
                                        bycopy.} = object of math_FunctionWithDerivative


proc constructExtrema_PCFOfEPCOfELPCOfLocateExtPC*(): Extrema_PCFOfEPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc constructExtrema_PCFOfEPCOfELPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve): Extrema_PCFOfEPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_PCFOfEPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC; C: Adaptor3d_Curve) {.
    importcpp: "Initialize", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc SetPoint*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC; P: gp_Pnt) {.
    importcpp: "SetPoint", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc Value*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC; U: Standard_Real;
           F: var Standard_Real): Standard_Boolean {.importcpp: "Value",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc Derivative*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC; U: Standard_Real;
                DF: var Standard_Real): Standard_Boolean {.importcpp: "Derivative",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc Values*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC; U: Standard_Real;
            F: var Standard_Real; DF: var Standard_Real): Standard_Boolean {.
    importcpp: "Values", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc GetStateNumber*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC): Standard_Integer {.
    importcpp: "GetStateNumber", header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc NbExt*(this: Extrema_PCFOfEPCOfELPCOfLocateExtPC): Standard_Integer {.
    noSideEffect, importcpp: "NbExt",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_PCFOfEPCOfELPCOfLocateExtPC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc IsMin*(this: Extrema_PCFOfEPCOfELPCOfLocateExtPC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc Point*(this: Extrema_PCFOfEPCOfELPCOfLocateExtPC; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "Point",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc SubIntervalInitialize*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC;
                           theUfirst: Standard_Real; theUlast: Standard_Real) {.
    importcpp: "SubIntervalInitialize",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}
proc SearchOfTolerance*(this: var Extrema_PCFOfEPCOfELPCOfLocateExtPC): Standard_Real {.
    importcpp: "SearchOfTolerance",
    header: "Extrema_PCFOfEPCOfELPCOfLocateExtPC.hxx".}