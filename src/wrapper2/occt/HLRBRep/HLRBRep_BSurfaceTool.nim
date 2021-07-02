##  Created on: 1993-07-02
##  Created by: Laurent BUCHARD
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  HLRBRepBSurfaceTool* {.importcpp: "HLRBRep_BSurfaceTool",
                        header: "HLRBRep_BSurfaceTool.hxx", bycopy.} = object


proc firstUParameter*(s: BRepAdaptorSurface): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::FirstUParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc firstVParameter*(s: BRepAdaptorSurface): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::FirstVParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc lastUParameter*(s: BRepAdaptorSurface): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::LastUParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc lastVParameter*(s: BRepAdaptorSurface): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::LastVParameter(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbUIntervals*(s: BRepAdaptorSurface; sh: GeomAbsShape): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbUIntervals(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbVIntervals*(s: BRepAdaptorSurface; sh: GeomAbsShape): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbVIntervals(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc uIntervals*(s: BRepAdaptorSurface; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "HLRBRep_BSurfaceTool::UIntervals(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc vIntervals*(s: BRepAdaptorSurface; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "HLRBRep_BSurfaceTool::VIntervals(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc uTrim*(s: BRepAdaptorSurface; first: StandardReal; last: StandardReal;
           tol: StandardReal): Handle[Adaptor3dHSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::UTrim(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc vTrim*(s: BRepAdaptorSurface; first: StandardReal; last: StandardReal;
           tol: StandardReal): Handle[Adaptor3dHSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::VTrim(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc isUClosed*(s: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsUClosed(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc isVClosed*(s: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsVClosed(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc isUPeriodic*(s: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsUPeriodic(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc uPeriod*(s: BRepAdaptorSurface): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::UPeriod(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc isVPeriodic*(s: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsVPeriodic(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc vPeriod*(s: BRepAdaptorSurface): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::VPeriod(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc value*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal): GpPnt {.
    importcpp: "HLRBRep_BSurfaceTool::Value(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc d0*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    importcpp: "HLRBRep_BSurfaceTool::D0(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc d1*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.importcpp: "HLRBRep_BSurfaceTool::D1(@)",
                                    header: "HLRBRep_BSurfaceTool.hxx".}
proc d2*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    importcpp: "HLRBRep_BSurfaceTool::D2(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc d3*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.
    importcpp: "HLRBRep_BSurfaceTool::D3(@)", header: "HLRBRep_BSurfaceTool.hxx".}
proc dn*(s: BRepAdaptorSurface; u: StandardReal; v: StandardReal; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "HLRBRep_BSurfaceTool::DN(@)",
                                   header: "HLRBRep_BSurfaceTool.hxx".}
proc uContinuity*(s: BRepAdaptorSurface): GeomAbsShape {.
    importcpp: "HLRBRep_BSurfaceTool::UContinuity(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc vContinuity*(s: BRepAdaptorSurface): GeomAbsShape {.
    importcpp: "HLRBRep_BSurfaceTool::VContinuity(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc uDegree*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::UDegree(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbUPoles*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbUPoles(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbUKnots*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbUKnots(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc isURational*(s: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsURational(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc vDegree*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::VDegree(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbVPoles*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbVPoles(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbVKnots*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbVKnots(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc isVRational*(s: BRepAdaptorSurface): StandardBoolean {.
    importcpp: "HLRBRep_BSurfaceTool::IsVRational(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc uResolution*(s: BRepAdaptorSurface; r3d: StandardReal): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::UResolution(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc vResolution*(s: BRepAdaptorSurface; r3d: StandardReal): StandardReal {.
    importcpp: "HLRBRep_BSurfaceTool::VResolution(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc getType*(s: BRepAdaptorSurface): GeomAbsSurfaceType {.
    importcpp: "HLRBRep_BSurfaceTool::GetType(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc plane*(s: BRepAdaptorSurface): GpPln {.importcpp: "HLRBRep_BSurfaceTool::Plane(@)",
                                        header: "HLRBRep_BSurfaceTool.hxx".}
proc cylinder*(s: BRepAdaptorSurface): GpCylinder {.
    importcpp: "HLRBRep_BSurfaceTool::Cylinder(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc cone*(s: BRepAdaptorSurface): GpCone {.importcpp: "HLRBRep_BSurfaceTool::Cone(@)",
                                        header: "HLRBRep_BSurfaceTool.hxx".}
proc torus*(s: BRepAdaptorSurface): GpTorus {.
    importcpp: "HLRBRep_BSurfaceTool::Torus(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc sphere*(s: BRepAdaptorSurface): GpSphere {.
    importcpp: "HLRBRep_BSurfaceTool::Sphere(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc bezier*(s: BRepAdaptorSurface): Handle[GeomBezierSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::Bezier(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc bSpline*(s: BRepAdaptorSurface): Handle[GeomBSplineSurface] {.
    importcpp: "HLRBRep_BSurfaceTool::BSpline(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc axeOfRevolution*(s: BRepAdaptorSurface): GpAx1 {.
    importcpp: "HLRBRep_BSurfaceTool::AxeOfRevolution(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc direction*(s: BRepAdaptorSurface): GpDir {.
    importcpp: "HLRBRep_BSurfaceTool::Direction(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc basisCurve*(s: BRepAdaptorSurface): Handle[Adaptor3dHCurve] {.
    importcpp: "HLRBRep_BSurfaceTool::BasisCurve(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc axis*(s: BRepAdaptorSurface): GpAx1 {.importcpp: "HLRBRep_BSurfaceTool::Axis(@)",
                                       header: "HLRBRep_BSurfaceTool.hxx".}
proc nbSamplesU*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbSamplesV*(s: BRepAdaptorSurface): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbSamplesU*(s: BRepAdaptorSurface; u1: StandardReal; u2: StandardReal): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}
proc nbSamplesV*(s: BRepAdaptorSurface; v1: StandardReal; v2: StandardReal): StandardInteger {.
    importcpp: "HLRBRep_BSurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_BSurfaceTool.hxx".}

