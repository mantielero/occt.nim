import extrema_types
import ../../tkmath/gp/gp_types
import ../../tkg2d/adaptor2d/adaptor2d_types

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
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_ExtPElC2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC2d"
discard "forward decl of Extrema_PCFOfEPCOfELPCOfLocateExtPC2d"


proc newExtrema_ELPCOfLocateExtPC2d*(): Extrema_ELPCOfLocateExtPC2d {.cdecl,
    constructor, importcpp: "Extrema_ELPCOfLocateExtPC2d(@)",
    header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc newExtrema_ELPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d; Uinf: cfloat;
                                    Usup: cfloat; TolF: cfloat = 1.0e-10): Extrema_ELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_ELPCOfLocateExtPC2d(@)",
    header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc newExtrema_ELPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d;
                                    TolF: cfloat = 1.0e-10): Extrema_ELPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_ELPCOfLocateExtPC2d(@)",
    header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc Initialize*(this: var Extrema_ELPCOfLocateExtPC2d; C: Adaptor2d_Curve2d;
                Uinf: cfloat; Usup: cfloat; TolF: cfloat = 1.0e-10) {.cdecl,
    importcpp: "Initialize", header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc Perform*(this: var Extrema_ELPCOfLocateExtPC2d; P: gp_Pnt2d) {.cdecl,
    importcpp: "Perform", header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc IsDone*(this: Extrema_ELPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc SquareDistance*(this: Extrema_ELPCOfLocateExtPC2d; N: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "SquareDistance",
    header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc NbExt*(this: Extrema_ELPCOfLocateExtPC2d): cint {.noSideEffect, cdecl,
    importcpp: "NbExt", header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc IsMin*(this: Extrema_ELPCOfLocateExtPC2d; N: cint): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc Point*(this: Extrema_ELPCOfLocateExtPC2d; N: cint): Extrema_POnCurv2d {.
    noSideEffect, cdecl, importcpp: "Point",
    header: "Extrema_ELPCOfLocateExtPC2d.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ELPCOfLocateExtPC2d; dist1: var cfloat;
                            dist2: var cfloat; P1: var gp_Pnt2d; P2: var gp_Pnt2d) {.
    noSideEffect, cdecl, importcpp: "TrimmedSquareDistances",
    header: "Extrema_ELPCOfLocateExtPC2d.hxx".}