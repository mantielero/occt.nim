##  Created on: 1993-07-07
##  Created by: Jean Claude VAUTHIER
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TColgp/TColgp_Array1OfPnt,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_HArray1OfReal,
  ../TColStd/TColStd_SequenceOfReal

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Ax2"
discard "forward decl of Geom2d_Curve"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Adaptor3d_CurveOnSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Geom_BoundedCurve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BoundedSurface"
discard "forward decl of gp_Dir"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GeomLib_MakeCurvefromApprox"
discard "forward decl of GeomLib_Interpolate"
discard "forward decl of GeomLib_DenominatorMultiplier"
discard "forward decl of GeomLib_CheckBSplineCurve"
discard "forward decl of GeomLib_Check2dBSplineCurve"
discard "forward decl of GeomLib_IsPlanarSurface"
discard "forward decl of GeomLib_Tool"
discard "forward decl of GeomLib_PolyFunc"
discard "forward decl of GeomLib_LogSample"
type
  GeomLib* {.importcpp: "GeomLib", header: "GeomLib.hxx", bycopy.} = object ## ! Computes     the  curve  3d    from  package  Geom
                                                                    ## !
                                                                    ## corresponding to curve 2d  from package Geom2d, on
                                                                    ## ! the plan defined with the local coordinate system
                                                                    ## ! Position.


proc To3d*(Position: gp_Ax2; Curve2d: handle[Geom2d_Curve]): handle[Geom_Curve] {.
    importcpp: "GeomLib::To3d(@)", header: "GeomLib.hxx".}
proc GTransform*(Curve: handle[Geom2d_Curve]; GTrsf: gp_GTrsf2d): handle[Geom2d_Curve] {.
    importcpp: "GeomLib::GTransform(@)", header: "GeomLib.hxx".}
proc SameRange*(Tolerance: Standard_Real; Curve2dPtr: handle[Geom2d_Curve];
               First: Standard_Real; Last: Standard_Real;
               RequestedFirst: Standard_Real; RequestedLast: Standard_Real;
               NewCurve2dPtr: var handle[Geom2d_Curve]) {.
    importcpp: "GeomLib::SameRange(@)", header: "GeomLib.hxx".}
proc BuildCurve3d*(Tolerance: Standard_Real;
                  CurvePtr: var Adaptor3d_CurveOnSurface;
                  FirstParameter: Standard_Real; LastParameter: Standard_Real;
                  NewCurvePtr: var handle[Geom_Curve];
                  MaxDeviation: var Standard_Real;
                  AverageDeviation: var Standard_Real;
                  Continuity: GeomAbs_Shape = GeomAbs_C1;
                  MaxDegree: Standard_Integer = 14;
                  MaxSegment: Standard_Integer = 30) {.
    importcpp: "GeomLib::BuildCurve3d(@)", header: "GeomLib.hxx".}
proc AdjustExtremity*(Curve: var handle[Geom_BoundedCurve]; P1: gp_Pnt; P2: gp_Pnt;
                     T1: gp_Vec; T2: gp_Vec) {.
    importcpp: "GeomLib::AdjustExtremity(@)", header: "GeomLib.hxx".}
proc ExtendCurveToPoint*(Curve: var handle[Geom_BoundedCurve]; Point: gp_Pnt;
                        Cont: Standard_Integer; After: Standard_Boolean) {.
    importcpp: "GeomLib::ExtendCurveToPoint(@)", header: "GeomLib.hxx".}
proc ExtendSurfByLength*(Surf: var handle[Geom_BoundedSurface];
                        Length: Standard_Real; Cont: Standard_Integer;
                        InU: Standard_Boolean; After: Standard_Boolean) {.
    importcpp: "GeomLib::ExtendSurfByLength(@)", header: "GeomLib.hxx".}
proc AxeOfInertia*(Points: TColgp_Array1OfPnt; Axe: var gp_Ax2;
                  IsSingular: var Standard_Boolean; Tol: Standard_Real = 1.0e-7) {.
    importcpp: "GeomLib::AxeOfInertia(@)", header: "GeomLib.hxx".}
proc Inertia*(Points: TColgp_Array1OfPnt; Bary: var gp_Pnt; XDir: var gp_Dir;
             YDir: var gp_Dir; Xgap: var Standard_Real; YGap: var Standard_Real;
             ZGap: var Standard_Real) {.importcpp: "GeomLib::Inertia(@)",
                                     header: "GeomLib.hxx".}
proc RemovePointsFromArray*(NumPoints: Standard_Integer;
                           InParameters: TColStd_Array1OfReal;
                           OutParameters: var handle[TColStd_HArray1OfReal]) {.
    importcpp: "GeomLib::RemovePointsFromArray(@)", header: "GeomLib.hxx".}
proc DensifyArray1OfReal*(MinNumPoints: Standard_Integer;
                         InParameters: TColStd_Array1OfReal;
                         OutParameters: var handle[TColStd_HArray1OfReal]) {.
    importcpp: "GeomLib::DensifyArray1OfReal(@)", header: "GeomLib.hxx".}
proc FuseIntervals*(Interval1: TColStd_Array1OfReal;
                   Interval2: TColStd_Array1OfReal;
                   Fusion: var TColStd_SequenceOfReal;
                   Confusion: Standard_Real = 1.0e-9) {.
    importcpp: "GeomLib::FuseIntervals(@)", header: "GeomLib.hxx".}
proc EvalMaxParametricDistance*(Curve: Adaptor3d_Curve;
                               AReferenceCurve: Adaptor3d_Curve;
                               Tolerance: Standard_Real;
                               Parameters: TColStd_Array1OfReal;
                               MaxDistance: var Standard_Real) {.
    importcpp: "GeomLib::EvalMaxParametricDistance(@)", header: "GeomLib.hxx".}
proc EvalMaxDistanceAlongParameter*(Curve: Adaptor3d_Curve;
                                   AReferenceCurve: Adaptor3d_Curve;
                                   Tolerance: Standard_Real;
                                   Parameters: TColStd_Array1OfReal;
                                   MaxDistance: var Standard_Real) {.
    importcpp: "GeomLib::EvalMaxDistanceAlongParameter(@)", header: "GeomLib.hxx".}
proc CancelDenominatorDerivative*(BSurf: var handle[Geom_BSplineSurface];
                                 UDirection: Standard_Boolean;
                                 VDirection: Standard_Boolean) {.
    importcpp: "GeomLib::CancelDenominatorDerivative(@)", header: "GeomLib.hxx".}
proc NormEstim*(S: handle[Geom_Surface]; UV: gp_Pnt2d; Tol: Standard_Real;
               N: var gp_Dir): Standard_Integer {.
    importcpp: "GeomLib::NormEstim(@)", header: "GeomLib.hxx".}
proc IsClosed*(S: handle[Geom_Surface]; Tol: Standard_Real;
              isUClosed: var Standard_Boolean; isVClosed: var Standard_Boolean) {.
    importcpp: "GeomLib::IsClosed(@)", header: "GeomLib.hxx".}
proc IsBSplUClosed*(S: handle[Geom_BSplineSurface]; U1: Standard_Real;
                   U2: Standard_Real; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "GeomLib::IsBSplUClosed(@)", header: "GeomLib.hxx".}
proc IsBSplVClosed*(S: handle[Geom_BSplineSurface]; V1: Standard_Real;
                   V2: Standard_Real; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "GeomLib::IsBSplVClosed(@)", header: "GeomLib.hxx".}
proc IsBzUClosed*(S: handle[Geom_BezierSurface]; U1: Standard_Real;
                 U2: Standard_Real; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "GeomLib::IsBzUClosed(@)", header: "GeomLib.hxx".}
proc IsBzVClosed*(S: handle[Geom_BezierSurface]; V1: Standard_Real;
                 V2: Standard_Real; Tol: Standard_Real): Standard_Boolean {.
    importcpp: "GeomLib::IsBzVClosed(@)", header: "GeomLib.hxx".}
proc isIsoLine*(theC2D: handle[Adaptor2d_HCurve2d]; theIsU: var Standard_Boolean;
               theParam: var Standard_Real; theIsForward: var Standard_Boolean): Standard_Boolean {.
    importcpp: "GeomLib::isIsoLine(@)", header: "GeomLib.hxx".}
proc buildC3dOnIsoLine*(theC2D: handle[Adaptor2d_HCurve2d];
                       theSurf: handle[Adaptor3d_HSurface];
                       theFirst: Standard_Real; theLast: Standard_Real;
                       theTolerance: Standard_Real; theIsU: Standard_Boolean;
                       theParam: Standard_Real; theIsForward: Standard_Boolean): handle[
    Geom_Curve] {.importcpp: "GeomLib::buildC3dOnIsoLine(@)", header: "GeomLib.hxx".}