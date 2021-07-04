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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Adaptor3d/Adaptor3d_SurfacePtr,
  ../Standard/Standard_Boolean, Extrema_ExtElSS, Extrema_SequenceOfPOnSurf,
  ../Standard/Standard_Real, ../TColStd/TColStd_SequenceOfReal,
  ../GeomAbs/GeomAbs_SurfaceType, ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_ExtSS* {.importcpp: "Extrema_ExtSS", header: "Extrema_ExtSS.hxx", bycopy.} = object


proc constructExtrema_ExtSS*(): Extrema_ExtSS {.constructor,
    importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc constructExtrema_ExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface;
                            TolS1: Standard_Real; TolS2: Standard_Real): Extrema_ExtSS {.
    constructor, importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc constructExtrema_ExtSS*(S1: Adaptor3d_Surface; S2: Adaptor3d_Surface;
                            Uinf1: Standard_Real; Usup1: Standard_Real;
                            Vinf1: Standard_Real; Vsup1: Standard_Real;
                            Uinf2: Standard_Real; Usup2: Standard_Real;
                            Vinf2: Standard_Real; Vsup2: Standard_Real;
                            TolS1: Standard_Real; TolS2: Standard_Real): Extrema_ExtSS {.
    constructor, importcpp: "Extrema_ExtSS(@)", header: "Extrema_ExtSS.hxx".}
proc Initialize*(this: var Extrema_ExtSS; S2: Adaptor3d_Surface; Uinf2: Standard_Real;
                Usup2: Standard_Real; Vinf2: Standard_Real; Vsup2: Standard_Real;
                TolS1: Standard_Real) {.importcpp: "Initialize",
                                      header: "Extrema_ExtSS.hxx".}
proc Perform*(this: var Extrema_ExtSS; S1: Adaptor3d_Surface; Uinf1: Standard_Real;
             Usup1: Standard_Real; Vinf1: Standard_Real; Vsup1: Standard_Real;
             TolS1: Standard_Real) {.importcpp: "Perform",
                                   header: "Extrema_ExtSS.hxx".}
proc IsDone*(this: Extrema_ExtSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtSS.hxx".}
proc IsParallel*(this: Extrema_ExtSS): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtSS.hxx".}
proc NbExt*(this: Extrema_ExtSS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtSS.hxx".}
proc SquareDistance*(this: Extrema_ExtSS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtSS.hxx".}
proc Points*(this: Extrema_ExtSS; N: Standard_Integer; P1: var Extrema_POnSurf;
            P2: var Extrema_POnSurf) {.noSideEffect, importcpp: "Points",
                                    header: "Extrema_ExtSS.hxx".}