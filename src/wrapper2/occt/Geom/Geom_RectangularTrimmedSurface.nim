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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, Geom_BoundedSurface, ../GeomAbs/GeomAbs_Shape,
  ../Standard/Standard_Integer

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_RectangularTrimmedSurface"
discard "forward decl of Geom_RectangularTrimmedSurface"
type
  Handle_Geom_RectangularTrimmedSurface* = handle[Geom_RectangularTrimmedSurface]

## ! Describes a portion of a surface (a patch) limited
## ! by two values of the u parameter in the u
## ! parametric direction, and two values of the v
## ! parameter in the v parametric direction. The
## ! domain of the trimmed surface must be within the
## ! domain of the surface being trimmed.
## ! The trimmed surface is defined by:
## ! - the basis surface, and
## ! - the values (umin, umax) and (vmin, vmax)
## ! which limit it in the u and v parametric directions.
## ! The trimmed surface is built from a copy of the basis
## ! surface. Therefore, when the basis surface is
## ! modified the trimmed surface is not changed.
## ! Consequently, the trimmed surface does not
## ! necessarily have the same orientation as the basis surface.
## ! Warning:  The  case of surface   being trimmed is  periodic and
## ! parametrics values are outside the domain is possible.
## ! But, domain of the  trimmed surface can be translated
## ! by (n X) the period.

type
  Geom_RectangularTrimmedSurface* {.importcpp: "Geom_RectangularTrimmedSurface", header: "Geom_RectangularTrimmedSurface.hxx",
                                   bycopy.} = object of Geom_BoundedSurface ## ! The U
                                                                       ## parametric direction of the surface is oriented from U1
                                                                       ## ! to U2. The V
                                                                       ## parametric direction of the surface is oriented
                                                                       ## ! from V1 to V2.
                                                                       ## ! These two
                                                                       ## directions define the
                                                                       ## orientation of the surface
                                                                       ## ! (normal). If the surface is not periodic USense and VSense are
                                                                       ## ! not used for the
                                                                       ## construction. If the surface S is periodic in
                                                                       ## ! one direction USense and VSense give the available part of the
                                                                       ## ! surface. By default in this case the surface has the same
                                                                       ## !
                                                                       ## orientation as the basis surface S.
                                                                       ## ! The returned surface is not closed and not periodic.
                                                                       ## !
                                                                       ## ConstructionError   Raised if
                                                                       ## ! S is not periodic in the
                                                                       ## UDirection and U1 or U2 are out of the
                                                                       ## ! bounds of S.
                                                                       ## ! S is not periodic in the
                                                                       ## VDirection and V1 or V2 are out of the
                                                                       ## ! bounds of S.
                                                                       ## ! U1 = U2 or V1 = V2
                                                                       ## ! General set trim,  to implement
                                                                       ## constructors and
                                                                       ## ! others set trim.


proc constructGeom_RectangularTrimmedSurface*(S: handle[Geom_Surface];
    U1: Standard_Real; U2: Standard_Real; V1: Standard_Real; V2: Standard_Real;
    USense: Standard_Boolean = Standard_True;
    VSense: Standard_Boolean = Standard_True): Geom_RectangularTrimmedSurface {.
    constructor, importcpp: "Geom_RectangularTrimmedSurface(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc constructGeom_RectangularTrimmedSurface*(S: handle[Geom_Surface];
    Param1: Standard_Real; Param2: Standard_Real; UTrim: Standard_Boolean;
    Sense: Standard_Boolean = Standard_True): Geom_RectangularTrimmedSurface {.
    constructor, importcpp: "Geom_RectangularTrimmedSurface(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc SetTrim*(this: var Geom_RectangularTrimmedSurface; U1: Standard_Real;
             U2: Standard_Real; V1: Standard_Real; V2: Standard_Real;
             USense: Standard_Boolean = Standard_True;
             VSense: Standard_Boolean = Standard_True) {.importcpp: "SetTrim",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc SetTrim*(this: var Geom_RectangularTrimmedSurface; Param1: Standard_Real;
             Param2: Standard_Real; UTrim: Standard_Boolean;
             Sense: Standard_Boolean = Standard_True) {.importcpp: "SetTrim",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc BasisSurface*(this: Geom_RectangularTrimmedSurface): handle[Geom_Surface] {.
    noSideEffect, importcpp: "BasisSurface",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc UReverse*(this: var Geom_RectangularTrimmedSurface) {.importcpp: "UReverse",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc UReversedParameter*(this: Geom_RectangularTrimmedSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc VReverse*(this: var Geom_RectangularTrimmedSurface) {.importcpp: "VReverse",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc VReversedParameter*(this: Geom_RectangularTrimmedSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc Bounds*(this: Geom_RectangularTrimmedSurface; U1: var Standard_Real;
            U2: var Standard_Real; V1: var Standard_Real; V2: var Standard_Real) {.
    noSideEffect, importcpp: "Bounds", header: "Geom_RectangularTrimmedSurface.hxx".}
proc Continuity*(this: Geom_RectangularTrimmedSurface): GeomAbs_Shape {.
    noSideEffect, importcpp: "Continuity",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc IsUClosed*(this: Geom_RectangularTrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsUClosed",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc IsVClosed*(this: Geom_RectangularTrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsVClosed",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc IsCNu*(this: Geom_RectangularTrimmedSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_RectangularTrimmedSurface.hxx".}
proc IsCNv*(this: Geom_RectangularTrimmedSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_RectangularTrimmedSurface.hxx".}
proc IsUPeriodic*(this: Geom_RectangularTrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc UPeriod*(this: Geom_RectangularTrimmedSurface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "Geom_RectangularTrimmedSurface.hxx".}
proc IsVPeriodic*(this: Geom_RectangularTrimmedSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc VPeriod*(this: Geom_RectangularTrimmedSurface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "Geom_RectangularTrimmedSurface.hxx".}
proc UIso*(this: Geom_RectangularTrimmedSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_RectangularTrimmedSurface.hxx".}
proc VIso*(this: Geom_RectangularTrimmedSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_RectangularTrimmedSurface.hxx".}
proc D0*(this: Geom_RectangularTrimmedSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt) {.noSideEffect, importcpp: "D0",
                      header: "Geom_RectangularTrimmedSurface.hxx".}
proc D1*(this: Geom_RectangularTrimmedSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc D2*(this: Geom_RectangularTrimmedSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec) {.noSideEffect, importcpp: "D2",
                         header: "Geom_RectangularTrimmedSurface.hxx".}
proc D3*(this: Geom_RectangularTrimmedSurface; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_RectangularTrimmedSurface.hxx".}
proc DN*(this: Geom_RectangularTrimmedSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_RectangularTrimmedSurface.hxx".}
proc Transform*(this: var Geom_RectangularTrimmedSurface; T: gp_Trsf) {.
    importcpp: "Transform", header: "Geom_RectangularTrimmedSurface.hxx".}
proc TransformParameters*(this: Geom_RectangularTrimmedSurface;
                         U: var Standard_Real; V: var Standard_Real; T: gp_Trsf) {.
    noSideEffect, importcpp: "TransformParameters",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc ParametricTransformation*(this: Geom_RectangularTrimmedSurface; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc Copy*(this: Geom_RectangularTrimmedSurface): handle[Geom_Geometry] {.
    noSideEffect, importcpp: "Copy", header: "Geom_RectangularTrimmedSurface.hxx".}
proc DumpJson*(this: Geom_RectangularTrimmedSurface;
              theOStream: var Standard_OStream; theDepth: Standard_Integer = -1) {.
    noSideEffect, importcpp: "DumpJson",
    header: "Geom_RectangularTrimmedSurface.hxx".}
type
  Geom_RectangularTrimmedSurfacebase_type* = Geom_BoundedSurface

proc get_type_name*(): cstring {.importcpp: "Geom_RectangularTrimmedSurface::get_type_name(@)",
                              header: "Geom_RectangularTrimmedSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_RectangularTrimmedSurface::get_type_descriptor(@)",
    header: "Geom_RectangularTrimmedSurface.hxx".}
proc DynamicType*(this: Geom_RectangularTrimmedSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Geom_RectangularTrimmedSurface.hxx".}