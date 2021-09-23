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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../TColgp/TColgp_HArray2OfPnt, Extrema_FuncExtSS,
  ../Adaptor3d/Adaptor3d_SurfacePtr

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_GenExtSS* {.importcpp: "Extrema_GenExtSS",
                     header: "Extrema_GenExtSS.hxx", bycopy.} = object


proc constructExtrema_GenExtSS*(): Extrema_GenExtSS {.constructor,
    importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc constructExtrema_GenExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface;
                               NbU: Standard_Integer; NbV: Standard_Integer;
                               Tol1: Standard_Real; Tol2: Standard_Real): Extrema_GenExtSS {.
    constructor, importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc constructExtrema_GenExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface;
                               NbU: Standard_Integer; NbV: Standard_Integer;
                               U1min: Standard_Real; U1sup: Standard_Real;
                               V1min: Standard_Real; V1sup: Standard_Real;
                               U2min: Standard_Real; U2sup: Standard_Real;
                               V2min: Standard_Real; V2sup: Standard_Real;
                               Tol1: Standard_Real; Tol2: Standard_Real): Extrema_GenExtSS {.
    constructor, importcpp: "Extrema_GenExtSS(@)", header: "Extrema_GenExtSS.hxx".}
proc Initialize*(this: var Extrema_GenExtSS; S2: Adaptor3d_Surface;
                NbU: Standard_Integer; NbV: Standard_Integer; Tol2: Standard_Real) {.
    importcpp: "Initialize", header: "Extrema_GenExtSS.hxx".}
proc Initialize*(this: var Extrema_GenExtSS; S2: Adaptor3d_Surface;
                NbU: Standard_Integer; NbV: Standard_Integer; U2min: Standard_Real;
                U2sup: Standard_Real; V2min: Standard_Real; V2sup: Standard_Real;
                Tol2: Standard_Real) {.importcpp: "Initialize",
                                     header: "Extrema_GenExtSS.hxx".}
proc Perform*(this: var Extrema_GenExtSS; S1: Adaptor3d_Surface; Tol1: Standard_Real) {.
    importcpp: "Perform", header: "Extrema_GenExtSS.hxx".}
proc Perform*(this: var Extrema_GenExtSS; S1: Adaptor3d_Surface; U1min: Standard_Real;
             U1sup: Standard_Real; V1min: Standard_Real; V1sup: Standard_Real;
             Tol1: Standard_Real) {.importcpp: "Perform",
                                  header: "Extrema_GenExtSS.hxx".}
proc IsDone*(this: Extrema_GenExtSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenExtSS.hxx".}
proc NbExt*(this: Extrema_GenExtSS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_GenExtSS.hxx".}
proc SquareDistance*(this: Extrema_GenExtSS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_GenExtSS.hxx".}
proc PointOnS1*(this: Extrema_GenExtSS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "PointOnS1", header: "Extrema_GenExtSS.hxx".}
proc PointOnS2*(this: Extrema_GenExtSS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "PointOnS2", header: "Extrema_GenExtSS.hxx".}