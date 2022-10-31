import ../../tkmath/tcolgp/tcolgp_types
import ../../tkgeombase/approx/approx_types
import ../../tkernel/standard/standard_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkmath/geomabs/geomabs_types
import geomfill_types





##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
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



proc newGeomFillAppSurf*(): GeomFillAppSurf {.cdecl, constructor,
    importcpp: "GeomFill_AppSurf(@)", header: "GeomFill_AppSurf.hxx".}
proc newGeomFillAppSurf*(degmin: cint; degmax: cint; tol3d: cfloat; tol2d: cfloat;
                        nbIt: cint; knownParameters: bool = false): GeomFillAppSurf {.
    cdecl, constructor, importcpp: "GeomFill_AppSurf(@)", header: "GeomFill_AppSurf.hxx".}
proc init*(this: var GeomFillAppSurf; degmin: cint; degmax: cint; tol3d: cfloat;
          tol2d: cfloat; nbIt: cint; knownParameters: bool = false) {.cdecl,
    importcpp: "Init", header: "GeomFill_AppSurf.hxx".}
proc setParType*(this: var GeomFillAppSurf; parType: ApproxParametrizationType) {.
    cdecl, importcpp: "SetParType", header: "GeomFill_AppSurf.hxx".}
proc setContinuity*(this: var GeomFillAppSurf; c: GeomAbsShape) {.cdecl,
    importcpp: "SetContinuity", header: "GeomFill_AppSurf.hxx".}
proc setCriteriumWeight*(this: var GeomFillAppSurf; w1: cfloat; w2: cfloat; w3: cfloat) {.
    cdecl, importcpp: "SetCriteriumWeight", header: "GeomFill_AppSurf.hxx".}
proc parType*(this: GeomFillAppSurf): ApproxParametrizationType {.noSideEffect,
    cdecl, importcpp: "ParType", header: "GeomFill_AppSurf.hxx".}
proc continuity*(this: GeomFillAppSurf): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "GeomFill_AppSurf.hxx".}
proc criteriumWeight*(this: GeomFillAppSurf; w1: var cfloat; w2: var cfloat;
                     w3: var cfloat) {.noSideEffect, cdecl,
                                    importcpp: "CriteriumWeight",
                                    header: "GeomFill_AppSurf.hxx".}
proc perform*(this: var GeomFillAppSurf; lin: Handle[GeomFillLine];
             secGen: var GeomFillSectionGenerator; spApprox: bool = false) {.cdecl,
    importcpp: "Perform", header: "GeomFill_AppSurf.hxx".}
proc performSmoothing*(this: var GeomFillAppSurf; lin: Handle[GeomFillLine];
                      secGen: var GeomFillSectionGenerator) {.cdecl,
    importcpp: "PerformSmoothing", header: "GeomFill_AppSurf.hxx".}
proc perform*(this: var GeomFillAppSurf; lin: Handle[GeomFillLine];
             secGen: var GeomFillSectionGenerator; nbMaxP: cint) {.cdecl,
    importcpp: "Perform", header: "GeomFill_AppSurf.hxx".}
proc isDone*(this: GeomFillAppSurf): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                        header: "GeomFill_AppSurf.hxx".}
proc surfShape*(this: GeomFillAppSurf; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  header: "GeomFill_AppSurf.hxx".}
proc surface*(this: GeomFillAppSurf; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", header: "GeomFill_AppSurf.hxx".}
proc uDegree*(this: GeomFillAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "GeomFill_AppSurf.hxx".}
proc vDegree*(this: GeomFillAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "GeomFill_AppSurf.hxx".}
proc surfPoles*(this: GeomFillAppSurf): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", header: "GeomFill_AppSurf.hxx".}
proc surfWeights*(this: GeomFillAppSurf): TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "SurfWeights", header: "GeomFill_AppSurf.hxx".}
proc surfUKnots*(this: GeomFillAppSurf): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfUKnots", header: "GeomFill_AppSurf.hxx".}
proc surfVKnots*(this: GeomFillAppSurf): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfVKnots", header: "GeomFill_AppSurf.hxx".}
proc surfUMults*(this: GeomFillAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfUMults", header: "GeomFill_AppSurf.hxx".}
proc surfVMults*(this: GeomFillAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfVMults", header: "GeomFill_AppSurf.hxx".}
proc nbCurves2d*(this: GeomFillAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", header: "GeomFill_AppSurf.hxx".}
proc curves2dShape*(this: GeomFillAppSurf; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape",
                                     header: "GeomFill_AppSurf.hxx".}
proc curve2d*(this: GeomFillAppSurf; index: cint; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Curve2d", header: "GeomFill_AppSurf.hxx".}
proc curves2dDegree*(this: GeomFillAppSurf): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", header: "GeomFill_AppSurf.hxx".}
proc curve2dPoles*(this: GeomFillAppSurf; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", header: "GeomFill_AppSurf.hxx".}
proc curves2dKnots*(this: GeomFillAppSurf): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Curves2dKnots", header: "GeomFill_AppSurf.hxx".}
proc curves2dMults*(this: GeomFillAppSurf): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Curves2dMults", header: "GeomFill_AppSurf.hxx".}
proc tolReached*(this: GeomFillAppSurf; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", header: "GeomFill_AppSurf.hxx".}
proc tolCurveOnSurf*(this: GeomFillAppSurf; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "TolCurveOnSurf", header: "GeomFill_AppSurf.hxx".}
##  #define TheSectionGenerator GeomFill_SectionGenerator
##  #define TheSectionGenerator_hxx <GeomFill_SectionGenerator.hxx>
##  #define Handle_TheLine Handle(GeomFill_Line)
##  #define TheLine GeomFill_Line
##  #define TheLine_hxx <GeomFill_Line.hxx>
##  #define AppBlend_AppSurf GeomFill_AppSurf
##  #define AppBlend_AppSurf_hxx <GeomFill_AppSurf.hxx>
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



