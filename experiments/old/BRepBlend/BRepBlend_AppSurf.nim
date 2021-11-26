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

## !!!Ignored construct:  # _BRepBlend_AppSurf_HeaderFile [NewLine] # _BRepBlend_AppSurf_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_DefineAlloc . hxx > [NewLine] # < Standard_Handle . hxx > [NewLine] # < Standard_Boolean . hxx > [NewLine] # < Standard_Integer . hxx > [NewLine] # < Standard_Real . hxx > [NewLine] # < TColgp_HArray2OfPnt . hxx > [NewLine] # < TColStd_HArray2OfReal . hxx > [NewLine] # < TColStd_HArray1OfReal . hxx > [NewLine] # < TColStd_HArray1OfInteger . hxx > [NewLine] # < TColgp_SequenceOfArray1OfPnt2d . hxx > [NewLine] # < Approx_ParametrizationType . hxx > [NewLine] # < GeomAbs_Shape . hxx > [NewLine] # < AppBlend_Approx . hxx > [NewLine] # < TColgp_Array2OfPnt . hxx > [NewLine] # < TColStd_Array2OfReal . hxx > [NewLine] # < TColStd_Array1OfReal . hxx > [NewLine] # < TColStd_Array1OfInteger . hxx > [NewLine] # < TColgp_Array1OfPnt2d . hxx > [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_AppFunction"
discard "forward decl of BRepBlend_Line"
type
  BRepBlendAppSurf* {.importcpp: "BRepBlend_AppSurf",
                     header: "BRepBlend_AppSurf.hxx", bycopy.} = object of AppBlendApprox


proc constructBRepBlendAppSurf*(): BRepBlendAppSurf {.constructor,
    importcpp: "BRepBlend_AppSurf(@)", header: "BRepBlend_AppSurf.hxx".}
proc constructBRepBlendAppSurf*(degmin: int; degmax: int; tol3d: float; tol2d: float;
                               nbIt: int; knownParameters: bool = false): BRepBlendAppSurf {.
    constructor, importcpp: "BRepBlend_AppSurf(@)", header: "BRepBlend_AppSurf.hxx".}
proc init*(this: var BRepBlendAppSurf; degmin: int; degmax: int; tol3d: float;
          tol2d: float; nbIt: int; knownParameters: bool = false) {.importcpp: "Init",
    header: "BRepBlend_AppSurf.hxx".}
proc setParType*(this: var BRepBlendAppSurf; parType: ApproxParametrizationType) {.
    importcpp: "SetParType", header: "BRepBlend_AppSurf.hxx".}
proc setContinuity*(this: var BRepBlendAppSurf; c: GeomAbsShape) {.
    importcpp: "SetContinuity", header: "BRepBlend_AppSurf.hxx".}
proc setCriteriumWeight*(this: var BRepBlendAppSurf; w1: float; w2: float; w3: float) {.
    importcpp: "SetCriteriumWeight", header: "BRepBlend_AppSurf.hxx".}
proc parType*(this: BRepBlendAppSurf): ApproxParametrizationType {.noSideEffect,
    importcpp: "ParType", header: "BRepBlend_AppSurf.hxx".}
proc continuity*(this: BRepBlendAppSurf): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "BRepBlend_AppSurf.hxx".}
proc criteriumWeight*(this: BRepBlendAppSurf; w1: var float; w2: var float; w3: var float) {.
    noSideEffect, importcpp: "CriteriumWeight", header: "BRepBlend_AppSurf.hxx".}
## !!!Ignored construct:  void Perform ( const Handle ( BRepBlend_Line ) & Lin , Blend_AppFunction & SecGen , const Standard_Boolean SpApprox = Standard_False ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void PerformSmoothing ( const Handle ( BRepBlend_Line ) & Lin , Blend_AppFunction & SecGen ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  void Perform ( const Handle ( BRepBlend_Line ) & Lin , Blend_AppFunction & SecGen , const Standard_Integer NbMaxP ) ;
## Error: token expected: ) but got: &!!!

proc isDone*(this: BRepBlendAppSurf): bool {.noSideEffect, importcpp: "IsDone",
    header: "BRepBlend_AppSurf.hxx".}
proc surfShape*(this: BRepBlendAppSurf; uDegree: var int; vDegree: var int;
               nbUPoles: var int; nbVPoles: var int; nbUKnots: var int; nbVKnots: var int) {.
    noSideEffect, importcpp: "SurfShape", header: "BRepBlend_AppSurf.hxx".}
proc surface*(this: BRepBlendAppSurf; tPoles: var TColgpArray2OfPnt;
             tWeights: var TColStdArray2OfReal; tUKnots: var TColStdArray1OfReal;
             tVKnots: var TColStdArray1OfReal; tUMults: var TColStdArray1OfInteger;
             tVMults: var TColStdArray1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "BRepBlend_AppSurf.hxx".}
proc uDegree*(this: BRepBlendAppSurf): int {.noSideEffect, importcpp: "UDegree",
    header: "BRepBlend_AppSurf.hxx".}
proc vDegree*(this: BRepBlendAppSurf): int {.noSideEffect, importcpp: "VDegree",
    header: "BRepBlend_AppSurf.hxx".}
proc surfPoles*(this: BRepBlendAppSurf): TColgpArray2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "BRepBlend_AppSurf.hxx".}
proc surfWeights*(this: BRepBlendAppSurf): TColStdArray2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "BRepBlend_AppSurf.hxx".}
proc surfUKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "BRepBlend_AppSurf.hxx".}
proc surfVKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "BRepBlend_AppSurf.hxx".}
proc surfUMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "BRepBlend_AppSurf.hxx".}
proc surfVMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "BRepBlend_AppSurf.hxx".}
proc nbCurves2d*(this: BRepBlendAppSurf): int {.noSideEffect,
    importcpp: "NbCurves2d", header: "BRepBlend_AppSurf.hxx".}
proc curves2dShape*(this: BRepBlendAppSurf; degree: var int; nbPoles: var int;
                   nbKnots: var int) {.noSideEffect, importcpp: "Curves2dShape",
                                    header: "BRepBlend_AppSurf.hxx".}
proc curve2d*(this: BRepBlendAppSurf; index: int; tPoles: var TColgpArray1OfPnt2d;
             tKnots: var TColStdArray1OfReal; tMults: var TColStdArray1OfInteger) {.
    noSideEffect, importcpp: "Curve2d", header: "BRepBlend_AppSurf.hxx".}
proc curves2dDegree*(this: BRepBlendAppSurf): int {.noSideEffect,
    importcpp: "Curves2dDegree", header: "BRepBlend_AppSurf.hxx".}
proc curve2dPoles*(this: BRepBlendAppSurf; index: int): TColgpArray1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "BRepBlend_AppSurf.hxx".}
proc curves2dKnots*(this: BRepBlendAppSurf): TColStdArray1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "BRepBlend_AppSurf.hxx".}
proc curves2dMults*(this: BRepBlendAppSurf): TColStdArray1OfInteger {.noSideEffect,
    importcpp: "Curves2dMults", header: "BRepBlend_AppSurf.hxx".}
proc tolReached*(this: BRepBlendAppSurf; tol3d: var float; tol2d: var float) {.
    noSideEffect, importcpp: "TolReached", header: "BRepBlend_AppSurf.hxx".}
proc tolCurveOnSurf*(this: BRepBlendAppSurf; index: int): float {.noSideEffect,
    importcpp: "TolCurveOnSurf", header: "BRepBlend_AppSurf.hxx".}
## !!!Ignored construct:  protected : private : void InternalPerform ( const Handle ( BRepBlend_Line ) & Lin , Blend_AppFunction & SecGen , const Standard_Boolean SpApprox , const Standard_Boolean UseVariational ) ;
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

## !!!Ignored construct:  # TheSectionGenerator Blend_AppFunction [NewLine] # TheSectionGenerator_hxx < Blend_AppFunction . hxx > [NewLine] # Handle_TheLine Handle ( BRepBlend_Line ) [NewLine] # TheLine BRepBlend_Line [NewLine] # TheLine_hxx < BRepBlend_Line . hxx > [NewLine] # AppBlend_AppSurf BRepBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx < BRepBlend_AppSurf . hxx > [NewLine] # < AppBlend_AppSurf . lxx > [NewLine] # TheSectionGenerator [NewLine] # TheSectionGenerator_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # AppBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx [NewLine] #  _BRepBlend_AppSurf_HeaderFile
## Error: did not expect <!!!














































