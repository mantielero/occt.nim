import extrema_types
import ../../tkg3d/adaptor3d/adaptor3d_types
##  Created on: 1996-01-18
##  Created by: Laurent PAINNOT
##  Copyright (c) 1996-1999 Matra Datavision
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

proc newExtrema_GenExtSS*(): Extrema_GenExtSS {.cdecl, constructor,
    importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc newExtrema_GenExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface; NbU: cint;
                         NbV: cint; Tol1: cfloat; Tol2: cfloat): Extrema_GenExtSS {.
    cdecl, constructor, importcpp: "Extrema_GenExtSS(@)",
    header: "Extrema_GenExtSS.hxx".}
proc newExtrema_GenExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface; NbU: cint;
                         NbV: cint; U1min: cfloat; U1sup: cfloat; V1min: cfloat;
                         V1sup: cfloat; U2min: cfloat; U2sup: cfloat; V2min: cfloat;
                         V2sup: cfloat; Tol1: cfloat; Tol2: cfloat): Extrema_GenExtSS {.
    cdecl, constructor, importcpp: "Extrema_GenExtSS(@)",
    header: "Extrema_GenExtSS.hxx".}
proc Initialize*(this: var Extrema_GenExtSS; S2: Adaptor3d_Surface; NbU: cint;
                NbV: cint; Tol2: cfloat) {.cdecl, importcpp: "Initialize",
                                       header: "Extrema_GenExtSS.hxx".}
proc Initialize*(this: var Extrema_GenExtSS; S2: Adaptor3d_Surface; NbU: cint;
                NbV: cint; U2min: cfloat; U2sup: cfloat; V2min: cfloat; V2sup: cfloat;
                Tol2: cfloat) {.cdecl, importcpp: "Initialize",
                              header: "Extrema_GenExtSS.hxx".}
proc Perform*(this: var Extrema_GenExtSS; S1: Adaptor3d_Surface; Tol1: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc Perform*(this: var Extrema_GenExtSS; S1: Adaptor3d_Surface; U1min: cfloat;
             U1sup: cfloat; V1min: cfloat; V1sup: cfloat; Tol1: cfloat) {.cdecl,
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc IsDone*(this: Extrema_GenExtSS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "Extrema_GenExtSS.hxx".}
proc NbExt*(this: Extrema_GenExtSS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        header: "Extrema_GenExtSS.hxx".}
proc SquareDistance*(this: Extrema_GenExtSS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenExtSS.hxx".}
proc PointOnS1*(this: Extrema_GenExtSS; N: cint): Extrema_POnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnS1", header: "Extrema_GenExtSS.hxx".}
proc PointOnS2*(this: Extrema_GenExtSS; N: cint): Extrema_POnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnS2", header: "Extrema_GenExtSS.hxx".}
## !!!Ignored construct:  private :  disallow copies Extrema_GenExtSS ( const Extrema_GenExtSS & ) Standard_DELETE ;
## Error: expected ';'!!!

## !!!Ignored construct:  Extrema_GenExtSS & operator = ( const Extrema_GenExtSS & ) Standard_DELETE ;
## Error: expected ';'!!!
