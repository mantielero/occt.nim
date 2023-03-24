import extrema_types
import ../adaptor3d/adaptor3d_types
#import ../tcolstd/tcolstd_types

##  Created on: 1996-01-23
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

discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"

proc newExtrema_GenExtCS*(): Extrema_GenExtCS {.cdecl, constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc newExtrema_GenExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface; NbT: cint;
                         NbU: cint; NbV: cint; Tol1: cfloat; Tol2: cfloat): Extrema_GenExtCS {.
    cdecl, constructor, importcpp: "Extrema_GenExtCS(@)",
    header: "Extrema_GenExtCS.hxx".}
proc newExtrema_GenExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface; NbT: cint;
                         NbU: cint; NbV: cint; tmin: cfloat; tsup: cfloat; Umin: cfloat;
                         Usup: cfloat; Vmin: cfloat; Vsup: cfloat; Tol1: cfloat;
                         Tol2: cfloat): Extrema_GenExtCS {.cdecl, constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc Initialize*(this: var Extrema_GenExtCS; S: Adaptor3d_Surface; NbU: cint; NbV: cint;
                Tol2: cfloat) {.cdecl, importcpp: "Initialize",
                              header: "Extrema_GenExtCS.hxx".}
proc Initialize*(this: var Extrema_GenExtCS; S: Adaptor3d_Surface; NbU: cint; NbV: cint;
                Umin: cfloat; Usup: cfloat; Vmin: cfloat; Vsup: cfloat; Tol2: cfloat) {.
    cdecl, importcpp: "Initialize", header: "Extrema_GenExtCS.hxx".}
proc Perform*(this: var Extrema_GenExtCS; C: Adaptor3d_Curve; NbT: cint; Tol1: cfloat) {.
    cdecl, importcpp: "Perform", header: "Extrema_GenExtCS.hxx".}
proc Perform*(this: var Extrema_GenExtCS; C: Adaptor3d_Curve; NbT: cint; tmin: cfloat;
             tsup: cfloat; Tol1: cfloat) {.cdecl, importcpp: "Perform",
                                       header: "Extrema_GenExtCS.hxx".}
proc IsDone*(this: Extrema_GenExtCS): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "Extrema_GenExtCS.hxx".}
proc NbExt*(this: Extrema_GenExtCS): cint {.noSideEffect, cdecl, importcpp: "NbExt",
                                        header: "Extrema_GenExtCS.hxx".}
proc SquareDistance*(this: Extrema_GenExtCS; N: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareDistance", header: "Extrema_GenExtCS.hxx".}
proc PointOnCurve*(this: Extrema_GenExtCS; N: cint): Extrema_POnCurv {.noSideEffect,
    cdecl, importcpp: "PointOnCurve", header: "Extrema_GenExtCS.hxx".}
proc PointOnSurface*(this: Extrema_GenExtCS; N: cint): Extrema_POnSurf {.noSideEffect,
    cdecl, importcpp: "PointOnSurface", header: "Extrema_GenExtCS.hxx".}
## !!!Ignored construct:  private :  disallow copies Extrema_GenExtCS ( const Extrema_GenExtCS & ) Standard_DELETE ;
## Error: expected ';'!!!

## !!!Ignored construct:  Extrema_GenExtCS & operator = ( const Extrema_GenExtCS & ) Standard_DELETE ;
## Error: expected ';'!!!
