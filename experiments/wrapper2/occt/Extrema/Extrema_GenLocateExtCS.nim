##  Created on: 1996-01-25
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
  ../Standard/Standard_Real, Extrema_POnCurv, Extrema_POnSurf

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_GenLocateExtCS* {.importcpp: "Extrema_GenLocateExtCS",
                           header: "Extrema_GenLocateExtCS.hxx", bycopy.} = object


proc constructExtrema_GenLocateExtCS*(): Extrema_GenLocateExtCS {.constructor,
    importcpp: "Extrema_GenLocateExtCS(@)", header: "Extrema_GenLocateExtCS.hxx".}
proc constructExtrema_GenLocateExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface;
                                     T: Standard_Real; U: Standard_Real;
                                     V: Standard_Real; Tol1: Standard_Real;
                                     Tol2: Standard_Real): Extrema_GenLocateExtCS {.
    constructor, importcpp: "Extrema_GenLocateExtCS(@)",
    header: "Extrema_GenLocateExtCS.hxx".}
proc Perform*(this: var Extrema_GenLocateExtCS; C: Adaptor3d_Curve;
             S: Adaptor3d_Surface; T: Standard_Real; U: Standard_Real;
             V: Standard_Real; Tol1: Standard_Real; Tol2: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_GenLocateExtCS.hxx".}
proc IsDone*(this: Extrema_GenLocateExtCS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenLocateExtCS.hxx".}
proc SquareDistance*(this: Extrema_GenLocateExtCS): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtCS.hxx".}
proc PointOnCurve*(this: Extrema_GenLocateExtCS): Extrema_POnCurv {.noSideEffect,
    importcpp: "PointOnCurve", header: "Extrema_GenLocateExtCS.hxx".}
proc PointOnSurface*(this: Extrema_GenLocateExtCS): Extrema_POnSurf {.noSideEffect,
    importcpp: "PointOnSurface", header: "Extrema_GenLocateExtCS.hxx".}