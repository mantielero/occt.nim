import extrema_types
import ../tkmath/gp/gp_types
import ../tkg3d/adaptor3d/adaptor3d_types
##  Created on: 1995-07-18
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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

proc newExtrema_GenExtPS*(): Extrema_GenExtPS {.cdecl, constructor,
    importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc newExtrema_GenExtPS*(P: gp_Pnt; S: Adaptor3d_Surface; NbU: cint; NbV: cint;
                         TolU: cfloat; TolV: cfloat;
                         F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                         A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_GenExtPS {.
    cdecl, constructor, importcpp: "Extrema_GenExtPS(@)",
    header: "Extrema_GenExtPS.hxx".}
proc newExtrema_GenExtPS*(P: gp_Pnt; S: Adaptor3d_Surface; NbU: cint; NbV: cint;
                         Umin: cfloat; Usup: cfloat; Vmin: cfloat; Vsup: cfloat;
                         TolU: cfloat; TolV: cfloat;
                         F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                         A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_GenExtPS {.
    cdecl, constructor, importcpp: "Extrema_GenExtPS(@)",
    header: "Extrema_GenExtPS.hxx".}
proc Initialize*(this: var Extrema_GenExtPS; S: Adaptor3d_Surface; NbU: cint; NbV: cint;
                TolU: cfloat; TolV: cfloat) {.cdecl, importcpp: "Initialize",
    header: "Extrema_GenExtPS.hxx".}
proc Initialize*(this: var Extrema_GenExtPS; S: Adaptor3d_Surface; NbU: cint; NbV: cint;
                Umin: cfloat; Usup: cfloat; Vmin: cfloat; Vsup: cfloat; TolU: cfloat;
                TolV: cfloat) {.cdecl, importcpp: "Initialize",
                              header: "Extrema_GenExtPS.hxx".}
proc Perform*(this: var Extrema_GenExtPS; P: gp_Pnt) {.cdecl, importcpp: "Perform",
    header: "Extrema_GenExtPS.hxx".}
proc SetFlag*(this: var Extrema_GenExtPS; F: Extrema_ExtFlag) {.cdecl,
    importcpp: "SetFlag", header: "Extrema_GenExtPS.hxx".}
proc SetAlgo*(this: var Extrema_GenExtPS; A: Extrema_ExtAlgo) {.cdecl,
    importcpp: "SetAlgo", header: "Extrema_GenExtPS.hxx".}
proc IsDone*(this: Extrema_GenExtPS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "Extrema_GenExtPS.hxx".}
proc NbExt*(this: Extrema_GenExtPS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        header: "Extrema_GenExtPS.hxx".}
proc SquareDistance*(this: Extrema_GenExtPS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenExtPS.hxx".}
proc Point*(this: Extrema_GenExtPS; N: cint): Extrema_POnSurf {.noSideEffect, cdecl,
    importcpp: "Point", header: "Extrema_GenExtPS.hxx".}
## !!!Ignored construct:  private :  disallow copies Extrema_GenExtPS ( const Extrema_GenExtPS & ) Standard_DELETE ;
## Error: expected ';'!!!

## !!!Ignored construct:  Extrema_GenExtPS & operator = ( const Extrema_GenExtPS & ) Standard_DELETE ;
## Error: expected ';'!!!
