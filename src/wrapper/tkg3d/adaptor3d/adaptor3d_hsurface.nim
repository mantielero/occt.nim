##  Created on: 1994-02-14
##  Created by: model
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NotImplemented"
discard "forward decl of Adaptor3d_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BezierSurface"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor3d_HSurface"
type
  HandleAdaptor3dHSurface* = Handle[Adaptor3dHSurface]

## ! Root class for surfaces manipulated by handles, on
## ! which geometric algorithms work.
## ! An adapted surface is an interface between the
## ! services provided by a surface and those required of
## ! the surface by algorithms which use it.
## ! A derived concrete class is provided:
## ! GeomAdaptor_HSurface for a surface from the Geom package.

type
  Adaptor3dHSurface* {.importcpp: "Adaptor3d_HSurface",
                      header: "Adaptor3d_HSurface.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## reference
                                                                                        ## to
                                                                                        ## the
                                                                                        ## Surface
                                                                                        ## inside
                                                                                        ## the
                                                                                        ## HSurface.


proc surface*(this: Adaptor3dHSurface): Adaptor3dSurface {.noSideEffect, cdecl,
    importcpp: "Surface", header: "Adaptor3d_HSurface.hxx".}
proc firstUParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstUParameter", header: "Adaptor3d_HSurface.hxx".}
proc lastUParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastUParameter", header: "Adaptor3d_HSurface.hxx".}
proc firstVParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstVParameter", header: "Adaptor3d_HSurface.hxx".}
proc lastVParameter*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "LastVParameter", header: "Adaptor3d_HSurface.hxx".}
proc uContinuity*(this: Adaptor3dHSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "UContinuity", header: "Adaptor3d_HSurface.hxx".}
proc vContinuity*(this: Adaptor3dHSurface): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "VContinuity", header: "Adaptor3d_HSurface.hxx".}
proc nbUIntervals*(this: Adaptor3dHSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbUIntervals", header: "Adaptor3d_HSurface.hxx".}
proc nbVIntervals*(this: Adaptor3dHSurface; s: GeomAbsShape): cint {.noSideEffect,
    cdecl, importcpp: "NbVIntervals", header: "Adaptor3d_HSurface.hxx".}
proc uIntervals*(this: Adaptor3dHSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "UIntervals", header: "Adaptor3d_HSurface.hxx".}
proc vIntervals*(this: Adaptor3dHSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, cdecl, importcpp: "VIntervals", header: "Adaptor3d_HSurface.hxx".}
proc uTrim*(this: Adaptor3dHSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "UTrim", header: "Adaptor3d_HSurface.hxx".}
proc vTrim*(this: Adaptor3dHSurface; first: cfloat; last: cfloat; tol: cfloat): Handle[
    Adaptor3dHSurface] {.noSideEffect, cdecl, importcpp: "VTrim", header: "Adaptor3d_HSurface.hxx".}
proc isUClosed*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUClosed", header: "Adaptor3d_HSurface.hxx".}
proc isVClosed*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVClosed", header: "Adaptor3d_HSurface.hxx".}
proc isUPeriodic*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsUPeriodic", header: "Adaptor3d_HSurface.hxx".}
proc uPeriod*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "UPeriod", header: "Adaptor3d_HSurface.hxx".}
proc isVPeriodic*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVPeriodic", header: "Adaptor3d_HSurface.hxx".}
proc vPeriod*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "VPeriod", header: "Adaptor3d_HSurface.hxx".}
proc value*(this: Adaptor3dHSurface; u: cfloat; v: cfloat): Pnt {.noSideEffect, cdecl,
    importcpp: "Value", header: "Adaptor3d_HSurface.hxx".}
proc d0*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Adaptor3d_HSurface.hxx".}
proc d1*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.noSideEffect, cdecl, importcpp: "D1", header: "Adaptor3d_HSurface.hxx".}
proc d2*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, cdecl,
    importcpp: "D2", header: "Adaptor3d_HSurface.hxx".}
proc d3*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec;
        d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, cdecl, importcpp: "D3",
                                    header: "Adaptor3d_HSurface.hxx".}
proc dn*(this: Adaptor3dHSurface; u: cfloat; v: cfloat; nu: cint; nv: cint): Vec {.
    noSideEffect, cdecl, importcpp: "DN", header: "Adaptor3d_HSurface.hxx".}
proc uResolution*(this: Adaptor3dHSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "UResolution", header: "Adaptor3d_HSurface.hxx".}
proc vResolution*(this: Adaptor3dHSurface; r3d: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "VResolution", header: "Adaptor3d_HSurface.hxx".}
proc getType*(this: Adaptor3dHSurface): GeomAbsSurfaceType {.noSideEffect, cdecl,
    importcpp: "GetType", header: "Adaptor3d_HSurface.hxx".}
proc plane*(this: Adaptor3dHSurface): Pln {.noSideEffect, cdecl, importcpp: "Plane",
                                        header: "Adaptor3d_HSurface.hxx".}
proc cylinder*(this: Adaptor3dHSurface): Cylinder {.noSideEffect, cdecl,
    importcpp: "Cylinder", header: "Adaptor3d_HSurface.hxx".}
proc cone*(this: Adaptor3dHSurface): Cone {.noSideEffect, cdecl, importcpp: "Cone",
                                        header: "Adaptor3d_HSurface.hxx".}
proc sphere*(this: Adaptor3dHSurface): Sphere {.noSideEffect, cdecl,
    importcpp: "Sphere", header: "Adaptor3d_HSurface.hxx".}
proc torus*(this: Adaptor3dHSurface): Torus {.noSideEffect, cdecl, importcpp: "Torus",
    header: "Adaptor3d_HSurface.hxx".}
proc uDegree*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "UDegree", header: "Adaptor3d_HSurface.hxx".}
proc nbUPoles*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUPoles", header: "Adaptor3d_HSurface.hxx".}
proc vDegree*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "VDegree", header: "Adaptor3d_HSurface.hxx".}
proc nbVPoles*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVPoles", header: "Adaptor3d_HSurface.hxx".}
proc nbUKnots*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbUKnots", header: "Adaptor3d_HSurface.hxx".}
proc nbVKnots*(this: Adaptor3dHSurface): cint {.noSideEffect, cdecl,
    importcpp: "NbVKnots", header: "Adaptor3d_HSurface.hxx".}
proc isURational*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsURational", header: "Adaptor3d_HSurface.hxx".}
proc isVRational*(this: Adaptor3dHSurface): bool {.noSideEffect, cdecl,
    importcpp: "IsVRational", header: "Adaptor3d_HSurface.hxx".}
proc bezier*(this: Adaptor3dHSurface): Handle[GeomBezierSurface] {.noSideEffect,
    cdecl, importcpp: "Bezier", header: "Adaptor3d_HSurface.hxx".}
proc bSpline*(this: Adaptor3dHSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    cdecl, importcpp: "BSpline", header: "Adaptor3d_HSurface.hxx".}
proc axeOfRevolution*(this: Adaptor3dHSurface): Ax1 {.noSideEffect, cdecl,
    importcpp: "AxeOfRevolution", header: "Adaptor3d_HSurface.hxx".}
proc direction*(this: Adaptor3dHSurface): Dir {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Adaptor3d_HSurface.hxx".}
proc basisCurve*(this: Adaptor3dHSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    cdecl, importcpp: "BasisCurve", header: "Adaptor3d_HSurface.hxx".}
proc basisSurface*(this: Adaptor3dHSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, cdecl, importcpp: "BasisSurface", header: "Adaptor3d_HSurface.hxx".}
proc offsetValue*(this: Adaptor3dHSurface): cfloat {.noSideEffect, cdecl,
    importcpp: "OffsetValue", header: "Adaptor3d_HSurface.hxx".}