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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Extrema_Curve2dTool"
discard "forward decl of Extrema_POnCurv2d"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
discard "forward decl of Extrema_PCLocFOfLocEPCOfLocateExtPC2d"


proc newExtrema_LocEPCOfLocateExtPC2d*(): Extrema_LocEPCOfLocateExtPC2d {.cdecl,
    constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc newExtrema_LocEPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d; U0: cfloat;
                                      TolU: cfloat): Extrema_LocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc newExtrema_LocEPCOfLocateExtPC2d*(P: gp_Pnt2d; C: Adaptor2d_Curve2d; U0: cfloat;
                                      Umin: cfloat; Usup: cfloat; TolU: cfloat): Extrema_LocEPCOfLocateExtPC2d {.
    cdecl, constructor, importcpp: "Extrema_LocEPCOfLocateExtPC2d(@)",
    header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc Initialize*(this: var Extrema_LocEPCOfLocateExtPC2d; C: Adaptor2d_Curve2d;
                Umin: cfloat; Usup: cfloat; TolU: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc Perform*(this: var Extrema_LocEPCOfLocateExtPC2d; P: gp_Pnt2d; U0: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc IsDone*(this: Extrema_LocEPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc SquareDistance*(this: Extrema_LocEPCOfLocateExtPC2d): cfloat {.noSideEffect,
    cdecl, importcpp: "SquareDistance", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc IsMin*(this: Extrema_LocEPCOfLocateExtPC2d): bool {.noSideEffect, cdecl,
    importcpp: "IsMin", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}
proc Point*(this: Extrema_LocEPCOfLocateExtPC2d): Extrema_POnCurv2d {.noSideEffect,
    cdecl, importcpp: "Point", header: "Extrema_LocEPCOfLocateExtPC2d.hxx".}