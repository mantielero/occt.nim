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


proc surface*(this: Adaptor3dHSurface): Adaptor3dSurface {.noSideEffect,
    importcpp: "Surface", header: "Adaptor3d_HSurface.hxx".}
proc firstUParameter*(this: Adaptor3dHSurface): float {.noSideEffect,
    importcpp: "FirstUParameter", header: "Adaptor3d_HSurface.hxx".}
proc lastUParameter*(this: Adaptor3dHSurface): float {.noSideEffect,
    importcpp: "LastUParameter", header: "Adaptor3d_HSurface.hxx".}
proc firstVParameter*(this: Adaptor3dHSurface): float {.noSideEffect,
    importcpp: "FirstVParameter", header: "Adaptor3d_HSurface.hxx".}
proc lastVParameter*(this: Adaptor3dHSurface): float {.noSideEffect,
    importcpp: "LastVParameter", header: "Adaptor3d_HSurface.hxx".}
proc uContinuity*(this: Adaptor3dHSurface): GeomAbsShape {.noSideEffect,
    importcpp: "UContinuity", header: "Adaptor3d_HSurface.hxx".}
proc vContinuity*(this: Adaptor3dHSurface): GeomAbsShape {.noSideEffect,
    importcpp: "VContinuity", header: "Adaptor3d_HSurface.hxx".}
proc nbUIntervals*(this: Adaptor3dHSurface; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbUIntervals", header: "Adaptor3d_HSurface.hxx".}
proc nbVIntervals*(this: Adaptor3dHSurface; s: GeomAbsShape): int {.noSideEffect,
    importcpp: "NbVIntervals", header: "Adaptor3d_HSurface.hxx".}
proc uIntervals*(this: Adaptor3dHSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "UIntervals", header: "Adaptor3d_HSurface.hxx".}
proc vIntervals*(this: Adaptor3dHSurface; t: var TColStdArray1OfReal; s: GeomAbsShape) {.
    noSideEffect, importcpp: "VIntervals", header: "Adaptor3d_HSurface.hxx".}
proc uTrim*(this: Adaptor3dHSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "UTrim",
                        header: "Adaptor3d_HSurface.hxx".}
proc vTrim*(this: Adaptor3dHSurface; first: float; last: float; tol: float): Handle[
    Adaptor3dHSurface] {.noSideEffect, importcpp: "VTrim",
                        header: "Adaptor3d_HSurface.hxx".}
proc isUClosed*(this: Adaptor3dHSurface): bool {.noSideEffect,
    importcpp: "IsUClosed", header: "Adaptor3d_HSurface.hxx".}
proc isVClosed*(this: Adaptor3dHSurface): bool {.noSideEffect,
    importcpp: "IsVClosed", header: "Adaptor3d_HSurface.hxx".}
proc isUPeriodic*(this: Adaptor3dHSurface): bool {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Adaptor3d_HSurface.hxx".}
proc uPeriod*(this: Adaptor3dHSurface): float {.noSideEffect, importcpp: "UPeriod",
    header: "Adaptor3d_HSurface.hxx".}
proc isVPeriodic*(this: Adaptor3dHSurface): bool {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Adaptor3d_HSurface.hxx".}
proc vPeriod*(this: Adaptor3dHSurface): float {.noSideEffect, importcpp: "VPeriod",
    header: "Adaptor3d_HSurface.hxx".}
proc value*(this: Adaptor3dHSurface; u: float; v: float): Pnt {.noSideEffect,
    importcpp: "Value", header: "Adaptor3d_HSurface.hxx".}
proc d0*(this: Adaptor3dHSurface; u: float; v: float; p: var Pnt) {.noSideEffect,
    importcpp: "D0", header: "Adaptor3d_HSurface.hxx".}
proc d1*(this: Adaptor3dHSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec) {.
    noSideEffect, importcpp: "D1", header: "Adaptor3d_HSurface.hxx".}
proc d2*(this: Adaptor3dHSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect, importcpp: "D2",
    header: "Adaptor3d_HSurface.hxx".}
proc d3*(this: Adaptor3dHSurface; u: float; v: float; p: var Pnt; d1u: var Vec; d1v: var Vec;
        d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec; d3v: var Vec; d3uuv: var Vec;
        d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
                       header: "Adaptor3d_HSurface.hxx".}
proc dn*(this: Adaptor3dHSurface; u: float; v: float; nu: int; nv: int): Vec {.noSideEffect,
    importcpp: "DN", header: "Adaptor3d_HSurface.hxx".}
proc uResolution*(this: Adaptor3dHSurface; r3d: float): float {.noSideEffect,
    importcpp: "UResolution", header: "Adaptor3d_HSurface.hxx".}
proc vResolution*(this: Adaptor3dHSurface; r3d: float): float {.noSideEffect,
    importcpp: "VResolution", header: "Adaptor3d_HSurface.hxx".}
proc getType*(this: Adaptor3dHSurface): GeomAbsSurfaceType {.noSideEffect,
    importcpp: "GetType", header: "Adaptor3d_HSurface.hxx".}
proc plane*(this: Adaptor3dHSurface): Pln {.noSideEffect, importcpp: "Plane",
                                        header: "Adaptor3d_HSurface.hxx".}
proc cylinder*(this: Adaptor3dHSurface): Cylinder {.noSideEffect,
    importcpp: "Cylinder", header: "Adaptor3d_HSurface.hxx".}
proc cone*(this: Adaptor3dHSurface): Cone {.noSideEffect, importcpp: "Cone",
                                        header: "Adaptor3d_HSurface.hxx".}
proc sphere*(this: Adaptor3dHSurface): Sphere {.noSideEffect, importcpp: "Sphere",
    header: "Adaptor3d_HSurface.hxx".}
proc torus*(this: Adaptor3dHSurface): Torus {.noSideEffect, importcpp: "Torus",
    header: "Adaptor3d_HSurface.hxx".}
proc uDegree*(this: Adaptor3dHSurface): int {.noSideEffect, importcpp: "UDegree",
    header: "Adaptor3d_HSurface.hxx".}
proc nbUPoles*(this: Adaptor3dHSurface): int {.noSideEffect, importcpp: "NbUPoles",
    header: "Adaptor3d_HSurface.hxx".}
proc vDegree*(this: Adaptor3dHSurface): int {.noSideEffect, importcpp: "VDegree",
    header: "Adaptor3d_HSurface.hxx".}
proc nbVPoles*(this: Adaptor3dHSurface): int {.noSideEffect, importcpp: "NbVPoles",
    header: "Adaptor3d_HSurface.hxx".}
proc nbUKnots*(this: Adaptor3dHSurface): int {.noSideEffect, importcpp: "NbUKnots",
    header: "Adaptor3d_HSurface.hxx".}
proc nbVKnots*(this: Adaptor3dHSurface): int {.noSideEffect, importcpp: "NbVKnots",
    header: "Adaptor3d_HSurface.hxx".}
proc isURational*(this: Adaptor3dHSurface): bool {.noSideEffect,
    importcpp: "IsURational", header: "Adaptor3d_HSurface.hxx".}
proc isVRational*(this: Adaptor3dHSurface): bool {.noSideEffect,
    importcpp: "IsVRational", header: "Adaptor3d_HSurface.hxx".}
proc bezier*(this: Adaptor3dHSurface): Handle[GeomBezierSurface] {.noSideEffect,
    importcpp: "Bezier", header: "Adaptor3d_HSurface.hxx".}
proc bSpline*(this: Adaptor3dHSurface): Handle[GeomBSplineSurface] {.noSideEffect,
    importcpp: "BSpline", header: "Adaptor3d_HSurface.hxx".}
proc axeOfRevolution*(this: Adaptor3dHSurface): Ax1 {.noSideEffect,
    importcpp: "AxeOfRevolution", header: "Adaptor3d_HSurface.hxx".}
proc direction*(this: Adaptor3dHSurface): Dir {.noSideEffect, importcpp: "Direction",
    header: "Adaptor3d_HSurface.hxx".}
proc basisCurve*(this: Adaptor3dHSurface): Handle[Adaptor3dHCurve] {.noSideEffect,
    importcpp: "BasisCurve", header: "Adaptor3d_HSurface.hxx".}
proc basisSurface*(this: Adaptor3dHSurface): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "BasisSurface", header: "Adaptor3d_HSurface.hxx".}
proc offsetValue*(this: Adaptor3dHSurface): float {.noSideEffect,
    importcpp: "OffsetValue", header: "Adaptor3d_HSurface.hxx".}
type
  Adaptor3dHSurfacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Adaptor3d_HSurface::get_type_name(@)",
                            header: "Adaptor3d_HSurface.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Adaptor3d_HSurface::get_type_descriptor(@)",
    header: "Adaptor3d_HSurface.hxx".}
proc dynamicType*(this: Adaptor3dHSurface): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Adaptor3d_HSurface.hxx".}
