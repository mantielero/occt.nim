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

## !!!Ignored construct:  # _BRepBlend_AppSurf_HeaderFile [NewLine] # _BRepBlend_AppSurf_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_DefineAlloc.hxx [NewLine] # ../Standard/Standard_Handle.hxx [NewLine] # ../Standard/Standard_Boolean.hxx [NewLine] # ../Standard/Standard_Integer.hxx [NewLine] # ../Standard/Standard_Real.hxx [NewLine] # ../TColgp/TColgp_HArray2OfPnt.hxx [NewLine] # ../TColStd/TColStd_HArray2OfReal.hxx [NewLine] # ../TColStd/TColStd_HArray1OfReal.hxx [NewLine] # ../TColStd/TColStd_HArray1OfInteger.hxx [NewLine] # ../TColgp/TColgp_SequenceOfArray1OfPnt2d.hxx [NewLine] # ../Approx/Approx_ParametrizationType.hxx [NewLine] # ../GeomAbs/GeomAbs_Shape.hxx [NewLine] # ../AppBlend/AppBlend_Approx.hxx [NewLine] # ../TColgp/TColgp_Array2OfPnt.hxx [NewLine] # ../TColStd/TColStd_Array2OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfReal.hxx [NewLine] # ../TColStd/TColStd_Array1OfInteger.hxx [NewLine] # ../TColgp/TColgp_Array1OfPnt2d.hxx [NewLine] class StdFail_NotDone ;
## Error: did not expect <!!!

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Blend_AppFunction"
discard "forward decl of BRepBlend_Line"
type
  BRepBlend_AppSurf* {.importcpp: "BRepBlend_AppSurf",
                      header: "BRepBlend_AppSurf.hxx", bycopy.} = object of AppBlend_Approx


proc constructBRepBlend_AppSurf*(): BRepBlend_AppSurf {.constructor,
    importcpp: "BRepBlend_AppSurf(@)", header: "BRepBlend_AppSurf.hxx".}
proc constructBRepBlend_AppSurf*(Degmin: Standard_Integer;
                                Degmax: Standard_Integer; Tol3d: Standard_Real;
                                Tol2d: Standard_Real; NbIt: Standard_Integer;
    KnownParameters: Standard_Boolean = Standard_False): BRepBlend_AppSurf {.
    constructor, importcpp: "BRepBlend_AppSurf(@)", header: "BRepBlend_AppSurf.hxx".}
proc Init*(this: var BRepBlend_AppSurf; Degmin: Standard_Integer;
          Degmax: Standard_Integer; Tol3d: Standard_Real; Tol2d: Standard_Real;
          NbIt: Standard_Integer;
          KnownParameters: Standard_Boolean = Standard_False) {.importcpp: "Init",
    header: "BRepBlend_AppSurf.hxx".}
proc SetParType*(this: var BRepBlend_AppSurf; ParType: Approx_ParametrizationType) {.
    importcpp: "SetParType", header: "BRepBlend_AppSurf.hxx".}
proc SetContinuity*(this: var BRepBlend_AppSurf; C: GeomAbs_Shape) {.
    importcpp: "SetContinuity", header: "BRepBlend_AppSurf.hxx".}
proc SetCriteriumWeight*(this: var BRepBlend_AppSurf; W1: Standard_Real;
                        W2: Standard_Real; W3: Standard_Real) {.
    importcpp: "SetCriteriumWeight", header: "BRepBlend_AppSurf.hxx".}
proc ParType*(this: BRepBlend_AppSurf): Approx_ParametrizationType {.noSideEffect,
    importcpp: "ParType", header: "BRepBlend_AppSurf.hxx".}
proc Continuity*(this: BRepBlend_AppSurf): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "BRepBlend_AppSurf.hxx".}
proc CriteriumWeight*(this: BRepBlend_AppSurf; W1: var Standard_Real;
                     W2: var Standard_Real; W3: var Standard_Real) {.noSideEffect,
    importcpp: "CriteriumWeight", header: "BRepBlend_AppSurf.hxx".}
proc Perform*(this: var BRepBlend_AppSurf; Lin: handle[BRepBlend_Line];
             SecGen: var Blend_AppFunction;
             SpApprox: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "BRepBlend_AppSurf.hxx".}
proc PerformSmoothing*(this: var BRepBlend_AppSurf; Lin: handle[BRepBlend_Line];
                      SecGen: var Blend_AppFunction) {.
    importcpp: "PerformSmoothing", header: "BRepBlend_AppSurf.hxx".}
proc Perform*(this: var BRepBlend_AppSurf; Lin: handle[BRepBlend_Line];
             SecGen: var Blend_AppFunction; NbMaxP: Standard_Integer) {.
    importcpp: "Perform", header: "BRepBlend_AppSurf.hxx".}
proc IsDone*(this: BRepBlend_AppSurf): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepBlend_AppSurf.hxx".}
proc SurfShape*(this: BRepBlend_AppSurf; UDegree: var Standard_Integer;
               VDegree: var Standard_Integer; NbUPoles: var Standard_Integer;
               NbVPoles: var Standard_Integer; NbUKnots: var Standard_Integer;
               NbVKnots: var Standard_Integer) {.noSideEffect,
    importcpp: "SurfShape", header: "BRepBlend_AppSurf.hxx".}
proc Surface*(this: BRepBlend_AppSurf; TPoles: var TColgp_Array2OfPnt;
             TWeights: var TColStd_Array2OfReal; TUKnots: var TColStd_Array1OfReal;
             TVKnots: var TColStd_Array1OfReal;
             TUMults: var TColStd_Array1OfInteger;
             TVMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Surface", header: "BRepBlend_AppSurf.hxx".}
proc UDegree*(this: BRepBlend_AppSurf): Standard_Integer {.noSideEffect,
    importcpp: "UDegree", header: "BRepBlend_AppSurf.hxx".}
proc VDegree*(this: BRepBlend_AppSurf): Standard_Integer {.noSideEffect,
    importcpp: "VDegree", header: "BRepBlend_AppSurf.hxx".}
proc SurfPoles*(this: BRepBlend_AppSurf): TColgp_Array2OfPnt {.noSideEffect,
    importcpp: "SurfPoles", header: "BRepBlend_AppSurf.hxx".}
proc SurfWeights*(this: BRepBlend_AppSurf): TColStd_Array2OfReal {.noSideEffect,
    importcpp: "SurfWeights", header: "BRepBlend_AppSurf.hxx".}
proc SurfUKnots*(this: BRepBlend_AppSurf): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfUKnots", header: "BRepBlend_AppSurf.hxx".}
proc SurfVKnots*(this: BRepBlend_AppSurf): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "SurfVKnots", header: "BRepBlend_AppSurf.hxx".}
proc SurfUMults*(this: BRepBlend_AppSurf): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "SurfUMults", header: "BRepBlend_AppSurf.hxx".}
proc SurfVMults*(this: BRepBlend_AppSurf): TColStd_Array1OfInteger {.noSideEffect,
    importcpp: "SurfVMults", header: "BRepBlend_AppSurf.hxx".}
proc NbCurves2d*(this: BRepBlend_AppSurf): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves2d", header: "BRepBlend_AppSurf.hxx".}
proc Curves2dShape*(this: BRepBlend_AppSurf; Degree: var Standard_Integer;
                   NbPoles: var Standard_Integer; NbKnots: var Standard_Integer) {.
    noSideEffect, importcpp: "Curves2dShape", header: "BRepBlend_AppSurf.hxx".}
proc Curve2d*(this: BRepBlend_AppSurf; Index: Standard_Integer;
             TPoles: var TColgp_Array1OfPnt2d; TKnots: var TColStd_Array1OfReal;
             TMults: var TColStd_Array1OfInteger) {.noSideEffect,
    importcpp: "Curve2d", header: "BRepBlend_AppSurf.hxx".}
proc Curves2dDegree*(this: BRepBlend_AppSurf): Standard_Integer {.noSideEffect,
    importcpp: "Curves2dDegree", header: "BRepBlend_AppSurf.hxx".}
proc Curve2dPoles*(this: BRepBlend_AppSurf; Index: Standard_Integer): TColgp_Array1OfPnt2d {.
    noSideEffect, importcpp: "Curve2dPoles", header: "BRepBlend_AppSurf.hxx".}
proc Curves2dKnots*(this: BRepBlend_AppSurf): TColStd_Array1OfReal {.noSideEffect,
    importcpp: "Curves2dKnots", header: "BRepBlend_AppSurf.hxx".}
proc Curves2dMults*(this: BRepBlend_AppSurf): TColStd_Array1OfInteger {.
    noSideEffect, importcpp: "Curves2dMults", header: "BRepBlend_AppSurf.hxx".}
proc TolReached*(this: BRepBlend_AppSurf; Tol3d: var Standard_Real;
                Tol2d: var Standard_Real) {.noSideEffect, importcpp: "TolReached",
    header: "BRepBlend_AppSurf.hxx".}
proc TolCurveOnSurf*(this: BRepBlend_AppSurf; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "TolCurveOnSurf", header: "BRepBlend_AppSurf.hxx".}
## !!!Ignored construct:  # TheSectionGenerator Blend_AppFunction [NewLine] # TheSectionGenerator_hxx < Blend_AppFunction . hxx > [NewLine] # Handle_TheLine opencascade :: handle < BRepBlend_Line > [end of template] [NewLine] # TheLine BRepBlend_Line [NewLine] # TheLine_hxx < BRepBlend_Line . hxx > [NewLine] # AppBlend_AppSurf BRepBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx < BRepBlend_AppSurf . hxx > [NewLine] # < AppBlend_AppSurf . lxx > [NewLine] # TheSectionGenerator [NewLine] # TheSectionGenerator_hxx [NewLine] # Handle_TheLine [NewLine] # TheLine [NewLine] # TheLine_hxx [NewLine] # AppBlend_AppSurf [NewLine] # AppBlend_AppSurf_hxx [NewLine] #  _BRepBlend_AppSurf_HeaderFile [NewLine]
## Error: did not expect <!!!
