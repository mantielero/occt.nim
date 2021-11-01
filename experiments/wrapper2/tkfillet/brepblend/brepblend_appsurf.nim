##  Created on: 1993-12-06
##  Created by: Jacques GOUSSARD
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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_AppFunction"
discard "forward decl of BRepBlend_Line"
type
  BRepBlendAppSurf* {.importcpp: "BRepBlend_AppSurf",
                     header: "BRepBlend_AppSurf.hxx", bycopy.} = object of AppBlendApprox


proc newBRepBlendAppSurf*(): BRepBlendAppSurf {.cdecl, constructor,
    importcpp: "BRepBlend_AppSurf(@)", dynlib: tkfillet.}
proc newBRepBlendAppSurf*(degmin: cint; degmax: cint; tol3d: cfloat; tol2d: cfloat;
                         nbIt: cint; knownParameters: bool = false): BRepBlendAppSurf {.
    cdecl, constructor, importcpp: "BRepBlend_AppSurf(@)", dynlib: tkfillet.}
proc init*(this: var BRepBlendAppSurf; degmin: cint; degmax: cint; tol3d: cfloat;
          tol2d: cfloat; nbIt: cint; knownParameters: bool = false) {.cdecl,
    importcpp: "Init", dynlib: tkfillet.}
proc setParType*(this: var BRepBlendAppSurf; parType: ApproxParametrizationType) {.
    cdecl, importcpp: "SetParType", dynlib: tkfillet.}
proc setContinuity*(this: var BRepBlendAppSurf; c: GeomAbsShape) {.cdecl,
    importcpp: "SetContinuity", dynlib: tkfillet.}
proc setCriteriumWeight*(this: var BRepBlendAppSurf; w1: cfloat; w2: cfloat; w3: cfloat) {.
    cdecl, importcpp: "SetCriteriumWeight", dynlib: tkfillet.}
proc parType*(this: BRepBlendAppSurf): ApproxParametrizationType {.noSideEffect,
    cdecl, importcpp: "ParType", dynlib: tkfillet.}
proc continuity*(this: BRepBlendAppSurf): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkfillet.}
proc criteriumWeight*(this: BRepBlendAppSurf; w1: var cfloat; w2: var cfloat;
                     w3: var cfloat) {.noSideEffect, cdecl,
                                    importcpp: "CriteriumWeight", dynlib: tkfillet.}
proc perform*(this: var BRepBlendAppSurf; lin: Handle[BRepBlendLine];
             secGen: var BlendAppFunction; spApprox: bool = false) {.cdecl,
    importcpp: "Perform", dynlib: tkfillet.}
proc performSmoothing*(this: var BRepBlendAppSurf; lin: Handle[BRepBlendLine];
                      secGen: var BlendAppFunction) {.cdecl,
    importcpp: "PerformSmoothing", dynlib: tkfillet.}
proc perform*(this: var BRepBlendAppSurf; lin: Handle[BRepBlendLine];
             secGen: var BlendAppFunction; nbMaxP: cint) {.cdecl,
    importcpp: "Perform", dynlib: tkfillet.}
proc isDone*(this: BRepBlendAppSurf): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    dynlib: tkfillet.}
proc surfShape*(this: BRepBlendAppSurf; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  dynlib: tkfillet.}
proc surface*(this: BRepBlendAppSurf; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkfillet.}
proc uDegree*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkfillet.}
proc vDegree*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkfillet.}
proc surfPoles*(this: BRepBlendAppSurf): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", dynlib: tkfillet.}
proc surfWeights*(this: BRepBlendAppSurf): TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "SurfWeights", dynlib: tkfillet.}
proc surfUKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfUKnots", dynlib: tkfillet.}
proc surfVKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfVKnots", dynlib: tkfillet.}
proc surfUMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfUMults", dynlib: tkfillet.}
proc surfVMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfVMults", dynlib: tkfillet.}
proc nbCurves2d*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", dynlib: tkfillet.}
proc curves2dShape*(this: BRepBlendAppSurf; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape", dynlib: tkfillet.}
proc curve2d*(this: BRepBlendAppSurf; index: cint; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Curve2d", dynlib: tkfillet.}
proc curves2dDegree*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", dynlib: tkfillet.}
proc curve2dPoles*(this: BRepBlendAppSurf; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", dynlib: tkfillet.}
proc curves2dKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Curves2dKnots", dynlib: tkfillet.}
proc curves2dMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Curves2dMults", dynlib: tkfillet.}
proc tolReached*(this: BRepBlendAppSurf; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", dynlib: tkfillet.}
proc tolCurveOnSurf*(this: BRepBlendAppSurf; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "TolCurveOnSurf", dynlib: tkfillet.}
##  #define TheSectionGenerator Blend_AppFunction
##  #define TheSectionGenerator_hxx <Blend_AppFunction.hxx>
##  #define Handle_TheLine Handle(BRepBlend_Line)
##  #define TheLine BRepBlend_Line
##  #define TheLine_hxx <BRepBlend_Line.hxx>
##  #define AppBlend_AppSurf BRepBlend_AppSurf
##  #define AppBlend_AppSurf_hxx <BRepBlend_AppSurf.hxx>
##
##  #include <AppBlend_AppSurf.lxx>
##
##  #undef TheSectionGenerator
##  #undef TheSectionGenerator_hxx
##  #undef Handle_TheLine
##  #undef TheLine
##  #undef TheLine_hxx
##  #undef AppBlend_AppSurf
##  #undef AppBlend_AppSurf_hxx
