##  Created on: 1993-03-10
##  Created by: JCV
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Ax1"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_SurfaceOfRevolution"
discard "forward decl of Geom_SurfaceOfRevolution"
type
  HandleC1C1* = Handle[GeomSurfaceOfRevolution]

## ! Describes a surface of revolution (revolved surface).
## ! Such a surface is obtained by rotating a curve (called
## ! the "meridian") through a complete revolution about
## ! an axis (referred to as the "axis of revolution"). The
## ! curve and the axis must be in the same plane (the
## ! "reference plane" of the surface).
## ! Rotation around the axis of revolution in the
## ! trigonometric sense defines the u parametric
## ! direction. So the u parameter is an angle, and its
## ! origin is given by the position of the meridian on the surface.
## ! The parametric range for the u parameter is: [ 0, 2.*Pi ]
## ! The v parameter is that of the meridian.
## ! Note: A surface of revolution is built from a copy of the
## ! original meridian. As a result the original meridian is
## ! not modified when the surface is modified.
## ! The form of a surface of revolution is typically a
## ! general revolution surface
## ! (GeomAbs_RevolutionForm). It can be:
## ! - a conical surface, if the meridian is a line or a
## ! trimmed line (GeomAbs_ConicalForm),
## ! - a cylindrical surface, if the meridian is a line or a
## ! trimmed line parallel to the axis of revolution
## ! (GeomAbs_CylindricalForm),
## ! - a planar surface if the meridian is a line or a
## ! trimmed line perpendicular to the axis of revolution
## ! of the surface (GeomAbs_PlanarForm),
## ! - a toroidal surface, if the meridian is a circle or a
## ! trimmed circle (GeomAbs_ToroidalForm), or
## ! - a spherical surface, if the meridian is a circle, the
## ! center of which is located on the axis of the
## ! revolved surface (GeomAbs_SphericalForm).
## ! Warning
## ! Be careful not to construct a surface of revolution
## ! where the curve and the axis or revolution are not
## ! defined in the same plane. If you do not have a
## ! correct configuration, you can correct your initial
## ! curve, using a cylindrical projection in the reference plane.

type
  GeomSurfaceOfRevolution* {.importcpp: "Geom_SurfaceOfRevolution",
                            header: "Geom_SurfaceOfRevolution.hxx", bycopy.} = object of GeomSweptSurface ##
                                                                                                   ## !
                                                                                                   ## C
                                                                                                   ## :
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## or
                                                                                                   ## the
                                                                                                   ## referenced
                                                                                                   ## curve.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## A1
                                                                                                   ## is
                                                                                                   ## the
                                                                                                   ## axis
                                                                                                   ## of
                                                                                                   ## revolution.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## The
                                                                                                   ## form
                                                                                                   ## of
                                                                                                   ## a
                                                                                                   ## SurfaceOfRevolution
                                                                                                   ## can
                                                                                                   ## be
                                                                                                   ## :
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## general
                                                                                                   ## revolution
                                                                                                   ## surface
                                                                                                   ## (RevolutionForm),
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## conical
                                                                                                   ## surface
                                                                                                   ## if
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## or
                                                                                                   ## a
                                                                                                   ## trimmed
                                                                                                   ## line
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## (ConicalForm),
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## cylindrical
                                                                                                   ## surface
                                                                                                   ## if
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## or
                                                                                                   ## a
                                                                                                   ## trimmed
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## line
                                                                                                   ## parallel
                                                                                                   ## to
                                                                                                   ## the
                                                                                                   ## revolution
                                                                                                   ## axis
                                                                                                   ## (CylindricalForm),
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## planar
                                                                                                   ## surface
                                                                                                   ## if
                                                                                                   ## the
                                                                                                   ## meridian
                                                                                                   ## is
                                                                                                   ## a
                                                                                                   ## line
                                                                                                   ## perpendicular
                                                                                                   ## to
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## the
                                                                                                   ## revolution
                                                                                                   ## axis
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## surface
                                                                                                   ## (PlanarForm).
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## spherical
                                                                                                   ## surface,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## toroidal
                                                                                                   ## surface,
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## .
                                                                                                   ## a
                                                                                                   ## quadric
                                                                                                   ## surface.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## Warnings
                                                                                                   ## :
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## It
                                                                                                   ## is
                                                                                                   ## not
                                                                                                   ## checked
                                                                                                   ## that
                                                                                                   ## the
                                                                                                   ## curve
                                                                                                   ## C
                                                                                                   ## is
                                                                                                   ## planar
                                                                                                   ## and
                                                                                                   ## that
                                                                                                   ## the
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## surface
                                                                                                   ## axis
                                                                                                   ## is
                                                                                                   ## in
                                                                                                   ## the
                                                                                                   ## plane
                                                                                                   ## of
                                                                                                   ## the
                                                                                                   ## curve.
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## It
                                                                                                   ## is
                                                                                                   ## not
                                                                                                   ## checked
                                                                                                   ## that
                                                                                                   ## the
                                                                                                   ## revolved
                                                                                                   ## curve
                                                                                                   ## C
                                                                                                   ## doesn't
                                                                                                   ##
                                                                                                   ## !
                                                                                                   ## self-intersects.


proc constructGeomSurfaceOfRevolution*(c: Handle[GeomCurve]; a1: Ax1): GeomSurfaceOfRevolution {.
    constructor, importcpp: "Geom_SurfaceOfRevolution(@)",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc setAxis*(this: var GeomSurfaceOfRevolution; a1: Ax1) {.importcpp: "SetAxis",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc setDirection*(this: var GeomSurfaceOfRevolution; v: Dir) {.
    importcpp: "SetDirection", header: "Geom_SurfaceOfRevolution.hxx".}
proc setBasisCurve*(this: var GeomSurfaceOfRevolution; c: Handle[GeomCurve]) {.
    importcpp: "SetBasisCurve", header: "Geom_SurfaceOfRevolution.hxx".}
proc setLocation*(this: var GeomSurfaceOfRevolution; p: Pnt) {.
    importcpp: "SetLocation", header: "Geom_SurfaceOfRevolution.hxx".}
proc axis*(this: GeomSurfaceOfRevolution): Ax1 {.noSideEffect, importcpp: "Axis",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc location*(this: GeomSurfaceOfRevolution): Pnt {.noSideEffect,
    importcpp: "Location", header: "Geom_SurfaceOfRevolution.hxx".}
proc referencePlane*(this: GeomSurfaceOfRevolution): Ax2 {.noSideEffect,
    importcpp: "ReferencePlane", header: "Geom_SurfaceOfRevolution.hxx".}
proc uReverse*(this: var GeomSurfaceOfRevolution) {.importcpp: "UReverse",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc uReversedParameter*(this: GeomSurfaceOfRevolution; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc vReverse*(this: var GeomSurfaceOfRevolution) {.importcpp: "VReverse",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc vReversedParameter*(this: GeomSurfaceOfRevolution; v: StandardReal): StandardReal {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc transformParameters*(this: GeomSurfaceOfRevolution; u: var StandardReal;
                         v: var StandardReal; t: Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_SurfaceOfRevolution.hxx".}
proc parametricTransformation*(this: GeomSurfaceOfRevolution; t: Trsf): GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc bounds*(this: GeomSurfaceOfRevolution; u1: var StandardReal;
            u2: var StandardReal; v1: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_SurfaceOfRevolution.hxx".}
proc isUClosed*(this: GeomSurfaceOfRevolution): StandardBoolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_SurfaceOfRevolution.hxx".}
proc isVClosed*(this: GeomSurfaceOfRevolution): StandardBoolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_SurfaceOfRevolution.hxx".}
proc isCNu*(this: GeomSurfaceOfRevolution; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCNu", header: "Geom_SurfaceOfRevolution.hxx".}
proc isCNv*(this: GeomSurfaceOfRevolution; n: int): StandardBoolean {.noSideEffect,
    importcpp: "IsCNv", header: "Geom_SurfaceOfRevolution.hxx".}
proc isUPeriodic*(this: GeomSurfaceOfRevolution): StandardBoolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_SurfaceOfRevolution.hxx".}
proc isVPeriodic*(this: GeomSurfaceOfRevolution): StandardBoolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_SurfaceOfRevolution.hxx".}
proc uIso*(this: GeomSurfaceOfRevolution; u: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_SurfaceOfRevolution.hxx".}
proc vIso*(this: GeomSurfaceOfRevolution; v: StandardReal): Handle[GeomCurve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_SurfaceOfRevolution.hxx".}
proc d0*(this: GeomSurfaceOfRevolution; u: StandardReal; v: StandardReal; p: var Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_SurfaceOfRevolution.hxx".}
proc d1*(this: GeomSurfaceOfRevolution; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec) {.noSideEffect, importcpp: "D1",
                                header: "Geom_SurfaceOfRevolution.hxx".}
proc d2*(this: GeomSurfaceOfRevolution; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec) {.noSideEffect,
    importcpp: "D2", header: "Geom_SurfaceOfRevolution.hxx".}
proc d3*(this: GeomSurfaceOfRevolution; u: StandardReal; v: StandardReal; p: var Pnt;
        d1u: var Vec; d1v: var Vec; d2u: var Vec; d2v: var Vec; d2uv: var Vec; d3u: var Vec;
        d3v: var Vec; d3uuv: var Vec; d3uvv: var Vec) {.noSideEffect, importcpp: "D3",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc dn*(this: GeomSurfaceOfRevolution; u: StandardReal; v: StandardReal; nu: int;
        nv: int): Vec {.noSideEffect, importcpp: "DN",
                     header: "Geom_SurfaceOfRevolution.hxx".}
proc transform*(this: var GeomSurfaceOfRevolution; t: Trsf) {.importcpp: "Transform",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc copy*(this: GeomSurfaceOfRevolution): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_SurfaceOfRevolution.hxx".}
proc dumpJson*(this: GeomSurfaceOfRevolution; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "Geom_SurfaceOfRevolution.hxx".}
type
  GeomSurfaceOfRevolutionbaseType* = GeomSweptSurface

proc getTypeName*(): cstring {.importcpp: "Geom_SurfaceOfRevolution::get_type_name(@)",
                            header: "Geom_SurfaceOfRevolution.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc dynamicType*(this: GeomSurfaceOfRevolution): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_SurfaceOfRevolution.hxx".}