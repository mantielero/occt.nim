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

## !!!Ignored construct:  # _GeomFill_AppSurf_HeaderFile [NewLine] # _GeomFill_AppSurf_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColgp_HArray2OfPnt . hxx > [NewLine] # < TColStd_HArray2OfReal . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < TColStd_HArray1OfInteger . hxx > [NewLine] # < TColgp_SequenceOfArray1OfPnt2d . hxx > [NewLine] # < Approx_ParametrizationType . hxx > [NewLine] # < GeomAbs_Shape . hxx > [NewLine] # < AppBlend_Approx . hxx > [NewLine] # < TColgp_Array2OfPnt . hxx > [NewLine] # < TColStd_Array2OfReal . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < TColStd_Array1OfInteger . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of GeomFill_SectionGenerator"
discard "forward decl of GeomFill_Line"
type
  GeomFillAppSurf* {.importcpp: "GeomFill_AppSurf", header: "GeomFill_AppSurf.hxx",
                    bycopy.} = object of AppBlendApprox


proc constructGeomFillAppSurf*(): GeomFillAppSurf {.constructor,
    importcpp: "GeomFill_AppSurf(@)", header: "GeomFill_AppSurf.hxx".}
proc constructGeomFillAppSurf*(degmin: int; degmax: int; tol3d: float; tol2d: float;
                              nbIt: int; knownParameters: bool = false): GeomFillAppSurf {.
    constructor, importcpp: "GeomFill_AppSurf(@)", header: "GeomFill_AppSurf.hxx".}
proc init*(this: var GeomFillAppSurf; degmin: int; degmax: int; tol3d: float;
          tol2d: float; nbIt: int; knownParameters: bool = false) {.importcpp: "Init",
    header: "GeomFill_AppSurf.hxx".}
proc setParType*(this: var GeomFillAppSurf; parType: ApproxParametrizationType) {.
    importcpp: "SetParType", header: "GeomFill_AppSurf.hxx".}
proc setContinuity*(this: var GeomFillAppSurf; c: GeomAbsShape) {.
    importcpp: "SetContinuity", header: "GeomFill_AppSurf.hxx".}
proc setCriteriumWeight*(this: var GeomFillAppSurf; w1: float; w2: float; w3: float) {.
    importcpp: "SetCriteriumWeight", header: "GeomFill_AppSurf.hxx".}
proc parType*(this: GeomFillAppSurf): ApproxParametrizationType {.noSideEffect,
    importcpp: "ParType", header: "GeomFill_AppSurf.hxx".}
proc continuity*(this: GeomFillAppSurf): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "GeomFill_AppSurf.hxx".}
proc criteriumWeight*(this: GeomFillAppSurf; w1: var float; w2: var float; w3: var float) {.
    noSideEffect, importcpp: "CriteriumWeight", header: "GeomFill_AppSurf.hxx".}
## !!!Ignored construct:  void Perform ( const Handle ( GeomFill_Line ) & Lin , GeomFill_SectionGenerator & SecGen , const Standard_Boolean SpApprox = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void PerformSmoothing ( const Handle ( GeomFill_Line ) & Lin , GeomFill_SectionGenerator & SecGen ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void Perform ( const Handle ( GeomFill_Line ) & Lin , GeomFill_SectionGenerator & SecGen , const Standard_Integer NbMaxP ) ;
## Error: token expected: ) but got: &!!!

proc isDone*(this: GeomFillAppSurf): bool {.noSideEffect, importcpp: "IsDone",
                                        header: "GeomFill_AppSurf.hxx".}
proc surfShape*(this: GeomFillAppSurf; uDegree: var int; vDegree: var int;
               nbUPoles: var int; nbVPoles: var int; nbUKnots: var int; nbVKnots: var int) {.
    noSideEffect, importcpp: "SurfShape", header: "GeomFill_AppSurf.hxx".}
proc surface*(this: GeomFillAppSurf; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "GeomFill_AppSurf.hxx".}
proc uDegree*(this: GeomFillAppSurf): int {.noSideEffect, importcpp: "UDegree",
                                        header: "GeomFill_AppSurf.hxx".}
proc vDegree*(this: GeomFillAppSurf): int {.noSideEffect, importcpp: "VDegree",
                                        header: "GeomFill_AppSurf.hxx".}
proc surfPoles*(this: GeomFillAppSurf): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "GeomFill_AppSurf.hxx".}
proc surfWeights*(this: GeomFillAppSurf): TColStdArray2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "GeomFill_AppSurf.hxx".}
proc surfUKnots*(this: GeomFillAppSurf): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "GeomFill_AppSurf.hxx".}
proc surfVKnots*(this: GeomFillAppSurf): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "GeomFill_AppSurf.hxx".}
proc surfUMults*(this: GeomFillAppSurf): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "GeomFill_AppSurf.hxx".}
proc surfVMults*(this: GeomFillAppSurf): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "GeomFill_AppSurf.hxx".}
proc nbCurves2d*(this: GeomFillAppSurf): int {.noSideEffect, importcpp: "NbCurves2d",
    header: "GeomFill_AppSurf.hxx".}
proc curves2dShape*(this: GeomFillAppSurf; degree: var int; nbPoles: var int;
                   nbKnots: var int) {.noSideEffect, importcpp: "Curves2dShape",
                                    header: "GeomFill_AppSurf.hxx".}
proc curve2d*(this: GeomFillAppSurf; index: int; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Curve2d", header: "GeomFill_AppSurf.hxx".}
proc curves2dDegree*(this: GeomFillAppSurf): int {.noSideEffect,
    importcpp: "Curves2dDegree", header: "GeomFill_AppSurf.hxx".}
proc curve2dPoles*(this: GeomFillAppSurf; index: int): TColgpArray1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "GeomFill_AppSurf.hxx".}
proc curves2dKnots*(this: GeomFillAppSurf): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "GeomFill_AppSurf.hxx".}
proc curves2dMults*(this: GeomFillAppSurf): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "Curves2dMults", header: "GeomFill_AppSurf.hxx".}
proc tolReached*(this: GeomFillAppSurf; tol3d: var float; tol2d: var float) {.
    noSideEffect, importcpp: "TolReached", header: "GeomFill_AppSurf.hxx".}
proc tolCurveOnSurf*(this: GeomFillAppSurf; index: int): float {.noSideEffect,
    importcpp: "TolCurveOnSurf", header: "GeomFill_AppSurf.hxx".}
## !!!Ignored construct:  protected : private : void InternalPerform ( const Handle ( GeomFill_Line ) & Lin , GeomFill_SectionGenerator & SecGen , const Standard_Boolean SpApprox , const Standard_Boolean UseVariational ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  tabPoles ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  tabWeights ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  tabUKnots ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  tabVKnots ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  tabUMults ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  tabVMults ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  # TheSectionGenerator GeomFill_SectionGenerator [NewLine] # TheSectionGenerator_hxx < GeomFill_SectionGenerator . hxx > [NewLine] # Handle_TheLine Handle ( GeomFill_Line ) [NewLine] # TheLine GeomFill_Line [NewLine] # TheLine_hxx < GeomFill_Line . hxx > [NewLine] # AppBlend_AppSurf GeomFill_AppSurf [NewLine] # AppBlend_AppSurf_hxx < GeomFill_AppSurf . hxx > [NewLine] # < AppBlend_AppSurf . lxx > [NewLine] # TheSectionGenerator [NewLine] # TheSectionGenerator_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # AppBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx [NewLine] #  _GeomFill_AppSurf_HeaderFile
## Error: did not expect <!!!














































