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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  Extrema_PCFOfEPCOfELPCOfLocateExtPC

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC"
type
  Extrema_EPCOfELPCOfLocateExtPC* {.importcpp: "Extrema_EPCOfELPCOfLocateExtPC", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx",
                                   bycopy.} = object


proc constructExtrema_EPCOfELPCOfLocateExtPC*(): Extrema_EPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc constructExtrema_EPCOfELPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve;
    NbU: Standard_Integer; TolU: Standard_Real; TolF: Standard_Real): Extrema_EPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc constructExtrema_EPCOfELPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve;
    NbU: Standard_Integer; Umin: Standard_Real; Usup: Standard_Real;
    TolU: Standard_Real; TolF: Standard_Real): Extrema_EPCOfELPCOfLocateExtPC {.
    constructor, importcpp: "Extrema_EPCOfELPCOfLocateExtPC(@)",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfELPCOfLocateExtPC; C: Adaptor3d_Curve;
                NbU: Standard_Integer; TolU: Standard_Real; TolF: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfELPCOfLocateExtPC; C: Adaptor3d_Curve;
                NbU: Standard_Integer; Umin: Standard_Real; Usup: Standard_Real;
                TolU: Standard_Real; TolF: Standard_Real) {.importcpp: "Initialize",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfELPCOfLocateExtPC; C: Adaptor3d_Curve) {.
    importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfELPCOfLocateExtPC; NbU: Standard_Integer;
                Umin: Standard_Real; Usup: Standard_Real; TolU: Standard_Real;
                TolF: Standard_Real) {.importcpp: "Initialize", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc Perform*(this: var Extrema_EPCOfELPCOfLocateExtPC; P: gp_Pnt) {.
    importcpp: "Perform", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc IsDone*(this: Extrema_EPCOfELPCOfLocateExtPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc NbExt*(this: Extrema_EPCOfELPCOfLocateExtPC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_EPCOfELPCOfLocateExtPC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance",
    header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc IsMin*(this: Extrema_EPCOfELPCOfLocateExtPC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}
proc Point*(this: Extrema_EPCOfELPCOfLocateExtPC; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "Point", header: "Extrema_EPCOfELPCOfLocateExtPC.hxx".}