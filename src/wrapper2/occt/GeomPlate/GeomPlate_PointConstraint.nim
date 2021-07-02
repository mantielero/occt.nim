##  Created on: 1997-05-05
##  Created by: Jerome LEMONIER
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GeomLProp_SLProps"
discard "forward decl of GeomPlate_PointConstraint"
discard "forward decl of GeomPlate_PointConstraint"
type
  HandleGeomPlatePointConstraint* = Handle[GeomPlatePointConstraint]

## ! Defines points as constraints to be used to deform a surface.

type
  GeomPlatePointConstraint* {.importcpp: "GeomPlate_PointConstraint",
                             header: "GeomPlate_PointConstraint.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Constructs
                                                                                                      ## a
                                                                                                      ## point
                                                                                                      ## constraint
                                                                                                      ## object
                                                                                                      ## defined
                                                                                                      ## by
                                                                                                      ## Pt,
                                                                                                      ## a
                                                                                                      ## 3D
                                                                                                      ## point
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Order
                                                                                                      ## gives
                                                                                                      ## the
                                                                                                      ## order
                                                                                                      ## of
                                                                                                      ## constraint,
                                                                                                      ## one
                                                                                                      ## of:
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## -1
                                                                                                      ## i.e.
                                                                                                      ## none,
                                                                                                      ## or
                                                                                                      ## 0
                                                                                                      ## i.e.G0
                                                                                                      ## when
                                                                                                      ## assigned
                                                                                                      ## to
                                                                                                      ## Pt
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## -
                                                                                                      ## -1
                                                                                                      ## i.e.
                                                                                                      ## none,
                                                                                                      ## 0
                                                                                                      ## i.e.
                                                                                                      ## G0,
                                                                                                      ## 1
                                                                                                      ## i.e.
                                                                                                      ## G1,
                                                                                                      ## 2
                                                                                                      ## i.e.
                                                                                                      ## G2
                                                                                                      ## when
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## assigned
                                                                                                      ## to
                                                                                                      ## U,
                                                                                                      ## V
                                                                                                      ## and
                                                                                                      ## Surf.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## In
                                                                                                      ## this
                                                                                                      ## constructor,
                                                                                                      ## only
                                                                                                      ## TolDist
                                                                                                      ## is
                                                                                                      ## given.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Distance
                                                                                                      ## tolerance
                                                                                                      ## represents
                                                                                                      ## the
                                                                                                      ## greatest
                                                                                                      ## distance
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## allowed
                                                                                                      ## between
                                                                                                      ## the
                                                                                                      ## constraint
                                                                                                      ## and
                                                                                                      ## the
                                                                                                      ## target
                                                                                                      ## surface.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Angular
                                                                                                      ## tolerance
                                                                                                      ## represents
                                                                                                      ## the
                                                                                                      ## largest
                                                                                                      ## angle
                                                                                                      ## allowed
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## between
                                                                                                      ## the
                                                                                                      ## constraint
                                                                                                      ## and
                                                                                                      ## the
                                                                                                      ## target
                                                                                                      ## surface.
                                                                                                      ## Curvature
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## tolerance
                                                                                                      ## represents
                                                                                                      ## the
                                                                                                      ## greatest
                                                                                                      ## difference
                                                                                                      ## in
                                                                                                      ## curvature
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## allowed
                                                                                                      ## between
                                                                                                      ## the
                                                                                                      ## constraint
                                                                                                      ## and
                                                                                                      ## the
                                                                                                      ## target
                                                                                                      ## surface.
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## Raises
                                                                                                      ## ConstructionError
                                                                                                      ## if
                                                                                                      ## Order
                                                                                                      ## is
                                                                                                      ## not
                                                                                                      ## 0
                                                                                                      ## or
                                                                                                      ## -1


proc constructGeomPlatePointConstraint*(pt: GpPnt; order: StandardInteger;
                                       tolDist: StandardReal = 0.0001): GeomPlatePointConstraint {.
    constructor, importcpp: "GeomPlate_PointConstraint(@)",
    header: "GeomPlate_PointConstraint.hxx".}
proc constructGeomPlatePointConstraint*(u: StandardReal; v: StandardReal;
                                       surf: Handle[GeomSurface];
                                       order: StandardInteger;
                                       tolDist: StandardReal = 0.0001;
                                       tolAng: StandardReal = 0.01;
                                       tolCurv: StandardReal = 0.1): GeomPlatePointConstraint {.
    constructor, importcpp: "GeomPlate_PointConstraint(@)",
    header: "GeomPlate_PointConstraint.hxx".}
proc setOrder*(this: var GeomPlatePointConstraint; order: StandardInteger) {.
    importcpp: "SetOrder", header: "GeomPlate_PointConstraint.hxx".}
proc order*(this: GeomPlatePointConstraint): StandardInteger {.noSideEffect,
    importcpp: "Order", header: "GeomPlate_PointConstraint.hxx".}
proc setG0Criterion*(this: var GeomPlatePointConstraint; tolDist: StandardReal) {.
    importcpp: "SetG0Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc setG1Criterion*(this: var GeomPlatePointConstraint; tolAng: StandardReal) {.
    importcpp: "SetG1Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc setG2Criterion*(this: var GeomPlatePointConstraint; tolCurv: StandardReal) {.
    importcpp: "SetG2Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc g0Criterion*(this: GeomPlatePointConstraint): StandardReal {.noSideEffect,
    importcpp: "G0Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc g1Criterion*(this: GeomPlatePointConstraint): StandardReal {.noSideEffect,
    importcpp: "G1Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc g2Criterion*(this: GeomPlatePointConstraint): StandardReal {.noSideEffect,
    importcpp: "G2Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc d0*(this: GeomPlatePointConstraint; p: var GpPnt) {.noSideEffect, importcpp: "D0",
    header: "GeomPlate_PointConstraint.hxx".}
proc d1*(this: GeomPlatePointConstraint; p: var GpPnt; v1: var GpVec; v2: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "GeomPlate_PointConstraint.hxx".}
proc d2*(this: GeomPlatePointConstraint; p: var GpPnt; v1: var GpVec; v2: var GpVec;
        v3: var GpVec; v4: var GpVec; v5: var GpVec) {.noSideEffect, importcpp: "D2",
    header: "GeomPlate_PointConstraint.hxx".}
proc hasPnt2dOnSurf*(this: GeomPlatePointConstraint): StandardBoolean {.
    noSideEffect, importcpp: "HasPnt2dOnSurf",
    header: "GeomPlate_PointConstraint.hxx".}
proc setPnt2dOnSurf*(this: var GeomPlatePointConstraint; pnt: GpPnt2d) {.
    importcpp: "SetPnt2dOnSurf", header: "GeomPlate_PointConstraint.hxx".}
proc pnt2dOnSurf*(this: GeomPlatePointConstraint): GpPnt2d {.noSideEffect,
    importcpp: "Pnt2dOnSurf", header: "GeomPlate_PointConstraint.hxx".}
proc lPropSurf*(this: var GeomPlatePointConstraint): var GeomLPropSLProps {.
    importcpp: "LPropSurf", header: "GeomPlate_PointConstraint.hxx".}
type
  GeomPlatePointConstraintbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomPlate_PointConstraint::get_type_name(@)",
                            header: "GeomPlate_PointConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomPlate_PointConstraint::get_type_descriptor(@)",
    header: "GeomPlate_PointConstraint.hxx".}
proc dynamicType*(this: GeomPlatePointConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomPlate_PointConstraint.hxx".}

