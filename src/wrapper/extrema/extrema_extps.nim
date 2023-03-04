import extrema_types
import ../tkmath/gp/gp_types
import ../tkg3d/adaptor3d/adaptor3d_types
##  Created on: 1994-02-01
##  Created by: Laurent PAINNOT
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Extrema_ExtPExtS"
discard "forward decl of Extrema_ExtPRevS"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_ExtPS*(): Extrema_ExtPS {.cdecl, constructor,
                                       importcpp: "Extrema_ExtPS(@)",
                                       header: "Extrema_ExtPS.hxx".}
proc newExtrema_ExtPS*(P: gp_Pnt; S: Adaptor3d_Surface; TolU: cfloat; TolV: cfloat;
                      F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                      A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_ExtPS {.
    cdecl, constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc newExtrema_ExtPS*(P: gp_Pnt; S: Adaptor3d_Surface; Uinf: cfloat; Usup: cfloat;
                      Vinf: cfloat; Vsup: cfloat; TolU: cfloat; TolV: cfloat;
                      F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                      A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_ExtPS {.
    cdecl, constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc Initialize*(this: var Extrema_ExtPS; S: Adaptor3d_Surface; Uinf: cfloat;
                Usup: cfloat; Vinf: cfloat; Vsup: cfloat; TolU: cfloat; TolV: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_ExtPS.hxx".}
proc Perform*(this: var Extrema_ExtPS; P: gp_Pnt) {.cdecl, importcpp: "Perform",
    header: "Extrema_ExtPS.hxx".}
proc IsDone*(this: Extrema_ExtPS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_ExtPS.hxx".}
proc NbExt*(this: Extrema_ExtPS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                     header: "Extrema_ExtPS.hxx".}
proc SquareDistance*(this: Extrema_ExtPS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtPS.hxx".}
proc Point*(this: Extrema_ExtPS; N: cint): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_ExtPS.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtPS; dUfVf: var cfloat;
                            dUfVl: var cfloat; dUlVf: var cfloat; dUlVl: var cfloat;
                            PUfVf: var gp_Pnt; PUfVl: var gp_Pnt; PUlVf: var gp_Pnt;
                            PUlVl: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPS.hxx".}
proc SetFlag*(this: var Extrema_ExtPS; F: Extrema_ExtFlag) {.cdecl,
    importcpp: "SetFlag", header: "Extrema_ExtPS.hxx".}
proc SetAlgo*(this: var Extrema_ExtPS; A: Extrema_ExtAlgo) {.cdecl,
    importcpp: "SetAlgo", header: "Extrema_ExtPS.hxx".}