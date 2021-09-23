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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../GeomLProp/GeomLProp_SLProps,
  ../gp/gp_Pnt, ../gp/gp_Pnt2d, ../gp/gp_Vec, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient

discard "forward decl of Geom_Surface"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt2d"
discard "forward decl of GeomLProp_SLProps"
discard "forward decl of GeomPlate_PointConstraint"
discard "forward decl of GeomPlate_PointConstraint"
type
  Handle_GeomPlate_PointConstraint* = handle[GeomPlate_PointConstraint]

## ! Defines points as constraints to be used to deform a surface.

type
  GeomPlate_PointConstraint* {.importcpp: "GeomPlate_PointConstraint",
                              header: "GeomPlate_PointConstraint.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructGeomPlate_PointConstraint*(Pt: gp_Pnt; Order: Standard_Integer;
                                        TolDist: Standard_Real = 0.0001): GeomPlate_PointConstraint {.
    constructor, importcpp: "GeomPlate_PointConstraint(@)",
    header: "GeomPlate_PointConstraint.hxx".}
proc constructGeomPlate_PointConstraint*(U: Standard_Real; V: Standard_Real;
                                        Surf: handle[Geom_Surface];
                                        Order: Standard_Integer;
                                        TolDist: Standard_Real = 0.0001;
                                        TolAng: Standard_Real = 0.01;
                                        TolCurv: Standard_Real = 0.1): GeomPlate_PointConstraint {.
    constructor, importcpp: "GeomPlate_PointConstraint(@)",
    header: "GeomPlate_PointConstraint.hxx".}
proc SetOrder*(this: var GeomPlate_PointConstraint; Order: Standard_Integer) {.
    importcpp: "SetOrder", header: "GeomPlate_PointConstraint.hxx".}
proc Order*(this: GeomPlate_PointConstraint): Standard_Integer {.noSideEffect,
    importcpp: "Order", header: "GeomPlate_PointConstraint.hxx".}
proc SetG0Criterion*(this: var GeomPlate_PointConstraint; TolDist: Standard_Real) {.
    importcpp: "SetG0Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc SetG1Criterion*(this: var GeomPlate_PointConstraint; TolAng: Standard_Real) {.
    importcpp: "SetG1Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc SetG2Criterion*(this: var GeomPlate_PointConstraint; TolCurv: Standard_Real) {.
    importcpp: "SetG2Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc G0Criterion*(this: GeomPlate_PointConstraint): Standard_Real {.noSideEffect,
    importcpp: "G0Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc G1Criterion*(this: GeomPlate_PointConstraint): Standard_Real {.noSideEffect,
    importcpp: "G1Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc G2Criterion*(this: GeomPlate_PointConstraint): Standard_Real {.noSideEffect,
    importcpp: "G2Criterion", header: "GeomPlate_PointConstraint.hxx".}
proc D0*(this: GeomPlate_PointConstraint; P: var gp_Pnt) {.noSideEffect,
    importcpp: "D0", header: "GeomPlate_PointConstraint.hxx".}
proc D1*(this: GeomPlate_PointConstraint; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomPlate_PointConstraint.hxx".}
proc D2*(this: GeomPlate_PointConstraint; P: var gp_Pnt; V1: var gp_Vec; V2: var gp_Vec;
        V3: var gp_Vec; V4: var gp_Vec; V5: var gp_Vec) {.noSideEffect, importcpp: "D2",
    header: "GeomPlate_PointConstraint.hxx".}
proc HasPnt2dOnSurf*(this: GeomPlate_PointConstraint): Standard_Boolean {.
    noSideEffect, importcpp: "HasPnt2dOnSurf",
    header: "GeomPlate_PointConstraint.hxx".}
proc SetPnt2dOnSurf*(this: var GeomPlate_PointConstraint; Pnt: gp_Pnt2d) {.
    importcpp: "SetPnt2dOnSurf", header: "GeomPlate_PointConstraint.hxx".}
proc Pnt2dOnSurf*(this: GeomPlate_PointConstraint): gp_Pnt2d {.noSideEffect,
    importcpp: "Pnt2dOnSurf", header: "GeomPlate_PointConstraint.hxx".}
proc LPropSurf*(this: var GeomPlate_PointConstraint): var GeomLProp_SLProps {.
    importcpp: "LPropSurf", header: "GeomPlate_PointConstraint.hxx".}
type
  GeomPlate_PointConstraintbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomPlate_PointConstraint::get_type_name(@)",
                              header: "GeomPlate_PointConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomPlate_PointConstraint::get_type_descriptor(@)",
    header: "GeomPlate_PointConstraint.hxx".}
proc DynamicType*(this: GeomPlate_PointConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomPlate_PointConstraint.hxx".}