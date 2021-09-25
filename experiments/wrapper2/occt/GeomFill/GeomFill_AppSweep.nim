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

## !!!Ignored construct:  # _GeomFill_AppSweep_HeaderFile [NewLine] # _GeomFill_AppSweep_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColgp_HArray2OfPnt . hxx > [NewLine] # < TColStd_HArray2OfReal . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < TColStd_HArray1OfInteger . hxx > [NewLine] # < TColgp_SequenceOfArray1OfPnt2d . hxx > [NewLine] # < Approx_ParametrizationType . hxx > [NewLine] # < GeomAbs_Shape . hxx > [NewLine] # < AppBlend_Approx . hxx > [NewLine] # < TColgp_Array2OfPnt . hxx > [NewLine] # < TColStd_Array2OfReal . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < TColStd_Array1OfInteger . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GeomFill_SweepSectionGenerator"
discard "forward decl of GeomFill_Line"
type
  GeomFillAppSweep* {.importcpp: "GeomFill_AppSweep",
                     header: "GeomFill_AppSweep.hxx", bycopy.} = object of AppBlendApprox


proc constructGeomFillAppSweep*(): GeomFillAppSweep {.constructor,
    importcpp: "GeomFill_AppSweep(@)", header: "GeomFill_AppSweep.hxx".}
proc constructGeomFillAppSweep*(degmin: int; degmax: int; tol3d: float; tol2d: float;
                               nbIt: int; knownParameters: bool = false): GeomFillAppSweep {.
    constructor, importcpp: "GeomFill_AppSweep(@)", header: "GeomFill_AppSweep.hxx".}
proc init*(this: var GeomFillAppSweep; degmin: int; degmax: int; tol3d: float;
          tol2d: float; nbIt: int; knownParameters: bool = false) {.importcpp: "Init",
    header: "GeomFill_AppSweep.hxx".}
proc setParType*(this: var GeomFillAppSweep; parType: ApproxParametrizationType) {.
    importcpp: "SetParType", header: "GeomFill_AppSweep.hxx".}
proc setContinuity*(this: var GeomFillAppSweep; c: GeomAbsShape) {.
    importcpp: "SetContinuity", header: "GeomFill_AppSweep.hxx".}
proc setCriteriumWeight*(this: var GeomFillAppSweep; w1: float; w2: float; w3: float) {.
    importcpp: "SetCriteriumWeight", header: "GeomFill_AppSweep.hxx".}
proc parType*(this: GeomFillAppSweep): ApproxParametrizationType {.noSideEffect,
    importcpp: "ParType", header: "GeomFill_AppSweep.hxx".}
proc continuity*(this: GeomFillAppSweep): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "GeomFill_AppSweep.hxx".}
proc criteriumWeight*(this: GeomFillAppSweep; w1: var float; w2: var float; w3: var float) {.
    noSideEffect, importcpp: "CriteriumWeight", header: "GeomFill_AppSweep.hxx".}
proc perform*(this: var GeomFillAppSweep; lin: Handle[GeomFillLine];
             secGen: var GeomFillSweepSectionGenerator; spApprox: bool = false) {.
    importcpp: "Perform", header: "GeomFill_AppSweep.hxx".}
proc performSmoothing*(this: var GeomFillAppSweep; lin: Handle[GeomFillLine];
                      secGen: var GeomFillSweepSectionGenerator) {.
    importcpp: "PerformSmoothing", header: "GeomFill_AppSweep.hxx".}
proc perform*(this: var GeomFillAppSweep; lin: Handle[GeomFillLine];
             secGen: var GeomFillSweepSectionGenerator; nbMaxP: int) {.
    importcpp: "Perform", header: "GeomFill_AppSweep.hxx".}
proc isDone*(this: GeomFillAppSweep): bool {.noSideEffect, importcpp: "IsDone",
    header: "GeomFill_AppSweep.hxx".}
proc surfShape*(this: GeomFillAppSweep; uDegree: var int; vDegree: var int;
               nbUPoles: var int; nbVPoles: var int; nbUKnots: var int; nbVKnots: var int) {.
    noSideEffect, importcpp: "SurfShape", header: "GeomFill_AppSweep.hxx".}
proc surface*(this: GeomFillAppSweep; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_AppSweep.hxx".}
proc uDegree*(this: GeomFillAppSweep): int {.noSideEffect, importcpp: "UDegree",
    header: "GeomFill_AppSweep.hxx".}
proc vDegree*(this: GeomFillAppSweep): int {.noSideEffect, importcpp: "VDegree",
    header: "GeomFill_AppSweep.hxx".}
proc surfPoles*(this: GeomFillAppSweep): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "GeomFill_AppSweep.hxx".}
proc surfWeights*(this: GeomFillAppSweep): TColStdArray2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "GeomFill_AppSweep.hxx".}
proc surfUKnots*(this: GeomFillAppSweep): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "GeomFill_AppSweep.hxx".}
proc surfVKnots*(this: GeomFillAppSweep): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "GeomFill_AppSweep.hxx".}
proc surfUMults*(this: GeomFillAppSweep): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "GeomFill_AppSweep.hxx".}
proc surfVMults*(this: GeomFillAppSweep): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "GeomFill_AppSweep.hxx".}
proc nbCurves2d*(this: GeomFillAppSweep): int {.noSideEffect,
    importcpp: "NbCurves2d", header: "GeomFill_AppSweep.hxx".}
proc curves2dShape*(this: GeomFillAppSweep; degree: var int; nbPoles: var int;
                   nbKnots: var int) {.noSideEffect, importcpp: "Curves2dShape",
                                    header: "GeomFill_AppSweep.hxx".}
proc curve2d*(this: GeomFillAppSweep; index: int; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Curve2d", header: "GeomFill_AppSweep.hxx".}
proc curves2dDegree*(this: GeomFillAppSweep): int {.noSideEffect,
    importcpp: "Curves2dDegree", header: "GeomFill_AppSweep.hxx".}
proc curve2dPoles*(this: GeomFillAppSweep; index: int): TColgpArray1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "GeomFill_AppSweep.hxx".}
proc curves2dKnots*(this: GeomFillAppSweep): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "GeomFill_AppSweep.hxx".}
proc curves2dMults*(this: GeomFillAppSweep): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "Curves2dMults", header: "GeomFill_AppSweep.hxx".}
proc tolReached*(this: GeomFillAppSweep; tol3d: var float; tol2d: var float) {.
    noSideEffect, importcpp: "TolReached", header: "GeomFill_AppSweep.hxx".}
proc tolCurveOnSurf*(this: GeomFillAppSweep; index: int): float {.noSideEffect,
    importcpp: "TolCurveOnSurf", header: "GeomFill_AppSweep.hxx".}
## !!!Ignored construct:  # TheSectionGenerator GeomFill_SweepSectionGenerator [NewLine] # TheSectionGenerator_hxx < GeomFill_SweepSectionGenerator . hxx > [NewLine] # Handle_TheLine opencascade :: handle < GeomFill_Line > [end of template] [NewLine] # TheLine GeomFill_Line [NewLine] # TheLine_hxx < GeomFill_Line . hxx > [NewLine] # AppBlend_AppSurf GeomFill_AppSweep [NewLine] # AppBlend_AppSurf_hxx < GeomFill_AppSweep . hxx > [NewLine] # < AppBlend_AppSurf . lxx > [NewLine] # TheSectionGenerator [NewLine] # TheSectionGenerator_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # AppBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx [NewLine] #  _GeomFill_AppSweep_HeaderFile
## Error: did not expect <!!!

