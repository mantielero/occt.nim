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


proc to3d*(position: GpAx2; curve2d: Handle[Geom2dCurve]): Handle[GeomCurve] {.
    importcpp: "GeomLib::To3d(@)", header: "GeomLib.hxx".}
proc gTransform*(curve: Handle[Geom2dCurve]; gTrsf: GpGTrsf2d): Handle[Geom2dCurve] {.
    importcpp: "GeomLib::GTransform(@)", header: "GeomLib.hxx".}
proc sameRange*(tolerance: StandardReal; curve2dPtr: Handle[Geom2dCurve];
               first: StandardReal; last: StandardReal;
               requestedFirst: StandardReal; requestedLast: StandardReal;
               newCurve2dPtr: var Handle[Geom2dCurve]) {.
    importcpp: "GeomLib::SameRange(@)", header: "GeomLib.hxx".}
proc buildCurve3d*(tolerance: StandardReal; curvePtr: var Adaptor3dCurveOnSurface;
                  firstParameter: StandardReal; lastParameter: StandardReal;
                  newCurvePtr: var Handle[GeomCurve];
                  maxDeviation: var StandardReal;
                  averageDeviation: var StandardReal;
                  continuity: GeomAbsShape = geomAbsC1;
                  maxDegree: StandardInteger = 14; maxSegment: StandardInteger = 30) {.
    importcpp: "GeomLib::BuildCurve3d(@)", header: "GeomLib.hxx".}
proc adjustExtremity*(curve: var Handle[GeomBoundedCurve]; p1: GpPnt; p2: GpPnt;
                     t1: GpVec; t2: GpVec) {.
    importcpp: "GeomLib::AdjustExtremity(@)", header: "GeomLib.hxx".}
proc extendCurveToPoint*(curve: var Handle[GeomBoundedCurve]; point: GpPnt;
                        cont: StandardInteger; after: StandardBoolean) {.
    importcpp: "GeomLib::ExtendCurveToPoint(@)", header: "GeomLib.hxx".}
proc extendSurfByLength*(surf: var Handle[GeomBoundedSurface]; length: StandardReal;
                        cont: StandardInteger; inU: StandardBoolean;
                        after: StandardBoolean) {.
    importcpp: "GeomLib::ExtendSurfByLength(@)", header: "GeomLib.hxx".}
proc axeOfInertia*(points: TColgpArray1OfPnt; axe: var GpAx2;
                  isSingular: var StandardBoolean; tol: StandardReal = 1.0e-7) {.
    importcpp: "GeomLib::AxeOfInertia(@)", header: "GeomLib.hxx".}
proc inertia*(points: TColgpArray1OfPnt; bary: var GpPnt; xDir: var GpDir;
             yDir: var GpDir; xgap: var StandardReal; yGap: var StandardReal;
             zGap: var StandardReal) {.importcpp: "GeomLib::Inertia(@)",
                                    header: "GeomLib.hxx".}
proc removePointsFromArray*(numPoints: StandardInteger;
                           inParameters: TColStdArray1OfReal;
                           outParameters: var Handle[TColStdHArray1OfReal]) {.
    importcpp: "GeomLib::RemovePointsFromArray(@)", header: "GeomLib.hxx".}
proc densifyArray1OfReal*(minNumPoints: StandardInteger;
                         inParameters: TColStdArray1OfReal;
                         outParameters: var Handle[TColStdHArray1OfReal]) {.
    importcpp: "GeomLib::DensifyArray1OfReal(@)", header: "GeomLib.hxx".}
proc fuseIntervals*(interval1: TColStdArray1OfReal; interval2: TColStdArray1OfReal;
                   fusion: var TColStdSequenceOfReal;
                   confusion: StandardReal = 1.0e-9) {.
    importcpp: "GeomLib::FuseIntervals(@)", header: "GeomLib.hxx".}
proc evalMaxParametricDistance*(curve: Adaptor3dCurve;
                               aReferenceCurve: Adaptor3dCurve;
                               tolerance: StandardReal;
                               parameters: TColStdArray1OfReal;
                               maxDistance: var StandardReal) {.
    importcpp: "GeomLib::EvalMaxParametricDistance(@)", header: "GeomLib.hxx".}
proc evalMaxDistanceAlongParameter*(curve: Adaptor3dCurve;
                                   aReferenceCurve: Adaptor3dCurve;
                                   tolerance: StandardReal;
                                   parameters: TColStdArray1OfReal;
                                   maxDistance: var StandardReal) {.
    importcpp: "GeomLib::EvalMaxDistanceAlongParameter(@)", header: "GeomLib.hxx".}
proc cancelDenominatorDerivative*(bSurf: var Handle[GeomBSplineSurface];
                                 uDirection: StandardBoolean;
                                 vDirection: StandardBoolean) {.
    importcpp: "GeomLib::CancelDenominatorDerivative(@)", header: "GeomLib.hxx".}
proc normEstim*(s: Handle[GeomSurface]; uv: GpPnt2d; tol: StandardReal; n: var GpDir): StandardInteger {.
    importcpp: "GeomLib::NormEstim(@)", header: "GeomLib.hxx".}
proc isClosed*(s: Handle[GeomSurface]; tol: StandardReal;
              isUClosed: var StandardBoolean; isVClosed: var StandardBoolean) {.
    importcpp: "GeomLib::IsClosed(@)", header: "GeomLib.hxx".}
proc isBSplUClosed*(s: Handle[GeomBSplineSurface]; u1: StandardReal;
                   u2: StandardReal; tol: StandardReal): StandardBoolean {.
    importcpp: "GeomLib::IsBSplUClosed(@)", header: "GeomLib.hxx".}
proc isBSplVClosed*(s: Handle[GeomBSplineSurface]; v1: StandardReal;
                   v2: StandardReal; tol: StandardReal): StandardBoolean {.
    importcpp: "GeomLib::IsBSplVClosed(@)", header: "GeomLib.hxx".}
proc isBzUClosed*(s: Handle[GeomBezierSurface]; u1: StandardReal; u2: StandardReal;
                 tol: StandardReal): StandardBoolean {.
    importcpp: "GeomLib::IsBzUClosed(@)", header: "GeomLib.hxx".}
proc isBzVClosed*(s: Handle[GeomBezierSurface]; v1: StandardReal; v2: StandardReal;
                 tol: StandardReal): StandardBoolean {.
    importcpp: "GeomLib::IsBzVClosed(@)", header: "GeomLib.hxx".}
proc isIsoLine*(theC2D: Handle[Adaptor2dHCurve2d]; theIsU: var StandardBoolean;
               theParam: var StandardReal; theIsForward: var StandardBoolean): StandardBoolean {.
    importcpp: "GeomLib::isIsoLine(@)", header: "GeomLib.hxx".}
proc buildC3dOnIsoLine*(theC2D: Handle[Adaptor2dHCurve2d];
                       theSurf: Handle[Adaptor3dHSurface]; theFirst: StandardReal;
                       theLast: StandardReal; theTolerance: StandardReal;
                       theIsU: StandardBoolean; theParam: StandardReal;
                       theIsForward: StandardBoolean): Handle[GeomCurve] {.
    importcpp: "GeomLib::buildC3dOnIsoLine(@)", header: "GeomLib.hxx".}

