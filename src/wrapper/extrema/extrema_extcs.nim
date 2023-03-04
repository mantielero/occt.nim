import extrema_types
import ../tkg3d/adaptor3d/adaptor3d_types

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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of gp_Pnt"

proc newExtrema_ExtCS*(): Extrema_ExtCS {.cdecl, constructor,
                                       importcpp: "Extrema_ExtCS(@)",
                                       header: "Extrema_ExtCS.hxx".}
proc newExtrema_ExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface; TolC: cfloat;
                      TolS: cfloat): Extrema_ExtCS {.cdecl, constructor,
    importcpp: "Extrema_ExtCS(@)", header: "Extrema_ExtCS.hxx".}
proc newExtrema_ExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface; UCinf: cfloat;
                      UCsup: cfloat; Uinf: cfloat; Usup: cfloat; Vinf: cfloat;
                      Vsup: cfloat; TolC: cfloat; TolS: cfloat): Extrema_ExtCS {.cdecl,
    constructor, importcpp: "Extrema_ExtCS(@)", header: "Extrema_ExtCS.hxx".}
proc Initialize*(this: var Extrema_ExtCS; S: Adaptor3d_Surface; TolC: cfloat;
                TolS: cfloat) {.cdecl, importcpp: "Initialize",
                              header: "Extrema_ExtCS.hxx".}
proc Initialize*(this: var Extrema_ExtCS; S: Adaptor3d_Surface; Uinf: cfloat;
                Usup: cfloat; Vinf: cfloat; Vsup: cfloat; TolC: cfloat; TolS: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_ExtCS.hxx".}
proc Perform*(this: var Extrema_ExtCS; C: Adaptor3d_Curve; Uinf: cfloat; Usup: cfloat) {.
    cdecl, importcpp: "Perform", header: "Extrema_ExtCS.hxx".}
proc IsDone*(this: Extrema_ExtCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      header: "Extrema_ExtCS.hxx".}
proc IsParallel*(this: Extrema_ExtCS): bool {.noSideEffect, cdecl,
    importcpp: "IsParallel", header: "Extrema_ExtCS.hxx".}
proc NbExt*(this: Extrema_ExtCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                     header: "Extrema_ExtCS.hxx".}
proc SquareDistance*(this: Extrema_ExtCS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_ExtCS.hxx".}
proc Points*(this: Extrema_ExtCS; N: cint; P1: var Extrema_POnCurv;
            P2: var Extrema_POnSurf) {.noSideEffect, cdecl, importcpp: "Points",
                                    header: "Extrema_ExtCS.hxx".}
## !!!Ignored construct:  private :  disallow copies Extrema_ExtCS ( Extrema_ExtCS & ) Standard_DELETE ;
## Error: expected ';'!!!

## !!!Ignored construct:  Extrema_ExtCS & operator = ( Extrema_ExtCS & ) Standard_DELETE ;
## Error: expected ';'!!!
