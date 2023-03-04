import extrema_types
import ../../tkg3d/adaptor3d/adaptor3d_types
##  Created on: 1991-02-21
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

discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_ExtSS*(): Extrema_ExtSS {.cdecl, constructor,
                                       importcpp: "Extrema_ExtSS(@)",
                                       header: "Extrema_ExtSS.hxx".}
proc newExtrema_ExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface; TolS1: cfloat;
                      TolS2: cfloat): Extrema_ExtSS {.cdecl, constructor,
    importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc newExtrema_ExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface; Uinf1: cfloat;
                      Usup1: cfloat; Vinf1: cfloat; Vsup1: cfloat; Uinf2: cfloat;
                      Usup2: cfloat; Vinf2: cfloat; Vsup2: cfloat; TolS1: cfloat;
                      TolS2: cfloat): Extrema_ExtSS {.cdecl, constructor,
    importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc Initialize*(this: var Extrema_ExtSS; S2: Adaptor3d_Surface; Uinf2: cfloat;
                Usup2: cfloat; Vinf2: cfloat; Vsup2: cfloat; TolS1: cfloat) {.cdecl,
    importcpp: "Initialize", header: "Extrema_ExtSS.hxx".}
proc Perform*(this: var Extrema_ExtSS; S1: Adaptor3d_Surface; Uinf1: cfloat;
             Usup1: cfloat; Vinf1: cfloat; Vsup1: cfloat; TolS1: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_ExtSS.hxx".}
proc IsDone*(this: Extrema_ExtSS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_ExtSS.hxx".}
proc IsParallel*(this: Extrema_ExtSS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtSS.hxx".}
proc NbExt*(this: Extrema_ExtSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                     header: "Extrema_ExtSS.hxx".}
proc SquareDistance*(this: Extrema_ExtSS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtSS.hxx".}
proc Points*(this: Extrema_ExtSS; N: cint; P1: var Extrema_POnSurf;
            P2: var Extrema_POnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ExtSS.hxx".}