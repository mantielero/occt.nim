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
  Geom_OsculatingSurface, ../GeomAbs/GeomAbs_Shape, Geom_Surface,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../GeomEvaluator/GeomEvaluator_OffsetSurface

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Geom_UndefinedDerivative"
discard "forward decl of Geom_UndefinedValue"
discard "forward decl of Geom_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of Geom_BSplineSurface"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_GTrsf2d"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_OffsetSurface"
discard "forward decl of Geom_OffsetSurface"
type
  Handle_Geom_OffsetSurface* = handle[Geom_OffsetSurface]

## ! Describes an offset surface in 3D space.
## ! An offset surface is defined by:
## ! - the basis surface to which it is parallel, and
## ! - the distance between the offset surface and its basis surface.
## ! A point on the offset surface is built by measuring the
## ! offset value along the normal vector at a point on the
## ! basis surface. This normal vector is given by the cross
## ! product D1u^D1v, where D1u and D1v are the
## ! vectors tangential to the basis surface in the u and v
## ! parametric directions at this point. The side of the
## ! basis surface on which the offset is measured
## ! depends on the sign of the offset value.
## ! A Geom_OffsetSurface surface can be
## ! self-intersecting, even if the basis surface does not
## ! self-intersect. The self-intersecting portions are not
## ! deleted at the time of construction.
## ! Warning
## ! There must be only one normal vector defined at any
## ! point on the basis surface. This must be verified by the
## ! user as no check is made at the time of construction
## ! to detect points with multiple possible normal
## ! directions (for example, the top of a conical surface).

type
  Geom_OffsetSurface* {.importcpp: "Geom_OffsetSurface",
                       header: "Geom_OffsetSurface.hxx", bycopy.} = object of Geom_Surface ##
                                                                                    ## !
                                                                                    ## Constructs
                                                                                    ## a
                                                                                    ## surface
                                                                                    ## offset
                                                                                    ## from
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## surface
                                                                                    ##
                                                                                    ## !
                                                                                    ## S,
                                                                                    ## where
                                                                                    ## Offset
                                                                                    ## is
                                                                                    ## the
                                                                                    ## distance
                                                                                    ## between
                                                                                    ## the
                                                                                    ## offset
                                                                                    ##
                                                                                    ## !
                                                                                    ## surface
                                                                                    ## and
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## surface
                                                                                    ## at
                                                                                    ## any
                                                                                    ## point.
                                                                                    ##
                                                                                    ## !
                                                                                    ## A
                                                                                    ## point
                                                                                    ## on
                                                                                    ## the
                                                                                    ## offset
                                                                                    ## surface
                                                                                    ## is
                                                                                    ## built
                                                                                    ## by
                                                                                    ## measuring
                                                                                    ##
                                                                                    ## !
                                                                                    ## the
                                                                                    ## offset
                                                                                    ## value
                                                                                    ## along
                                                                                    ## a
                                                                                    ## normal
                                                                                    ## vector
                                                                                    ## at
                                                                                    ## a
                                                                                    ## point
                                                                                    ## on
                                                                                    ##
                                                                                    ## !
                                                                                    ## S.
                                                                                    ## This
                                                                                    ## normal
                                                                                    ## vector
                                                                                    ## is
                                                                                    ## given
                                                                                    ## by
                                                                                    ## the
                                                                                    ## cross
                                                                                    ## product
                                                                                    ##
                                                                                    ## !
                                                                                    ## D1u^D1v,
                                                                                    ## where
                                                                                    ## D1u
                                                                                    ## and
                                                                                    ## D1v
                                                                                    ## are
                                                                                    ## the
                                                                                    ## vectors
                                                                                    ##
                                                                                    ## !
                                                                                    ## tangential
                                                                                    ## to
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## surface
                                                                                    ## in
                                                                                    ## the
                                                                                    ## u
                                                                                    ## and
                                                                                    ## v
                                                                                    ##
                                                                                    ## !
                                                                                    ## parametric
                                                                                    ## directions
                                                                                    ## at
                                                                                    ## this
                                                                                    ## point.
                                                                                    ## The
                                                                                    ## side
                                                                                    ## of
                                                                                    ## S
                                                                                    ## on
                                                                                    ##
                                                                                    ## !
                                                                                    ## which
                                                                                    ## the
                                                                                    ## offset
                                                                                    ## value
                                                                                    ## is
                                                                                    ## measured
                                                                                    ## is
                                                                                    ## indicated
                                                                                    ## by
                                                                                    ##
                                                                                    ## !
                                                                                    ## this
                                                                                    ## normal
                                                                                    ## vector
                                                                                    ## if
                                                                                    ## Offset
                                                                                    ## is
                                                                                    ## positive,
                                                                                    ## or
                                                                                    ## is
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## inverse
                                                                                    ## sense
                                                                                    ## if
                                                                                    ## Offset
                                                                                    ## is
                                                                                    ## negative.
                                                                                    ##
                                                                                    ## !
                                                                                    ## If
                                                                                    ## isNotCheckC0
                                                                                    ## =
                                                                                    ## TRUE
                                                                                    ## checking
                                                                                    ## if
                                                                                    ## basis
                                                                                    ## surface
                                                                                    ## has
                                                                                    ## C0-continuity
                                                                                    ##
                                                                                    ## !
                                                                                    ## is
                                                                                    ## not
                                                                                    ## made.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Warnings
                                                                                    ## :
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## The
                                                                                    ## offset
                                                                                    ## surface
                                                                                    ## is
                                                                                    ## built
                                                                                    ## with
                                                                                    ## a
                                                                                    ## copy
                                                                                    ## of
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## surface
                                                                                    ## S.
                                                                                    ## Therefore,
                                                                                    ## when
                                                                                    ## S
                                                                                    ## is
                                                                                    ## modified
                                                                                    ## the
                                                                                    ##
                                                                                    ## !
                                                                                    ## offset
                                                                                    ## surface
                                                                                    ## is
                                                                                    ## not
                                                                                    ## modified.
                                                                                    ##
                                                                                    ## !
                                                                                    ## -
                                                                                    ## No
                                                                                    ## check
                                                                                    ## is
                                                                                    ## made
                                                                                    ## at
                                                                                    ## the
                                                                                    ## time
                                                                                    ## of
                                                                                    ## construction
                                                                                    ## to
                                                                                    ##
                                                                                    ## !
                                                                                    ## detect
                                                                                    ## points
                                                                                    ## on
                                                                                    ## S
                                                                                    ## with
                                                                                    ## multiple
                                                                                    ## possible
                                                                                    ## normal
                                                                                    ## directions.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Raised
                                                                                    ## if
                                                                                    ## S
                                                                                    ## is
                                                                                    ## not
                                                                                    ## at
                                                                                    ## least
                                                                                    ## C1.
                                                                                    ##
                                                                                    ## !
                                                                                    ## Warnings
                                                                                    ## :
                                                                                    ##
                                                                                    ## !
                                                                                    ## No
                                                                                    ## check
                                                                                    ## is
                                                                                    ## done
                                                                                    ## to
                                                                                    ## verify
                                                                                    ## that
                                                                                    ## a
                                                                                    ## unique
                                                                                    ## normal
                                                                                    ## direction
                                                                                    ## is
                                                                                    ##
                                                                                    ## !
                                                                                    ## defined
                                                                                    ## at
                                                                                    ## any
                                                                                    ## point
                                                                                    ## of
                                                                                    ## the
                                                                                    ## basis
                                                                                    ## surface
                                                                                    ## S.


proc constructGeom_OffsetSurface*(S: handle[Geom_Surface]; Offset: Standard_Real;
    isNotCheckC0: Standard_Boolean = Standard_False): Geom_OffsetSurface {.
    constructor, importcpp: "Geom_OffsetSurface(@)",
    header: "Geom_OffsetSurface.hxx".}
proc SetBasisSurface*(this: var Geom_OffsetSurface; S: handle[Geom_Surface];
                     isNotCheckC0: Standard_Boolean = Standard_False) {.
    importcpp: "SetBasisSurface", header: "Geom_OffsetSurface.hxx".}
proc SetOffsetValue*(this: var Geom_OffsetSurface; D: Standard_Real) {.
    importcpp: "SetOffsetValue", header: "Geom_OffsetSurface.hxx".}
proc Offset*(this: Geom_OffsetSurface): Standard_Real {.noSideEffect,
    importcpp: "Offset", header: "Geom_OffsetSurface.hxx".}
proc BasisSurface*(this: Geom_OffsetSurface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "BasisSurface", header: "Geom_OffsetSurface.hxx".}
proc OsculatingSurface*(this: Geom_OffsetSurface): handle[Geom_OsculatingSurface] {.
    noSideEffect, importcpp: "OsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc UReverse*(this: var Geom_OffsetSurface) {.importcpp: "UReverse",
    header: "Geom_OffsetSurface.hxx".}
proc UReversedParameter*(this: Geom_OffsetSurface; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "UReversedParameter", header: "Geom_OffsetSurface.hxx".}
proc VReverse*(this: var Geom_OffsetSurface) {.importcpp: "VReverse",
    header: "Geom_OffsetSurface.hxx".}
proc VReversedParameter*(this: Geom_OffsetSurface; V: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "VReversedParameter", header: "Geom_OffsetSurface.hxx".}
proc Bounds*(this: Geom_OffsetSurface; U1: var Standard_Real; U2: var Standard_Real;
            V1: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Bounds", header: "Geom_OffsetSurface.hxx".}
proc Continuity*(this: Geom_OffsetSurface): GeomAbs_Shape {.noSideEffect,
    importcpp: "Continuity", header: "Geom_OffsetSurface.hxx".}
proc IsCNu*(this: Geom_OffsetSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNu", header: "Geom_OffsetSurface.hxx".}
proc IsCNv*(this: Geom_OffsetSurface; N: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "IsCNv", header: "Geom_OffsetSurface.hxx".}
proc IsUClosed*(this: Geom_OffsetSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUClosed", header: "Geom_OffsetSurface.hxx".}
proc IsVClosed*(this: Geom_OffsetSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVClosed", header: "Geom_OffsetSurface.hxx".}
proc IsUPeriodic*(this: Geom_OffsetSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsUPeriodic", header: "Geom_OffsetSurface.hxx".}
proc UPeriod*(this: Geom_OffsetSurface): Standard_Real {.noSideEffect,
    importcpp: "UPeriod", header: "Geom_OffsetSurface.hxx".}
proc IsVPeriodic*(this: Geom_OffsetSurface): Standard_Boolean {.noSideEffect,
    importcpp: "IsVPeriodic", header: "Geom_OffsetSurface.hxx".}
proc VPeriod*(this: Geom_OffsetSurface): Standard_Real {.noSideEffect,
    importcpp: "VPeriod", header: "Geom_OffsetSurface.hxx".}
proc UIso*(this: Geom_OffsetSurface; U: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "UIso", header: "Geom_OffsetSurface.hxx".}
proc VIso*(this: Geom_OffsetSurface; V: Standard_Real): handle[Geom_Curve] {.
    noSideEffect, importcpp: "VIso", header: "Geom_OffsetSurface.hxx".}
proc D0*(this: Geom_OffsetSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "Geom_OffsetSurface.hxx".}
proc D1*(this: Geom_OffsetSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                      header: "Geom_OffsetSurface.hxx".}
proc D2*(this: Geom_OffsetSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec; D2UV: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "Geom_OffsetSurface.hxx".}
proc D3*(this: Geom_OffsetSurface; U: Standard_Real; V: Standard_Real; P: var gp_Pnt;
        D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        D2UV: var gp_Vec; D3U: var gp_Vec; D3V: var gp_Vec; D3UUV: var gp_Vec;
        D3UVV: var gp_Vec) {.noSideEffect, importcpp: "D3",
                          header: "Geom_OffsetSurface.hxx".}
proc DN*(this: Geom_OffsetSurface; U: Standard_Real; V: Standard_Real;
        Nu: Standard_Integer; Nv: Standard_Integer): gp_Vec {.noSideEffect,
    importcpp: "DN", header: "Geom_OffsetSurface.hxx".}
proc Transform*(this: var Geom_OffsetSurface; T: gp_Trsf) {.importcpp: "Transform",
    header: "Geom_OffsetSurface.hxx".}
proc TransformParameters*(this: Geom_OffsetSurface; U: var Standard_Real;
                         V: var Standard_Real; T: gp_Trsf) {.noSideEffect,
    importcpp: "TransformParameters", header: "Geom_OffsetSurface.hxx".}
proc ParametricTransformation*(this: Geom_OffsetSurface; T: gp_Trsf): gp_GTrsf2d {.
    noSideEffect, importcpp: "ParametricTransformation",
    header: "Geom_OffsetSurface.hxx".}
proc Copy*(this: Geom_OffsetSurface): handle[Geom_Geometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_OffsetSurface.hxx".}
proc Surface*(this: Geom_OffsetSurface): handle[Geom_Surface] {.noSideEffect,
    importcpp: "Surface", header: "Geom_OffsetSurface.hxx".}
proc UOsculatingSurface*(this: Geom_OffsetSurface; U: Standard_Real;
                        V: Standard_Real; IsOpposite: var Standard_Boolean;
                        UOsculSurf: var handle[Geom_BSplineSurface]): Standard_Boolean {.
    noSideEffect, importcpp: "UOsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc VOsculatingSurface*(this: Geom_OffsetSurface; U: Standard_Real;
                        V: Standard_Real; IsOpposite: var Standard_Boolean;
                        VOsculSurf: var handle[Geom_BSplineSurface]): Standard_Boolean {.
    noSideEffect, importcpp: "VOsculatingSurface", header: "Geom_OffsetSurface.hxx".}
proc GetBasisSurfContinuity*(this: Geom_OffsetSurface): GeomAbs_Shape {.
    noSideEffect, importcpp: "GetBasisSurfContinuity",
    header: "Geom_OffsetSurface.hxx".}
proc DumpJson*(this: Geom_OffsetSurface; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Geom_OffsetSurface.hxx".}
type
  Geom_OffsetSurfacebase_type* = Geom_Surface

proc get_type_name*(): cstring {.importcpp: "Geom_OffsetSurface::get_type_name(@)",
                              header: "Geom_OffsetSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom_OffsetSurface::get_type_descriptor(@)",
    header: "Geom_OffsetSurface.hxx".}
proc DynamicType*(this: Geom_OffsetSurface): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_OffsetSurface.hxx".}