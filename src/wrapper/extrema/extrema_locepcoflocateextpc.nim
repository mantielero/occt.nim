import extrema_types
import ../../tkmath/gp/gp_types
import ../../tkg3d/adaptor3d/adaptor3d_types
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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC"

proc newExtrema_LocEPCOfLocateExtPC*(): Extrema_LocEPCOfLocateExtPC {.cdecl,
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc newExtrema_LocEPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve; U0: cfloat;
                                    TolU: cfloat): Extrema_LocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc newExtrema_LocEPCOfLocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve; U0: cfloat;
                                    Umin: cfloat; Usup: cfloat; TolU: cfloat): Extrema_LocEPCOfLocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC(@)",
    header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc Initialize*(this: var Extrema_LocEPCOfLocateExtPC; C: Adaptor3d_Curve;
                Umin: cfloat; Usup: cfloat; TolU: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc Perform*(this: var Extrema_LocEPCOfLocateExtPC; P: gp_Pnt; U0: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc IsDone*(this: Extrema_LocEPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_LocEPCOfLocateExtPC): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc IsMin*(this: Extrema_LocEPCOfLocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_LocEPCOfLocateExtPC.hxx".}
proc Point*(this: Extrema_LocEPCOfLocateExtPC): Extrema_POnCurv {.noSideEffect,
    cdecl, importcpp: "Point", header: "Extrema_LocEPCOfLocateExtPC.hxx".}