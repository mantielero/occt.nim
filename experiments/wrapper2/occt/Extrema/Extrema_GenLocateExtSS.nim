##  Created on: 1996-01-22
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
  ../Standard/Standard_Real, Extrema_POnSurf

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_GenLocateExtSS* {.importcpp: "Extrema_GenLocateExtSS",
                           header: "Extrema_GenLocateExtSS.hxx", bycopy.} = object


proc constructExtrema_GenLocateExtSS*(): Extrema_GenLocateExtSS {.constructor,
    importcpp: "Extrema_GenLocateExtSS(@)", header: "Extrema_GenLocateExtSS.hxx".}
proc constructExtrema_GenLocateExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface;
                                     U1: Standard_Real; V1: Standard_Real;
                                     U2: Standard_Real; V2: Standard_Real;
                                     Tol1: Standard_Real; Tol2: Standard_Real): Extrema_GenLocateExtSS {.
    constructor, importcpp: "Extrema_GenLocateExtSS(@)",
    header: "Extrema_GenLocateExtSS.hxx".}
proc Perform*(this: var Extrema_GenLocateExtSS; S1: Adaptor3d_Surface;
             S2: Adaptor3d_Surface; U1: Standard_Real; V1: Standard_Real;
             U2: Standard_Real; V2: Standard_Real; Tol1: Standard_Real;
             Tol2: Standard_Real) {.importcpp: "Perform",
                                  header: "Extrema_GenLocateExtSS.hxx".}
proc IsDone*(this: Extrema_GenLocateExtSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenLocateExtSS.hxx".}
proc SquareDistance*(this: Extrema_GenLocateExtSS): Standard_Real {.noSideEffect,
    importcpp: "SquareDistance", header: "Extrema_GenLocateExtSS.hxx".}
proc PointOnS1*(this: Extrema_GenLocateExtSS): Extrema_POnSurf {.noSideEffect,
    importcpp: "PointOnS1", header: "Extrema_GenLocateExtSS.hxx".}
proc PointOnS2*(this: Extrema_GenLocateExtSS): Extrema_POnSurf {.noSideEffect,
    importcpp: "PointOnS2", header: "Extrema_GenLocateExtSS.hxx".}