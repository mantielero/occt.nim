##  Created on: 1993-11-16
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Geom2d_Curve"
type
  ChFiDS_FaceInterference* {.importcpp: "ChFiDS_FaceInterference",
                            header: "ChFiDS_FaceInterference.hxx", bycopy.} = object


proc newChFiDS_FaceInterference*(): ChFiDS_FaceInterference {.cdecl, constructor,
    importcpp: "ChFiDS_FaceInterference(@)", dynlib: tkfillet.}
proc setInterference*(this: var ChFiDS_FaceInterference; lineIndex: cint;
                     trans: TopAbsOrientation; pCurv1: Handle[Geom2dCurve];
                     pCurv2: Handle[Geom2dCurve]) {.cdecl,
    importcpp: "SetInterference", dynlib: tkfillet.}
proc setTransition*(this: var ChFiDS_FaceInterference; trans: TopAbsOrientation) {.
    cdecl, importcpp: "SetTransition", dynlib: tkfillet.}
proc setFirstParameter*(this: var ChFiDS_FaceInterference; u1: cfloat) {.cdecl,
    importcpp: "SetFirstParameter", dynlib: tkfillet.}
proc setLastParameter*(this: var ChFiDS_FaceInterference; u1: cfloat) {.cdecl,
    importcpp: "SetLastParameter", dynlib: tkfillet.}
proc setParameter*(this: var ChFiDS_FaceInterference; u1: cfloat; isFirst: bool) {.
    cdecl, importcpp: "SetParameter", dynlib: tkfillet.}
proc lineIndex*(this: ChFiDS_FaceInterference): cint {.noSideEffect, cdecl,
    importcpp: "LineIndex", dynlib: tkfillet.}
proc setLineIndex*(this: var ChFiDS_FaceInterference; i: cint) {.cdecl,
    importcpp: "SetLineIndex", dynlib: tkfillet.}
proc transition*(this: ChFiDS_FaceInterference): TopAbsOrientation {.noSideEffect,
    cdecl, importcpp: "Transition", dynlib: tkfillet.}
proc pCurveOnFace*(this: ChFiDS_FaceInterference): Handle[Geom2dCurve] {.
    noSideEffect, cdecl, importcpp: "PCurveOnFace", dynlib: tkfillet.}
proc pCurveOnSurf*(this: ChFiDS_FaceInterference): Handle[Geom2dCurve] {.
    noSideEffect, cdecl, importcpp: "PCurveOnSurf", dynlib: tkfillet.}
proc changePCurveOnFace*(this: var ChFiDS_FaceInterference): var Handle[Geom2dCurve] {.
    cdecl, importcpp: "ChangePCurveOnFace", dynlib: tkfillet.}
proc changePCurveOnSurf*(this: var ChFiDS_FaceInterference): var Handle[Geom2dCurve] {.
    cdecl, importcpp: "ChangePCurveOnSurf", dynlib: tkfillet.}
proc firstParameter*(this: ChFiDS_FaceInterference): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", dynlib: tkfillet.}
proc lastParameter*(this: ChFiDS_FaceInterference): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", dynlib: tkfillet.}
proc parameter*(this: ChFiDS_FaceInterference; isFirst: bool): cfloat {.noSideEffect,
    cdecl, importcpp: "Parameter", dynlib: tkfillet.}