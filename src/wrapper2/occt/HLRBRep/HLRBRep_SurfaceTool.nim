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
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
type
  HLRBRepSurfaceTool* {.importcpp: "HLRBRep_SurfaceTool",
                       header: "HLRBRep_SurfaceTool.hxx", bycopy.} = object


proc firstUParameter*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::FirstUParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc firstVParameter*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::FirstVParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc lastUParameter*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::LastUParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc lastVParameter*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::LastVParameter(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc nbUIntervals*(s: StandardAddress; sh: GeomAbsShape): StandardInteger {.
    importcpp: "HLRBRep_SurfaceTool::NbUIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc nbVIntervals*(s: StandardAddress; sh: GeomAbsShape): StandardInteger {.
    importcpp: "HLRBRep_SurfaceTool::NbVIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc uIntervals*(s: StandardAddress; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "HLRBRep_SurfaceTool::UIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc vIntervals*(s: StandardAddress; t: var TColStdArray1OfReal; sh: GeomAbsShape) {.
    importcpp: "HLRBRep_SurfaceTool::VIntervals(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc uTrim*(s: StandardAddress; first: StandardReal; last: StandardReal;
           tol: StandardReal): Handle[Adaptor3dHSurface] {.
    importcpp: "HLRBRep_SurfaceTool::UTrim(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc vTrim*(s: StandardAddress; first: StandardReal; last: StandardReal;
           tol: StandardReal): Handle[Adaptor3dHSurface] {.
    importcpp: "HLRBRep_SurfaceTool::VTrim(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc isUClosed*(s: StandardAddress): StandardBoolean {.
    importcpp: "HLRBRep_SurfaceTool::IsUClosed(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc isVClosed*(s: StandardAddress): StandardBoolean {.
    importcpp: "HLRBRep_SurfaceTool::IsVClosed(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc isUPeriodic*(s: StandardAddress): StandardBoolean {.
    importcpp: "HLRBRep_SurfaceTool::IsUPeriodic(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc uPeriod*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::UPeriod(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc isVPeriodic*(s: StandardAddress): StandardBoolean {.
    importcpp: "HLRBRep_SurfaceTool::IsVPeriodic(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc vPeriod*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::VPeriod(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc value*(s: StandardAddress; u: StandardReal; v: StandardReal): GpPnt {.
    importcpp: "HLRBRep_SurfaceTool::Value(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc d0*(s: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    importcpp: "HLRBRep_SurfaceTool::D0(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc d1*(s: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.importcpp: "HLRBRep_SurfaceTool::D1(@)",
                                    header: "HLRBRep_SurfaceTool.hxx".}
proc d2*(s: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    importcpp: "HLRBRep_SurfaceTool::D2(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc d3*(s: StandardAddress; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.
    importcpp: "HLRBRep_SurfaceTool::D3(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc dn*(s: StandardAddress; u: StandardReal; v: StandardReal; nu: StandardInteger;
        nv: StandardInteger): GpVec {.importcpp: "HLRBRep_SurfaceTool::DN(@)",
                                   header: "HLRBRep_SurfaceTool.hxx".}
proc uResolution*(s: StandardAddress; r3d: StandardReal): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::UResolution(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc vResolution*(s: StandardAddress; r3d: StandardReal): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::VResolution(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc getType*(s: StandardAddress): GeomAbsSurfaceType {.
    importcpp: "HLRBRep_SurfaceTool::GetType(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc plane*(s: StandardAddress): GpPln {.importcpp: "HLRBRep_SurfaceTool::Plane(@)",
                                     header: "HLRBRep_SurfaceTool.hxx".}
proc cylinder*(s: StandardAddress): GpCylinder {.
    importcpp: "HLRBRep_SurfaceTool::Cylinder(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc cone*(s: StandardAddress): GpCone {.importcpp: "HLRBRep_SurfaceTool::Cone(@)",
                                     header: "HLRBRep_SurfaceTool.hxx".}
proc torus*(s: StandardAddress): GpTorus {.importcpp: "HLRBRep_SurfaceTool::Torus(@)",
                                       header: "HLRBRep_SurfaceTool.hxx".}
proc sphere*(s: StandardAddress): GpSphere {.
    importcpp: "HLRBRep_SurfaceTool::Sphere(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc bezier*(s: StandardAddress): Handle[GeomBezierSurface] {.
    importcpp: "HLRBRep_SurfaceTool::Bezier(@)", header: "HLRBRep_SurfaceTool.hxx".}
proc bSpline*(s: StandardAddress): Handle[GeomBSplineSurface] {.
    importcpp: "HLRBRep_SurfaceTool::BSpline(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc axeOfRevolution*(s: StandardAddress): GpAx1 {.
    importcpp: "HLRBRep_SurfaceTool::AxeOfRevolution(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc direction*(s: StandardAddress): GpDir {.
    importcpp: "HLRBRep_SurfaceTool::Direction(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc basisCurve*(s: StandardAddress): Handle[Adaptor3dHCurve] {.
    importcpp: "HLRBRep_SurfaceTool::BasisCurve(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc basisSurface*(s: StandardAddress): Handle[Adaptor3dHSurface] {.
    importcpp: "HLRBRep_SurfaceTool::BasisSurface(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc offsetValue*(s: StandardAddress): StandardReal {.
    importcpp: "HLRBRep_SurfaceTool::OffsetValue(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc nbSamplesU*(s: StandardAddress): StandardInteger {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc nbSamplesV*(s: StandardAddress): StandardInteger {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc nbSamplesU*(s: StandardAddress; u1: StandardReal; u2: StandardReal): StandardInteger {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesU(@)",
    header: "HLRBRep_SurfaceTool.hxx".}
proc nbSamplesV*(s: StandardAddress; v1: StandardReal; v2: StandardReal): StandardInteger {.
    importcpp: "HLRBRep_SurfaceTool::NbSamplesV(@)",
    header: "HLRBRep_SurfaceTool.hxx".}

