##  Created on: 1994-02-01
##  Created by: Laurent PAINNOT
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Boolean, Extrema_ExtPElS, Extrema_GenExtPS,
  Extrema_SequenceOfPOnSurf, ../Standard/Standard_Real, ../gp/gp_Pnt,
  ../TColStd/TColStd_SequenceOfReal, ../GeomAbs/GeomAbs_SurfaceType,
  Extrema_ExtFlag, Extrema_ExtAlgo, ../Standard/Standard_Integer

discard "forward decl of Extrema_ExtPExtS"
discard "forward decl of Extrema_ExtPRevS"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
type
  Extrema_ExtPS* {.importcpp: "Extrema_ExtPS", header: "Extrema_ExtPS.hxx", bycopy.} = object


proc constructExtrema_ExtPS*(): Extrema_ExtPS {.constructor,
    importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc constructExtrema_ExtPS*(P: gp_Pnt; S: Adaptor3d_Surface; TolU: Standard_Real;
                            TolV: Standard_Real;
                            F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                            A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_ExtPS {.
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc constructExtrema_ExtPS*(P: gp_Pnt; S: Adaptor3d_Surface; Uinf: Standard_Real;
                            Usup: Standard_Real; Vinf: Standard_Real;
                            Vsup: Standard_Real; TolU: Standard_Real;
                            TolV: Standard_Real;
                            F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                            A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_ExtPS {.
    constructor, importcpp: "Extrema_ExtPS(@)", header: "Extrema_ExtPS.hxx".}
proc Initialize*(this: var Extrema_ExtPS; S: Adaptor3d_Surface; Uinf: Standard_Real;
                Usup: Standard_Real; Vinf: Standard_Real; Vsup: Standard_Real;
                TolU: Standard_Real; TolV: Standard_Real) {.importcpp: "Initialize",
    header: "Extrema_ExtPS.hxx".}
proc Perform*(this: var Extrema_ExtPS; P: gp_Pnt) {.importcpp: "Perform",
    header: "Extrema_ExtPS.hxx".}
proc IsDone*(this: Extrema_ExtPS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_ExtPS.hxx".}
proc NbExt*(this: Extrema_ExtPS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_ExtPS.hxx".}
proc SquareDistance*(this: Extrema_ExtPS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_ExtPS.hxx".}
proc Point*(this: Extrema_ExtPS; N: Standard_Integer): Extrema_POnSurf {.noSideEffect,
    importcpp: "Point", header: "Extrema_ExtPS.hxx".}
proc TrimmedSquareDistances*(this: Extrema_ExtPS; dUfVf: var Standard_Real;
                            dUfVl: var Standard_Real; dUlVf: var Standard_Real;
                            dUlVl: var Standard_Real; PUfVf: var gp_Pnt;
                            PUfVl: var gp_Pnt; PUlVf: var gp_Pnt; PUlVl: var gp_Pnt) {.
    noSideEffect, importcpp: "TrimmedSquareDistances", header: "Extrema_ExtPS.hxx".}
proc SetFlag*(this: var Extrema_ExtPS; F: Extrema_ExtFlag) {.importcpp: "SetFlag",
    header: "Extrema_ExtPS.hxx".}
proc SetAlgo*(this: var Extrema_ExtPS; A: Extrema_ExtAlgo) {.importcpp: "SetAlgo",
    header: "Extrema_ExtPS.hxx".}