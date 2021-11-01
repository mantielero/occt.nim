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


proc newBRepAdaptorSurface*(): BRepAdaptorSurface {.cdecl, constructor,
    importcpp: "BRepAdaptor_Surface(@)", dynlib: tkbrep.}
proc newBRepAdaptorSurface*(f: TopoDS_Face; r: bool = true): BRepAdaptorSurface {.cdecl,
    constructor, importcpp: "BRepAdaptor_Surface(@)", dynlib: tkbrep.}
proc initialize*(this: var BRepAdaptorSurface; f: TopoDS_Face;
                restriction: bool = true) {.cdecl, importcpp: "Initialize",
                                        dynlib: tkbrep.}
proc surface*(this: BRepAdaptorSurface): GeomAdaptorSurface {.noSideEffect, cdecl,
    importcpp: "Surface", dynlib: tkbrep.}
proc changeSurface*(this: var BRepAdaptorSurface): var GeomAdaptorSurface {.cdecl,
    importcpp: "ChangeSurface", dynlib: tkbrep.}
proc trsf*(this: BRepAdaptorSurface): Trsf {.noSideEffect, cdecl, importcpp: "Trsf",
    dynlib: tkbrep.}
proc face*(this: BRepAdaptorSurface): TopoDS_Face {.noSideEffect, cdecl,
    importcpp: "Face", dynlib: tkbrep.}
proc tolerance*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "Tolerance", dynlib: tkbrep.}
proc firstUParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", dynlib: tkbrep.}
proc lastUParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", dynlib: tkbrep.}
proc firstVParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", dynlib: tkbrep.}
proc lastVParameter*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", dynlib: tkbrep.}
proc uContinuity*(this: BRepAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", dynlib: tkbrep.}
proc vContinuity*(this: BRepAdaptorSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", dynlib: tkbrep.}
proc nbUIntervals*(this: BRepAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", dynlib: tkbrep.}
proc nbVIntervals*(this: BRepAdaptorSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", dynlib: tkbrep.}
proc uIntervals*(this: BRepAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", dynlib: tkbrep.}
proc vIntervals*(this: BRepAdaptorSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", dynlib: tkbrep.}
proc uTrim*(this: BRepAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", dynlib: tkbrep.}
proc vTrim*(this: BRepAdaptorSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", dynlib: tkbrep.}
proc isUClosed*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", dynlib: tkbrep.}
proc isVClosed*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", dynlib: tkbrep.}
proc isUPeriodic*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", dynlib: tkbrep.}
proc uPeriod*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", dynlib: tkbrep.}
proc isVPeriodic*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", dynlib: tkbrep.}
proc vPeriod*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", dynlib: tkbrep.}
proc value*(this: BRepAdaptorSurface; u: cfloat; v: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkbrep.}
proc d0*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", dynlib: tkbrep.}
proc d1*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", dynlib: tkbrep.}
proc d2*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", dynlib: tkbrep.}
proc d3*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    dynlib: tkbrep.}
proc dn*(this: BRepAdaptorSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", dynlib: tkbrep.}
proc uResolution*(this: BRepAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", dynlib: tkbrep.}
proc vResolution*(this: BRepAdaptorSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", dynlib: tkbrep.}
proc getType*(this: BRepAdaptorSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", dynlib: tkbrep.}
proc plane*(this: BRepAdaptorSurface): Pln {.noSideEffect, cdecl, importcpp: "Plane",
    dynlib: tkbrep.}
proc cylinder*(this: BRepAdaptorSurface): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", dynlib: tkbrep.}
proc cone*(this: BRepAdaptorSurface): Cone {.noSideEffect, cdecl, importcpp: "Cone",
    dynlib: tkbrep.}
proc sphere*(this: BRepAdaptorSurface): Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", dynlib: tkbrep.}
proc torus*(this: BRepAdaptorSurface): Torus {.noSideEffect, cdecl,
    importcpp: "Torus", dynlib: tkbrep.}
proc uDegree*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", dynlib: tkbrep.}
proc nbUPoles*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", dynlib: tkbrep.}
proc vDegree*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", dynlib: tkbrep.}
proc nbVPoles*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", dynlib: tkbrep.}
proc nbUKnots*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", dynlib: tkbrep.}
proc nbVKnots*(this: BRepAdaptorSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", dynlib: tkbrep.}
proc isURational*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", dynlib: tkbrep.}
proc isVRational*(this: BRepAdaptorSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", dynlib: tkbrep.}
proc bezier*(this: BRepAdaptorSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", dynlib: tkbrep.}
proc bSpline*(this: BRepAdaptorSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", dynlib: tkbrep.}
proc axeOfRevolution*(this: BRepAdaptorSurface): Ax1 {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", dynlib: tkbrep.}
proc direction*(this: BRepAdaptorSurface): Dir {.noSideEffect, cdecl,
    importcpp: "Direction", dynlib: tkbrep.}
proc basisCurve*(this: BRepAdaptorSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", dynlib: tkbrep.}
proc basisSurface*(this: BRepAdaptorSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", dynlib: tkbrep.}
proc offsetValue*(this: BRepAdaptorSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", dynlib: tkbrep.}