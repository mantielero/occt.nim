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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_Pnt, Geom_SweptSurface,
  ../GeomEvaluator/GeomEvaluator_SurfaceOfRevolution, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

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
  Handle_Geom_SurfaceOfRevolution* = handle[Geom_SurfaceOfRevolution]

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
  Geom_SurfaceOfRevolution* {.importcpp: "Geom_SurfaceOfRevolution",
                             header: "Geom_SurfaceOfRevolution.hxx", bycopy.} = object of Geom_SweptSurface ##
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


proc constructGeom_SurfaceOfRevolution*(C: handle[Geom_Curve]; A1: gp_Ax1): Geom_SurfaceOfRevolution {.
    constructor, importcpp: "Geom_SurfaceOfRevolution(@)",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc SetAxis*(this: var Geom_SurfaceOfRevolution; A1: gp_Ax1) {.importcpp: "SetAxis",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc SetDirection*(this: var Geom_SurfaceOfRevolution; V: gp_Dir) {.
    importcpp: "SetDirection", header: "Geom_SurfaceOfRevolution.hxx".}
proc SetBasisCurve*(this: var Geom_SurfaceOfRevolution; C: handle[Geom_Curve]) {.
    importcpp: "SetBasisCurve", header: "Geom_SurfaceOfRevolution.hxx".}
proc SetLocation*(this: var Geom_SurfaceOfRevolution; P: gp_Pnt) {.
    importcpp: "SetLocation", header: "Geom_SurfaceOfRevolution.hxx".}
proc Axis*(this: Geom_SurfaceOfRevolution): gp_Ax1 {.noSideEffect, importcpp: "Axis",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc Location*(this: Geom_SurfaceOfRevolution): gp_Pnt {.noSideEffect,
    importcpp: "Location", header: "Geom_SurfaceOfRevolution.hxx".}
proc ReferencePlane*(this: Geom_SurfaceOfRevolution): gp_Ax2 {.noSideEffect,
    importcpp: "ReferencePlane", header: "Geom_SurfaceOfRevolution.hxx".}
proc UReverse*(this: var Geom_SurfaceOfRevolution) {.importcpp: "UReverse",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc UReversedParameter*(this: Geom_SurfaceOfRevolution; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc VReverse*(this: var Geom_SurfaceOfRevolution) {.importcpp: "VReverse",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc VReversedParameter*(this: Geom_SurfaceOfRevolution; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc TransformParameters*(this: Geom_SurfaceOfRevolution; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_SurfaceOfRevolution.hxx".}
proc ParametricTransformation*(this: Geom_SurfaceOfRevolution; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc Bounds*(this: Geom_SurfaceOfRevolution; U1: var Standard_Real;
            U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_SurfaceOfRevolution.hxx".}
proc IsUClosed*(this: Geom_SurfaceOfRevolution): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_SurfaceOfRevolution.hxx".}
proc IsVClosed*(this: Geom_SurfaceOfRevolution): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_SurfaceOfRevolution.hxx".}
proc IsCNu*(this: Geom_SurfaceOfRevolution; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_SurfaceOfRevolution.hxx".}
proc IsCNv*(this: Geom_SurfaceOfRevolution; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_SurfaceOfRevolution.hxx".}
proc IsUPeriodic*(this: Geom_SurfaceOfRevolution): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_SurfaceOfRevolution.hxx".}
proc IsVPeriodic*(this: Geom_SurfaceOfRevolution): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_SurfaceOfRevolution.hxx".}
proc UIso*(this: Geom_SurfaceOfRevolution; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_SurfaceOfRevolution.hxx".}
proc VIso*(this: Geom_SurfaceOfRevolution; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_SurfaceOfRevolution.hxx".}
proc D0*(this: Geom_SurfaceOfRevolution; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                      header: "Geom_SurfaceOfRevolution.hxx".}
proc D1*(this: Geom_SurfaceOfRevolution; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc D2*(this: Geom_SurfaceOfRevolution; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                         header: "Geom_SurfaceOfRevolution.hxx".}
proc D3*(this: Geom_SurfaceOfRevolution; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_SurfaceOfRevolution.hxx".}
proc DN*(this: Geom_SurfaceOfRevolution; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_SurfaceOfRevolution.hxx".}
proc Transform*(this: var Geom_SurfaceOfRevolution; T: gp_Trsf) {.
    importcpp: "Transform", header: "Geom_SurfaceOfRevolution.hxx".}
proc Copy*(this: Geom_SurfaceOfRevolution): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_SurfaceOfRevolution.hxx".}
proc DumpJson*(this: Geom_SurfaceOfRevolution; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_SurfaceOfRevolution.hxx".}
type
  Geom_SurfaceOfRevolutionbase_type* = Geom_SweptSurface

proc get_type_name*(): cstring {.importcpp: "Geom_SurfaceOfRevolution::get_type_name(@)",
                              header: "Geom_SurfaceOfRevolution.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_SurfaceOfRevolution::get_type_descriptor(@)",
    header: "Geom_SurfaceOfRevolution.hxx".}
proc DynamicType*(this: Geom_SurfaceOfRevolution): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom_SurfaceOfRevolution.hxx".}