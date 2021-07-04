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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer, Extrema_FuncExtCS,
  ../Adaptor3d/Adaptor3d_SurfacePtr, ../TColgp/TColgp_HArray2OfPnt,
  ../Adaptor3d/Adaptor3d_CurvePtr

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_GenExtCS* {.importcpp: "Extrema_GenExtCS",
                     header: "Extrema_GenExtCS.hxx", bycopy.} = object


proc constructExtrema_GenExtCS*(): Extrema_GenExtCS {.constructor,
    importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc constructExtrema_GenExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface;
                               NbT: Standard_Integer; NbU: Standard_Integer;
                               NbV: Standard_Integer; Tol1: Standard_Real;
                               Tol2: Standard_Real): Extrema_GenExtCS {.
    constructor, importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc constructExtrema_GenExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface;
                               NbT: Standard_Integer; NbU: Standard_Integer;
                               NbV: Standard_Integer; tmin: Standard_Real;
                               tsup: Standard_Real; Umin: Standard_Real;
                               Usup: Standard_Real; Vmin: Standard_Real;
                               Vsup: Standard_Real; Tol1: Standard_Real;
                               Tol2: Standard_Real): Extrema_GenExtCS {.
    constructor, importcpp: "Extrema_GenExtCS(@)", header: "Extrema_GenExtCS.hxx".}
proc Initialize*(this: var Extrema_GenExtCS; S: Adaptor3d_Surface;
                NbU: Standard_Integer; NbV: Standard_Integer; Tol2: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_GenExtCS.hxx".}
proc Initialize*(this: var Extrema_GenExtCS; S: Adaptor3d_Surface;
                NbU: Standard_Integer; NbV: Standard_Integer; Umin: Standard_Real;
                Usup: Standard_Real; Vmin: Standard_Real; Vsup: Standard_Real;
                Tol2: Standard_Real) {.importcpp: "Initialize",
                                     header: "Extrema_GenExtCS.hxx".}
proc Perform*(this: var Extrema_GenExtCS; C: Adaptor3d_Curve; NbT: Standard_Integer;
             Tol1: Standard_Real) {.importcpp: "Perform",
                                  header: "Extrema_GenExtCS.hxx".}
proc Perform*(this: var Extrema_GenExtCS; C: Adaptor3d_Curve; NbT: Standard_Integer;
             tmin: Standard_Real; tsup: Standard_Real; Tol1: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_GenExtCS.hxx".}
proc IsDone*(this: Extrema_GenExtCS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenExtCS.hxx".}
proc NbExt*(this: Extrema_GenExtCS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_GenExtCS.hxx".}
proc SquareDistance*(this: Extrema_GenExtCS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_GenExtCS.hxx".}
proc PointOnCurve*(this: Extrema_GenExtCS; N: Standard_Integer): Extrema_POnCurv {.
    noSideEffect, importcpp: "PointOnCurve", header: "Extrema_GenExtCS.hxx".}
proc PointOnSurface*(this: Extrema_GenExtCS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "PointOnSurface", header: "Extrema_GenExtCS.hxx".}