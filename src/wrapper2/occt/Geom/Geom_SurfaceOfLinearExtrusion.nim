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
  ../Standard/Standard, ../Standard/Standard_Type, Geom_SweptSurface,
  ../GeomEvaluator/GeomEvaluator_SurfaceOfExtrusion, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer

discard "forward decl of Standard_RangeError"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_SurfaceOfLinearExtrusion"
discard "forward decl of Geom_SurfaceOfLinearExtrusion"
type
  Handle_Geom_SurfaceOfLinearExtrusion* = handle[Geom_SurfaceOfLinearExtrusion]

## ! Describes a surface of linear extrusion ("extruded
## ! surface"), e.g. a generalized cylinder. Such a surface
## ! is obtained by sweeping a curve (called the "extruded
## ! curve" or "basis") in a given direction (referred to as
## ! the "direction of extrusion" and defined by a unit vector).
## ! The u parameter is along the extruded curve. The v
## ! parameter is along the direction of extrusion.
## ! The parameter range for the u parameter is defined
## ! by the reference curve.
## ! The parameter range for the v parameter is ] -
## ! infinity, + infinity [.
## ! The position of the curve gives the origin of the v parameter.
## ! The surface is "CN" in the v parametric direction.
## ! The form of a surface of linear extrusion is generally a
## ! ruled surface (GeomAbs_RuledForm). It can be:
## ! - a cylindrical surface, if the extruded curve is a circle,
## ! or a trimmed circle, with an axis parallel to the
## ! direction of extrusion (GeomAbs_CylindricalForm), or
## ! - a planar surface, if the extruded curve is a line
## ! (GeomAbs_PlanarForm).
## ! Note: The surface of extrusion is built from a copy of
## ! the original basis curve, so the original curve is not
## ! modified when the surface is modified.
## ! Warning
## ! Degenerate surfaces are not detected. A degenerate
## ! surface is obtained, for example, when the extruded
## ! curve is a line and the direction of extrusion is parallel
## ! to that line.

type
  Geom_SurfaceOfLinearExtrusion* {.importcpp: "Geom_SurfaceOfLinearExtrusion",
                                  header: "Geom_SurfaceOfLinearExtrusion.hxx",
                                  bycopy.} = object of Geom_SweptSurface ## ! V is the direction of extrusion.
                                                                    ## ! C is the extruded curve.
                                                                    ## ! The form of a
                                                                    ## SurfaceOfLinearExtrusion can be :
                                                                    ## ! . ruled surface (RuledForm),
                                                                    ## ! . a cylindrical surface if the extruded curve is a circle or
                                                                    ## ! a trimmed circle
                                                                    ## (CylindricalForm),
                                                                    ## ! . a plane surface if the extruded curve is a Line
                                                                    ## (PlanarForm).
                                                                    ## ! Warnings :
                                                                    ## ! Degenerated surface cases are not detected. For example if the
                                                                    ## ! curve C is a line and V is parallel to the direction of this
                                                                    ## ! line.


proc constructGeom_SurfaceOfLinearExtrusion*(C: handle[Geom_Curve]; V: gp_Dir): Geom_SurfaceOfLinearExtrusion {.
    constructor, importcpp: "Geom_SurfaceOfLinearExtrusion(@)",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc SetDirection*(this: var Geom_SurfaceOfLinearExtrusion; V: gp_Dir) {.
    importcpp: "SetDirection", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc SetBasisCurve*(this: var Geom_SurfaceOfLinearExtrusion; C: handle[Geom_Curve]) {.
    importcpp: "SetBasisCurve", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc UReverse*(this: var Geom_SurfaceOfLinearExtrusion) {.importcpp: "UReverse",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc UReversedParameter*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc VReverse*(this: var Geom_SurfaceOfLinearExtrusion) {.importcpp: "VReverse",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc VReversedParameter*(this: Geom_SurfaceOfLinearExtrusion; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc Bounds*(this: Geom_SurfaceOfLinearExtrusion; U1: var Standard_Real;
            U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc IsUClosed*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc IsVClosed*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc IsCNu*(this: Geom_SurfaceOfLinearExtrusion; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc IsCNv*(this: Geom_SurfaceOfLinearExtrusion; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc IsUPeriodic*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc IsVPeriodic*(this: Geom_SurfaceOfLinearExtrusion): Standard_Boolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc UIso*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc VIso*(this: Geom_SurfaceOfLinearExtrusion; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc D0*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                      header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc D1*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc D2*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                         header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc D3*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc DN*(this: Geom_SurfaceOfLinearExtrusion; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc Transform*(this: var Geom_SurfaceOfLinearExtrusion; T: gp_Trsf) {.
    importcpp: "Transform", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc TransformParameters*(this: Geom_SurfaceOfLinearExtrusion;
                         U: var Standard_Real; V: var Standard_Real; T: gp_Trsf) {.
    noSideEffect, importcpp: "TransformParameters",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc ParametricTransformation*(this: Geom_SurfaceOfLinearExtrusion; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc Copy*(this: Geom_SurfaceOfLinearExtrusion): handle[Geom_Geometry] {.
    noSideEffect, importcpp: "Copy", header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc DumpJson*(this: Geom_SurfaceOfLinearExtrusion;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
type
  Geom_SurfaceOfLinearExtrusionbase_type* = Geom_SweptSurface

proc get_type_name*(): cstring {.importcpp: "Geom_SurfaceOfLinearExtrusion::get_type_name(@)",
                              header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_SurfaceOfLinearExtrusion::get_type_descriptor(@)",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}
proc DynamicType*(this: Geom_SurfaceOfLinearExtrusion): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom_SurfaceOfLinearExtrusion.hxx".}