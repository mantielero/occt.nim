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
  ../Standard/Standard_Boolean, Extrema_ExtElCS, Extrema_SequenceOfPOnSurf,
  Extrema_SequenceOfPOnCurv, ../Standard/Standard_Real,
  ../TColStd/TColStd_SequenceOfReal, ../GeomAbs/GeomAbs_SurfaceType,
  ../Standard/Standard_Integer

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnCurv"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of gp_Pnt"
type
  Extrema_ExtCS* {.importcpp: "Extrema_ExtCS", header: "Extrema_ExtCS.hxx", bycopy.} = object


proc constructExtrema_ExtCS*(): Extrema_ExtCS {.constructor,
    importcpp: "Extrema_ExtCS(@)", header: "Extrema_ExtCS.hxx".}
proc constructExtrema_ExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface;
                            TolC: Standard_Real; TolS: Standard_Real): Extrema_ExtCS {.
    constructor, importcpp: "Extrema_ExtCS(@)", header: "Extrema_ExtCS.hxx".}
proc constructExtrema_ExtCS*(C: Adaptor3d_Curve; S: Adaptor3d_Surface;
                            UCinf: Standard_Real; UCsup: Standard_Real;
                            Uinf: Standard_Real; Usup: Standard_Real;
                            Vinf: Standard_Real; Vsup: Standard_Real;
                            TolC: Standard_Real; TolS: Standard_Real): Extrema_ExtCS {.
    constructor, importcpp: "Extrema_ExtCS(@)", header: "Extrema_ExtCS.hxx".}
proc Initialize*(this: var Extrema_ExtCS; S: Adaptor3d_Surface; Uinf: Standard_Real;
                Usup: Standard_Real; Vinf: Standard_Real; Vsup: Standard_Real;
                TolC: Standard_Real; TolS: Standard_Real) {.importcpp: "Initialize",
    header: "Extrema_ExtCS.hxx".}
proc Perform*(this: var Extrema_ExtCS; C: Adaptor3d_Curve; Uinf: Standard_Real;
             Usup: Standard_Real) {.importcpp: "Perform",
                                  header: "Extrema_ExtCS.hxx".}
proc IsDone*(this: Extrema_ExtCS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtCS.hxx".}
proc IsParallel*(this: Extrema_ExtCS): Standard_Boolean {.noSideEffect,
    importcpp: "IsParallel", header: "Extrema_ExtCS.hxx".}
proc NbExt*(this: Extrema_ExtCS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtCS.hxx".}
proc SquareDistance*(this: Extrema_ExtCS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtCS.hxx".}
proc Points*(this: Extrema_ExtCS; N: Standard_Integer; P1: var Extrema_POnCurv;
            P2: var Extrema_POnSurf) {.noSideEffect, importcpp: "Points",
                                    header: "Extrema_ExtCS.hxx".}