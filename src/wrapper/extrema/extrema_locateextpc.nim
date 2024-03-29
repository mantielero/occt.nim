import extrema_types
import ../gp/gp_types
import ../adaptor3d/adaptor3d_types

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
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_ExtPElC"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_ELPCOfLocateExtPC"
discard "forward decl of Extrema_EPCOfELPCOfLocateExtPC"
discard "forward decl of Extrema_LocEPCOfLocateExtPC"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC"

proc newExtrema_LocateExtPC*(): Extrema_LocateExtPC {.cdecl, constructor,
    importcpp: "Extrema_LocateExtPC(@)", header: "Extrema_LocateExtPC.hxx".}
proc newExtrema_LocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve; U0: cfloat; TolF: cfloat): Extrema_LocateExtPC {.
    cdecl, constructor, importcpp: "Extrema_LocateExtPC(@)",
    header: "Extrema_LocateExtPC.hxx".}
proc newExtrema_LocateExtPC*(P: gp_Pnt; C: Adaptor3d_Curve; U0: cfloat; Umin: cfloat;
                            Usup: cfloat; TolF: cfloat): Extrema_LocateExtPC {.cdecl,
    constructor, importcpp: "Extrema_LocateExtPC(@)",
    header: "Extrema_LocateExtPC.hxx".}
proc Initialize*(this: var Extrema_LocateExtPC; C: Adaptor3d_Curve; Umin: cfloat;
                Usup: cfloat; TolF: cfloat) {.cdecl, importcpp: "Initialize",
    header: "Extrema_LocateExtPC.hxx".}
proc Perform*(this: var Extrema_LocateExtPC; P: gp_Pnt; U0: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_LocateExtPC.hxx".}
proc IsDone*(this: Extrema_LocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocateExtPC.hxx".}
proc SquareDistance*(this: Extrema_LocateExtPC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocateExtPC.hxx".}
proc IsMin*(this: Extrema_LocateExtPC): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_LocateExtPC.hxx".}
proc Point*(this: Extrema_LocateExtPC): Extrema_POnCurv {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_LocateExtPC.hxx".}