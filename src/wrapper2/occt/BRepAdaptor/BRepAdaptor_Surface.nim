##  Created on: 1993-02-22
##  Created by: Remi LEQUETTE
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Face"
discard "forward decl of GeomAdaptor_Surface"
discard "forward decl of gp_Trsf"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pln"
discard "forward decl of gp_Cylinder"
discard "forward decl of gp_Cone"
discard "forward decl of gp_Sphere"
discard "forward decl of gp_Torus"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Dir"
discard "forward decl of Adaptor3d_HCurve"
type
  BRepAdaptorSurface* {.importcpp: "BRepAdaptor_Surface",
                       header: "BRepAdaptor_Surface.hxx", bycopy.} = object of Adaptor3dSurface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## an
                                                                                         ## undefined
                                                                                         ## surface
                                                                                         ## with
                                                                                         ## no
                                                                                         ## face
                                                                                         ## loaded.


proc constructBRepAdaptorSurface*(): BRepAdaptorSurface {.constructor,
    importcpp: "BRepAdaptor_Surface(@)", header: "BRepAdaptor_Surface.hxx".}
proc constructBRepAdaptorSurface*(f: TopoDS_Face; r: StandardBoolean = standardTrue): BRepAdaptorSurface {.
    constructor, importcpp: "BRepAdaptor_Surface(@)",
    header: "BRepAdaptor_Surface.hxx".}
proc initialize*(this: var BRepAdaptorSurface; f: TopoDS_Face;
                restriction: StandardBoolean = standardTrue) {.
    importcpp: "Initialize", header: "BRepAdaptor_Surface.hxx".}
proc surface*(this: BRepAdaptorSurface): GeomAdaptorSurface {.noSideEffect,
    importcpp: "Surface", header: "BRepAdaptor_Surface.hxx".}
proc changeSurface*(this: var BRepAdaptorSurface): var GeomAdaptorSurface {.
    importcpp: "ChangeSurface", header: "BRepAdaptor_Surface.hxx".}
proc trsf*(this: BRepAdaptorSurface): GpTrsf {.noSideEffect, importcpp: "Trsf",
    header: "BRepAdaptor_Surface.hxx".}
proc face*(this: BRepAdaptorSurface): TopoDS_Face {.noSideEffect, importcpp: "Face",
    header: "BRepAdaptor_Surface.hxx".}
proc tolerance*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "BRepAdaptor_Surface.hxx".}
proc firstUParameter*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "FirstUParameter", header: "BRepAdaptor_Surface.hxx".}
proc lastUParameter*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "LastUParameter", header: "BRepAdaptor_Surface.hxx".}
proc firstVParameter*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "FirstVParameter", header: "BRepAdaptor_Surface.hxx".}
proc lastVParameter*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "LastVParameter", header: "BRepAdaptor_Surface.hxx".}
proc uContinuity*(this: BRepAdaptorSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UContinuity", header: "BRepAdaptor_Surface.hxx".}
proc vContinuity*(this: BRepAdaptorSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VContinuity", header: "BRepAdaptor_Surface.hxx".}
proc nbUIntervals*(this: BRepAdaptorSurface; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbUIntervals", header: "BRepAdaptor_Surface.hxx".}
proc nbVIntervals*(this: BRepAdaptorSurface; s: GeomAbsShape): StandardInteger {.
    noSideEffect, importcpp: "NbVIntervals", header: "BRepAdaptor_Surface.hxx".}
proc uIntervals*(this: BRepAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "UIntervals", header: "BRepAdaptor_Surface.hxx".}
proc vIntervals*(this: BRepAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "VIntervals", header: "BRepAdaptor_Surface.hxx".}
proc uTrim*(this: BRepAdaptorSurface; first: StandardReal; last: StandardReal;
           tol: StandardReal): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "UTrim", header: "BRepAdaptor_Surface.hxx".}
proc vTrim*(this: BRepAdaptorSurface; first: StandardReal; last: StandardReal;
           tol: StandardReal): Handle[Adaptor3dHSurface] {.noSideEffect,
    importcpp: "VTrim", header: "BRepAdaptor_Surface.hxx".}
proc isUClosed*(this: BRepAdaptorSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "BRepAdaptor_Surface.hxx".}
proc isVClosed*(this: BRepAdaptorSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "BRepAdaptor_Surface.hxx".}
proc isUPeriodic*(this: BRepAdaptorSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "BRepAdaptor_Surface.hxx".}
proc uPeriod*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "UPeriod", header: "BRepAdaptor_Surface.hxx".}
proc isVPeriodic*(this: BRepAdaptorSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "BRepAdaptor_Surface.hxx".}
proc vPeriod*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "VPeriod", header: "BRepAdaptor_Surface.hxx".}
proc value*(this: BRepAdaptorSurface; u: StandardReal; v: StandardReal): GpPnt {.
    noSideEffect, importcpp: "Value", header: "BRepAdaptor_Surface.hxx".}
proc d0*(this: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    noSideEffect, importcpp: "D0", header: "BRepAdaptor_Surface.hxx".}
proc d1*(this: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.noSideEffect, importcpp: "D1",
                                    header: "BRepAdaptor_Surface.hxx".}
proc d2*(this: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec) {.
    noSideEffect, importcpp: "D2", header: "BRepAdaptor_Surface.hxx".}
proc d3*(this: BRepAdaptorSurface; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; d2uv: var GpVec;
        d3u: var GpVec; d3v: var GpVec; d3uuv: var GpVec; d3uvv: var GpVec) {.noSideEffect,
    importcpp: "D3", header: "BRepAdaptor_Surface.hxx".}
proc dn*(this: BRepAdaptorSurface; u: StandardReal; v: StandardReal;
        nu: StandardInteger; nv: StandardInteger): GpVec {.noSideEffect,
    importcpp: "DN", header: "BRepAdaptor_Surface.hxx".}
proc uResolution*(this: BRepAdaptorSurface; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UResolution", header: "BRepAdaptor_Surface.hxx".}
proc vResolution*(this: BRepAdaptorSurface; r3d: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VResolution", header: "BRepAdaptor_Surface.hxx".}
proc getType*(this: BRepAdaptorSurface): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "GetType", header: "BRepAdaptor_Surface.hxx".}
proc plane*(this: BRepAdaptorSurface): GpPln {.noSideEffect, importcpp: "Plane",
    header: "BRepAdaptor_Surface.hxx".}
proc cylinder*(this: BRepAdaptorSurface): GpCylinder {.noSideEffect,
    importcpp: "Cylinder", header: "BRepAdaptor_Surface.hxx".}
proc cone*(this: BRepAdaptorSurface): GpCone {.noSideEffect, importcpp: "Cone",
    header: "BRepAdaptor_Surface.hxx".}
proc sphere*(this: BRepAdaptorSurface): GpSphere {.noSideEffect, importcpp: "Sphere",
    header: "BRepAdaptor_Surface.hxx".}
proc torus*(this: BRepAdaptorSurface): GpTorus {.noSideEffect, importcpp: "Torus",
    header: "BRepAdaptor_Surface.hxx".}
proc uDegree*(this: BRepAdaptorSurface): StandardInteger {.noSideEffect,
    importcpp: "UDegree", header: "BRepAdaptor_Surface.hxx".}
proc nbUPoles*(this: BRepAdaptorSurface): StandardInteger {.noSideEffect,
    importcpp: "NbUPoles", header: "BRepAdaptor_Surface.hxx".}
proc vDegree*(this: BRepAdaptorSurface): StandardInteger {.noSideEffect,
    importcpp: "VDegree", header: "BRepAdaptor_Surface.hxx".}
proc nbVPoles*(this: BRepAdaptorSurface): StandardInteger {.noSideEffect,
    importcpp: "NbVPoles", header: "BRepAdaptor_Surface.hxx".}
proc nbUKnots*(this: BRepAdaptorSurface): StandardInteger {.noSideEffect,
    importcpp: "NbUKnots", header: "BRepAdaptor_Surface.hxx".}
proc nbVKnots*(this: BRepAdaptorSurface): StandardInteger {.noSideEffect,
    importcpp: "NbVKnots", header: "BRepAdaptor_Surface.hxx".}
proc isURational*(this: BRepAdaptorSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsURational", header: "BRepAdaptor_Surface.hxx".}
proc isVRational*(this: BRepAdaptorSurface): StandardBoolean {.noSideEffect,
    importcpp: "IsVRational", header: "BRepAdaptor_Surface.hxx".}
proc bezier*(this: BRepAdaptorSurface): Handle[GeomBezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "BRepAdaptor_Surface.hxx".}
proc bSpline*(this: BRepAdaptorSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    importcpp: "BSpline", header: "BRepAdaptor_Surface.hxx".}
proc axeOfRevolution*(this: BRepAdaptorSurface): GpAx1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "BRepAdaptor_Surface.hxx".}
proc direction*(this: BRepAdaptorSurface): GpDir {.noSideEffect,
    importcpp: "Direction", header: "BRepAdaptor_Surface.hxx".}
proc basisCurve*(this: BRepAdaptorSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "BRepAdaptor_Surface.hxx".}
proc basisSurface*(this: BRepAdaptorSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "BRepAdaptor_Surface.hxx".}
proc offsetValue*(this: BRepAdaptorSurface): StandardReal {.noSideEffect,
    importcpp: "OffsetValue", header: "BRepAdaptor_Surface.hxx".}

