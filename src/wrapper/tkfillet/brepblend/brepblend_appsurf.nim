import ../../tkmath/tcolgp/tcolgp_types
import brepblend_types
import ../../tkgeombase/approx/approx_types
import ../blend/blend_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types





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



proc newBRepBlendAppSurf*(): BRepBlendAppSurf {.cdecl, constructor,
    importcpp: "BRepBlend_AppSurf(@)", header: "BRepBlend_AppSurf.hxx".}
proc newBRepBlendAppSurf*(degmin: cint; degmax: cint; tol3d: cfloat; tol2d: cfloat;
                         nbIt: cint; knownParameters: bool = false): BRepBlendAppSurf {.
    cdecl, constructor, importcpp: "BRepBlend_AppSurf(@)", header: "BRepBlend_AppSurf.hxx".}
proc init*(this: var BRepBlendAppSurf; degmin: cint; degmax: cint; tol3d: cfloat;
          tol2d: cfloat; nbIt: cint; knownParameters: bool = false) {.cdecl,
    importcpp: "Init", header: "BRepBlend_AppSurf.hxx".}
proc setParType*(this: var BRepBlendAppSurf; parType: ApproxParametrizationType) {.
    cdecl, importcpp: "SetParType", header: "BRepBlend_AppSurf.hxx".}
proc setContinuity*(this: var BRepBlendAppSurf; c: GeomAbsShape) {.cdecl,
    importcpp: "SetContinuity", header: "BRepBlend_AppSurf.hxx".}
proc setCriteriumWeight*(this: var BRepBlendAppSurf; w1: cfloat; w2: cfloat; w3: cfloat) {.
    cdecl, importcpp: "SetCriteriumWeight", header: "BRepBlend_AppSurf.hxx".}
proc parType*(this: BRepBlendAppSurf): ApproxParametrizationType {.noSideEffect,
    cdecl, importcpp: "ParType", header: "BRepBlend_AppSurf.hxx".}
proc continuity*(this: BRepBlendAppSurf): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "BRepBlend_AppSurf.hxx".}
proc criteriumWeight*(this: BRepBlendAppSurf; w1: var cfloat; w2: var cfloat;
                     w3: var cfloat) {.noSideEffect, cdecl,
                                    importcpp: "CriteriumWeight", header: "BRepBlend_AppSurf.hxx".}
proc perform*(this: var BRepBlendAppSurf; lin: Handle[BRepBlendLine];
             secGen: var BlendAppFunction; spApprox: bool = false) {.cdecl,
    importcpp: "Perform", header: "BRepBlend_AppSurf.hxx".}
proc performSmoothing*(this: var BRepBlendAppSurf; lin: Handle[BRepBlendLine];
                      secGen: var BlendAppFunction) {.cdecl,
    importcpp: "PerformSmoothing", header: "BRepBlend_AppSurf.hxx".}
proc perform*(this: var BRepBlendAppSurf; lin: Handle[BRepBlendLine];
             secGen: var BlendAppFunction; nbMaxP: cint) {.cdecl,
    importcpp: "Perform", header: "BRepBlend_AppSurf.hxx".}
proc isDone*(this: BRepBlendAppSurf): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    header: "BRepBlend_AppSurf.hxx".}
proc surfShape*(this: BRepBlendAppSurf; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  header: "BRepBlend_AppSurf.hxx".}
proc surface*(this: BRepBlendAppSurf; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", header: "BRepBlend_AppSurf.hxx".}
proc uDegree*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "BRepBlend_AppSurf.hxx".}
proc vDegree*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "BRepBlend_AppSurf.hxx".}
proc surfPoles*(this: BRepBlendAppSurf): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", header: "BRepBlend_AppSurf.hxx".}
proc surfWeights*(this: BRepBlendAppSurf): TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "SurfWeights", header: "BRepBlend_AppSurf.hxx".}
proc surfUKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfUKnots", header: "BRepBlend_AppSurf.hxx".}
proc surfVKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfVKnots", header: "BRepBlend_AppSurf.hxx".}
proc surfUMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfUMults", header: "BRepBlend_AppSurf.hxx".}
proc surfVMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfVMults", header: "BRepBlend_AppSurf.hxx".}
proc nbCurves2d*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", header: "BRepBlend_AppSurf.hxx".}
proc curves2dShape*(this: BRepBlendAppSurf; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape", header: "BRepBlend_AppSurf.hxx".}
proc curve2d*(this: BRepBlendAppSurf; index: cint; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Curve2d", header: "BRepBlend_AppSurf.hxx".}
proc curves2dDegree*(this: BRepBlendAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", header: "BRepBlend_AppSurf.hxx".}
proc curve2dPoles*(this: BRepBlendAppSurf; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", header: "BRepBlend_AppSurf.hxx".}
proc curves2dKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Curves2dKnots", header: "BRepBlend_AppSurf.hxx".}
proc curves2dMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Curves2dMults", header: "BRepBlend_AppSurf.hxx".}
proc tolReached*(this: BRepBlendAppSurf; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", header: "BRepBlend_AppSurf.hxx".}
proc tolCurveOnSurf*(this: BRepBlendAppSurf; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "TolCurveOnSurf", header: "BRepBlend_AppSurf.hxx".}
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



