import extrema_types
import ../tkmath/gp/gp_types
import ../tkg3d/adaptor3d/adaptor3d_types

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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_ExtPElC"
discard "forward decl of PntObj"
discard "forward decl of VecObj"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC"

proc newExtrema_ELPCOfLocateExtPC*(): Extrema_ELPCOfLocateExtPC {.cdecl,
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc newExtrema_ELPCOfLocateExtPC*(P: PntObj; C: Adaptor3d_Curve; Uinf: cfloat;
                                  Usup: cfloat; TolF: cfloat = 1.0e-10): Extrema_ELPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc newExtrema_ELPCOfLocateExtPC*(P: PntObj; C: Adaptor3d_Curve;
                                  TolF: cfloat = 1.0e-10): Extrema_ELPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_ELPCOfLocateExtPC(@)",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_ELPCOfLocateExtPC; C: Adaptor3d_Curve;
                Uinf: cfloat; Usup: cfloat; TolF: cfloat = 1.0e-10) {.cdecl,
    importcpp: "Initialize", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc Perform*(this: var Extrema_ELPCOfLocateExtPC; P: PntObj) {.cdecl,
    importcpp: "Perform", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc IsDone*(this: Extrema_ELPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_ELPCOfLocateExtPC; N: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc NbExt*(this: Extrema_ELPCOfLocateExtPC): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc IsMin*(this: Extrema_ELPCOfLocateExtPC; N: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc Point*(this: Extrema_ELPCOfLocateExtPC; N: cint): Extrema_POnCurv {.noSideEffect,
    cdecl, importcpp: "Point", header: "Extrema_ELPCOfLocateExtPC.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ELPCOfLocateExtPC; dist1: var cfloat;
                            dist2: var cfloat; P1: var PntObj; P2: var PntObj) {.
    noSideEffect, cdecl, importcpp: "TrimmedSquareDistances",
    header: "Extrema_ELPCOfLocateExtPC.hxx".}