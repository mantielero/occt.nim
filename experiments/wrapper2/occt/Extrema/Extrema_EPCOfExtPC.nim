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
  ../Standard/Standard_Integer, ../Standard/Standard_Real, Extrema_PCFOfEPCOfExtPC

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_PCFOfEPCOfExtPC"
type
  Extrema_EPCOfExtPC* {.importcpp: "Extrema_EPCOfExtPC",
                       header: "Extrema_EPCOfExtPC.hxx", bycopy.} = object


proc constructExtrema_EPCOfExtPC*(): Extrema_EPCOfExtPC {.constructor,
    importcpp: "Extrema_EPCOfExtPC(@)", header: "Extrema_EPCOfExtPC.hxx".}
proc constructExtrema_EPCOfExtPC*(P: gp_Pnt; C: Adaptor3d_Curve;
                                 NbU: Standard_Integer; TolU: Standard_Real;
                                 TolF: Standard_Real): Extrema_EPCOfExtPC {.
    constructor, importcpp: "Extrema_EPCOfExtPC(@)",
    header: "Extrema_EPCOfExtPC.hxx".}
proc constructExtrema_EPCOfExtPC*(P: gp_Pnt; C: Adaptor3d_Curve;
                                 NbU: Standard_Integer; Umin: Standard_Real;
                                 Usup: Standard_Real; TolU: Standard_Real;
                                 TolF: Standard_Real): Extrema_EPCOfExtPC {.
    constructor, importcpp: "Extrema_EPCOfExtPC(@)",
    header: "Extrema_EPCOfExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfExtPC; C: Adaptor3d_Curve;
                NbU: Standard_Integer; TolU: Standard_Real; TolF: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_EPCOfExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfExtPC; C: Adaptor3d_Curve;
                NbU: Standard_Integer; Umin: Standard_Real; Usup: Standard_Real;
                TolU: Standard_Real; TolF: Standard_Real) {.importcpp: "Initialize",
    header: "Extrema_EPCOfExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfExtPC; C: Adaptor3d_Curve) {.
    importcpp: "Initialize", header: "Extrema_EPCOfExtPC.hxx".}
proc Initialize*(this: var Extrema_EPCOfExtPC; NbU: Standard_Integer;
                Umin: Standard_Real; Usup: Standard_Real; TolU: Standard_Real;
                TolF: Standard_Real) {.importcpp: "Initialize",
                                     header: "Extrema_EPCOfExtPC.hxx".}
proc Perform*(this: var Extrema_EPCOfExtPC; P: gp_Pnt) {.importcpp: "Perform",
    header: "Extrema_EPCOfExtPC.hxx".}
proc IsDone*(this: Extrema_EPCOfExtPC): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_EPCOfExtPC.hxx".}
proc NbExt*(this: Extrema_EPCOfExtPC): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_EPCOfExtPC.hxx".}
proc SquareDistance*(this: Extrema_EPCOfExtPC; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_EPCOfExtPC.hxx".}
proc IsMin*(this: Extrema_EPCOfExtPC; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsMin", header: "Extrema_EPCOfExtPC.hxx".}
proc Point*(this: Extrema_EPCOfExtPC; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "Point", header: "Extrema_EPCOfExtPC.hxx".}