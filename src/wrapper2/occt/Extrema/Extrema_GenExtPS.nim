##  Created on: 1995-07-18
##  Created by: Modelistation
##  Copyright (c) 1995-1999 Matra Datavision
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
  Extrema_HArray2OfPOnSurfParams, Extrema_HUBTreeOfSphere,
  ../Bnd/Bnd_HArray1OfSphere, Extrema_FuncPSNorm,
  ../Adaptor3d/Adaptor3d_SurfacePtr, Extrema_ExtFlag, Extrema_ExtAlgo,
  ../TColStd/TColStd_HArray1OfReal, Extrema_POnSurfParams

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_TypeMismatch"
discard "forward decl of gp_Pnt"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of Extrema_POnSurf"
discard "forward decl of Extrema_POnSurfParams"
type
  Extrema_GenExtPS* {.importcpp: "Extrema_GenExtPS",
                     header: "Extrema_GenExtPS.hxx", bycopy.} = object


proc constructExtrema_GenExtPS*(): Extrema_GenExtPS {.constructor,
    importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc constructExtrema_GenExtPS*(P: gp_Pnt; S: Adaptor3d_Surface;
                               NbU: Standard_Integer; NbV: Standard_Integer;
                               TolU: Standard_Real; TolV: Standard_Real;
                               F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                               A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_GenExtPS {.
    constructor, importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc constructExtrema_GenExtPS*(P: gp_Pnt; S: Adaptor3d_Surface;
                               NbU: Standard_Integer; NbV: Standard_Integer;
                               Umin: Standard_Real; Usup: Standard_Real;
                               Vmin: Standard_Real; Vsup: Standard_Real;
                               TolU: Standard_Real; TolV: Standard_Real;
                               F: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                               A: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Extrema_GenExtPS {.
    constructor, importcpp: "Extrema_GenExtPS(@)", header: "Extrema_GenExtPS.hxx".}
proc Initialize*(this: var Extrema_GenExtPS; S: Adaptor3d_Surface;
                NbU: Standard_Integer; NbV: Standard_Integer; TolU: Standard_Real;
                TolV: Standard_Real) {.importcpp: "Initialize",
                                     header: "Extrema_GenExtPS.hxx".}
proc Initialize*(this: var Extrema_GenExtPS; S: Adaptor3d_Surface;
                NbU: Standard_Integer; NbV: Standard_Integer; Umin: Standard_Real;
                Usup: Standard_Real; Vmin: Standard_Real; Vsup: Standard_Real;
                TolU: Standard_Real; TolV: Standard_Real) {.importcpp: "Initialize",
    header: "Extrema_GenExtPS.hxx".}
proc Perform*(this: var Extrema_GenExtPS; P: gp_Pnt) {.importcpp: "Perform",
    header: "Extrema_GenExtPS.hxx".}
proc SetFlag*(this: var Extrema_GenExtPS; F: Extrema_ExtFlag) {.importcpp: "SetFlag",
    header: "Extrema_GenExtPS.hxx".}
proc SetAlgo*(this: var Extrema_GenExtPS; A: Extrema_ExtAlgo) {.importcpp: "SetAlgo",
    header: "Extrema_GenExtPS.hxx".}
proc IsDone*(this: Extrema_GenExtPS): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "Extrema_GenExtPS.hxx".}
proc NbExt*(this: Extrema_GenExtPS): Standard_Integer {.noSideEffect,
    importcpp: "NbExt", header: "Extrema_GenExtPS.hxx".}
proc SquareDistance*(this: Extrema_GenExtPS; N: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "SquareDistance", header: "Extrema_GenExtPS.hxx".}
proc Point*(this: Extrema_GenExtPS; N: Standard_Integer): Extrema_POnSurf {.
    noSideEffect, importcpp: "Point", header: "Extrema_GenExtPS.hxx".}