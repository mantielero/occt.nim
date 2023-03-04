import extrema_types
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

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Extrema_CurveTool"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of PntObj"
discard "forward decl of VecObj"
discard "forward decl of Extrema_CCLocFOfLocECC"

proc newExtrema_LocECC*(C1: Adaptor3d_Curve; C2: Adaptor3d_Curve; U0: cfloat;
                       V0: cfloat; TolU: cfloat; TolV: cfloat): Extrema_LocECC {.cdecl,
    constructor, importcpp: "Extrema_LocECC(@)", header: "Extrema_LocECC.hxx".}
proc IsDone*(this: Extrema_LocECC): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                       header: "Extrema_LocECC.hxx".}
proc SquareDistance*(this: Extrema_LocECC): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_LocECC.hxx".}
proc Point*(this: Extrema_LocECC; P1: var Extrema_POnCurv; P2: var Extrema_POnCurv) {.
    noSideEffect, cdecl, importcpp: "Point", header: "Extrema_LocECC.hxx".}