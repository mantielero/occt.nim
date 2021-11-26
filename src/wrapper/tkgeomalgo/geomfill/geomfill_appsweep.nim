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

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GeomFill_SweepSectionGenerator"
discard "forward decl of GeomFill_Line"
type
  GeomFillAppSweep* {.importcpp: "GeomFill_AppSweep",
                     header: "GeomFill_AppSweep.hxx", bycopy.} = object of AppBlendApprox


proc newGeomFillAppSweep*(): GeomFillAppSweep {.cdecl, constructor,
    importcpp: "GeomFill_AppSweep(@)", dynlib: tkgeomalgo.}
proc newGeomFillAppSweep*(degmin: cint; degmax: cint; tol3d: cfloat; tol2d: cfloat;
                         nbIt: cint; knownParameters: bool = false): GeomFillAppSweep {.
    cdecl, constructor, importcpp: "GeomFill_AppSweep(@)", dynlib: tkgeomalgo.}
proc init*(this: var GeomFillAppSweep; degmin: cint; degmax: cint; tol3d: cfloat;
          tol2d: cfloat; nbIt: cint; knownParameters: bool = false) {.cdecl,
    importcpp: "Init", dynlib: tkgeomalgo.}
proc setParType*(this: var GeomFillAppSweep; parType: ApproxParametrizationType) {.
    cdecl, importcpp: "SetParType", dynlib: tkgeomalgo.}
proc setContinuity*(this: var GeomFillAppSweep; c: GeomAbsShape) {.cdecl,
    importcpp: "SetContinuity", dynlib: tkgeomalgo.}
proc setCriteriumWeight*(this: var GeomFillAppSweep; w1: cfloat; w2: cfloat; w3: cfloat) {.
    cdecl, importcpp: "SetCriteriumWeight", dynlib: tkgeomalgo.}
proc parType*(this: GeomFillAppSweep): ApproxParametrizationType {.noSideEffect,
    cdecl, importcpp: "ParType", dynlib: tkgeomalgo.}
proc continuity*(this: GeomFillAppSweep): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", dynlib: tkgeomalgo.}
proc criteriumWeight*(this: GeomFillAppSweep; w1: var cfloat; w2: var cfloat;
                     w3: var cfloat) {.noSideEffect, cdecl,
                                    importcpp: "CriteriumWeight",
                                    dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillAppSweep; lin: Handle[GeomFillLine];
             secGen: var GeomFillSweepSectionGenerator; spApprox: bool = false) {.
    cdecl, importcpp: "Perform", dynlib: tkgeomalgo.}
proc performSmoothing*(this: var GeomFillAppSweep; lin: Handle[GeomFillLine];
                      secGen: var GeomFillSweepSectionGenerator) {.cdecl,
    importcpp: "PerformSmoothing", dynlib: tkgeomalgo.}
proc perform*(this: var GeomFillAppSweep; lin: Handle[GeomFillLine];
             secGen: var GeomFillSweepSectionGenerator; nbMaxP: cint) {.cdecl,
    importcpp: "Perform", dynlib: tkgeomalgo.}
proc isDone*(this: GeomFillAppSweep): bool {.noSideEffect, cdecl, importcpp: "IsDone",
    dynlib: tkgeomalgo.}
proc surfShape*(this: GeomFillAppSweep; uDegree: var cint; vDegree: var cint;
               nbUPoles: var cint; nbVPoles: var cint; nbUKnots: var cint;
               nbVKnots: var cint) {.noSideEffect, cdecl, importcpp: "SurfShape",
                                  dynlib: tkgeomalgo.}
proc surface*(this: GeomFillAppSweep; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkgeomalgo.}
proc uDegree*(this: GeomFillAppSweep): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkgeomalgo.}
proc vDegree*(this: GeomFillAppSweep): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkgeomalgo.}
proc surfPoles*(this: GeomFillAppSweep): TColgpArray2OfPnt {.noSideEffect, cdecl,
    importcpp: "SurfPoles", dynlib: tkgeomalgo.}
proc surfWeights*(this: GeomFillAppSweep): TColStdArray2OfReal {.noSideEffect, cdecl,
    importcpp: "SurfWeights", dynlib: tkgeomalgo.}
proc surfUKnots*(this: GeomFillAppSweep): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfUKnots", dynlib: tkgeomalgo.}
proc surfVKnots*(this: GeomFillAppSweep): TColStdArray1OfReal {.noSideEffect, cdecl,
    importcpp: "SurfVKnots", dynlib: tkgeomalgo.}
proc surfUMults*(this: GeomFillAppSweep): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfUMults", dynlib: tkgeomalgo.}
proc surfVMults*(this: GeomFillAppSweep): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "SurfVMults", dynlib: tkgeomalgo.}
proc nbCurves2d*(this: GeomFillAppSweep): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves2d", dynlib: tkgeomalgo.}
proc curves2dShape*(this: GeomFillAppSweep; degree: var cint; nbPoles: var cint;
                   nbKnots: var cint) {.noSideEffect, cdecl,
                                     importcpp: "Curves2dShape",
                                     dynlib: tkgeomalgo.}
proc curve2d*(this: GeomFillAppSweep; index: cint; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, cdecl, importcpp: "Curve2d", dynlib: tkgeomalgo.}
proc curves2dDegree*(this: GeomFillAppSweep): cint {.noSideEffect, cdecl,
    importcpp: "Curves2dDegree", dynlib: tkgeomalgo.}
proc curve2dPoles*(this: GeomFillAppSweep; index: cint): TColgpArray1OfPnt2d {.
    noSideEffect, cdecl, importcpp: "Curve2dPoles", dynlib: tkgeomalgo.}
proc curves2dKnots*(this: GeomFillAppSweep): TColStdArray1OfReal {.noSideEffect,
    cdecl, importcpp: "Curves2dKnots", dynlib: tkgeomalgo.}
proc curves2dMults*(this: GeomFillAppSweep): TColStdArray1OfInteger {.noSideEffect,
    cdecl, importcpp: "Curves2dMults", dynlib: tkgeomalgo.}
proc tolReached*(this: GeomFillAppSweep; tol3d: var cfloat; tol2d: var cfloat) {.
    noSideEffect, cdecl, importcpp: "TolReached", dynlib: tkgeomalgo.}
proc tolCurveOnSurf*(this: GeomFillAppSweep; index: cint): cfloat {.noSideEffect,
    cdecl, importcpp: "TolCurveOnSurf", dynlib: tkgeomalgo.}
##  #define TheSectionGenerator GeomFill_SweepSectionGenerator
##  #define TheSectionGenerator_hxx <GeomFill_SweepSectionGenerator.hxx>
##  #define Handle_TheLine Handle(GeomFill_Line)
##  #define TheLine GeomFill_Line
##  #define TheLine_hxx <GeomFill_Line.hxx>
##  #define AppBlend_AppSurf GeomFill_AppSweep
##  #define AppBlend_AppSurf_hxx <GeomFill_AppSweep.hxx>
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
