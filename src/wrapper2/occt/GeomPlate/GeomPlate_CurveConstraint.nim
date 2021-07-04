##  Created on: 1997-05-05
##  Created by: Joelle CHAUVET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../GeomLProp/GeomLProp_SLProps,
  ../Standard/Standard_Real, ../Standard/Standard_Transient

discard "forward decl of Adaptor3d_HCurveOnSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Law_Function"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of GeomLProp_SLProps"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of GeomPlate_CurveConstraint"
discard "forward decl of GeomPlate_CurveConstraint"
type
  Handle_GeomPlate_CurveConstraint* = handle[GeomPlate_CurveConstraint]

## ! Defines curves as constraints to be used to deform a surface.

type
  GeomPlate_CurveConstraint* {.importcpp: "GeomPlate_CurveConstraint",
                              header: "GeomPlate_CurveConstraint.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                        ## !
                                                                                                        ## Initializes
                                                                                                        ## an
                                                                                                        ## empty
                                                                                                        ## curve
                                                                                                        ## constraint
                                                                                                        ## object.


proc constructGeomPlate_CurveConstraint*(): GeomPlate_CurveConstraint {.
    constructor, importcpp: "GeomPlate_CurveConstraint(@)",
    header: "GeomPlate_CurveConstraint.hxx".}
proc constructGeomPlate_CurveConstraint*(Boundary: handle[Adaptor3d_HCurve];
                                        Order: Standard_Integer;
                                        NPt: Standard_Integer = 10;
                                        TolDist: Standard_Real = 0.0001;
                                        TolAng: Standard_Real = 0.01;
                                        TolCurv: Standard_Real = 0.1): GeomPlate_CurveConstraint {.
    constructor, importcpp: "GeomPlate_CurveConstraint(@)",
    header: "GeomPlate_CurveConstraint.hxx".}
proc SetOrder*(this: var GeomPlate_CurveConstraint; Order: Standard_Integer) {.
    importcpp: "SetOrder", header: "GeomPlate_CurveConstraint.hxx".}
proc Order*(this: GeomPlate_CurveConstraint): Standard_Integer {.noSideEffect,
    importcpp: "Order", header: "GeomPlate_CurveConstraint.hxx".}
proc NbPoints*(this: GeomPlate_CurveConstraint): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GeomPlate_CurveConstraint.hxx".}
proc SetNbPoints*(this: var GeomPlate_CurveConstraint; NewNb: Standard_Integer) {.
    importcpp: "SetNbPoints", header: "GeomPlate_CurveConstraint.hxx".}
proc SetG0Criterion*(this: var GeomPlate_CurveConstraint;
                    G0Crit: handle[Law_Function]) {.importcpp: "SetG0Criterion",
    header: "GeomPlate_CurveConstraint.hxx".}
proc SetG1Criterion*(this: var GeomPlate_CurveConstraint;
                    G1Crit: handle[Law_Function]) {.importcpp: "SetG1Criterion",
    header: "GeomPlate_CurveConstraint.hxx".}
proc SetG2Criterion*(this: var GeomPlate_CurveConstraint;
                    G2Crit: handle[Law_Function]) {.importcpp: "SetG2Criterion",
    header: "GeomPlate_CurveConstraint.hxx".}
proc G0Criterion*(this: GeomPlate_CurveConstraint; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "G0Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc G1Criterion*(this: GeomPlate_CurveConstraint; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "G1Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc G2Criterion*(this: GeomPlate_CurveConstraint; U: Standard_Real): Standard_Real {.
    noSideEffect, importcpp: "G2Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc FirstParameter*(this: GeomPlate_CurveConstraint): Standard_Real {.noSideEffect,
    importcpp: "FirstParameter", header: "GeomPlate_CurveConstraint.hxx".}
proc LastParameter*(this: GeomPlate_CurveConstraint): Standard_Real {.noSideEffect,
    importcpp: "LastParameter", header: "GeomPlate_CurveConstraint.hxx".}
proc Length*(this: GeomPlate_CurveConstraint): Standard_Real {.noSideEffect,
    importcpp: "Length", header: "GeomPlate_CurveConstraint.hxx".}
proc LPropSurf*(this: var GeomPlate_CurveConstraint; U: Standard_Real): var GeomLProp_SLProps {.
    importcpp: "LPropSurf", header: "GeomPlate_CurveConstraint.hxx".}
proc D0*(this: GeomPlate_CurveConstraint; U: Standard_Real; P: var gp_Pnt) {.
    noSideEffect, importcpp: "D0", header: "GeomPlate_CurveConstraint.hxx".}
proc D1*(this: GeomPlate_CurveConstraint; U: Standard_Real; P: var gp_Pnt;
        V1: var gp_Vec; V2: var gp_Vec) {.noSideEffect, importcpp: "D1",
                                    header: "GeomPlate_CurveConstraint.hxx".}
proc D2*(this: GeomPlate_CurveConstraint; U: Standard_Real; P: var gp_Pnt;
        V1: var gp_Vec; V2: var gp_Vec; V3: var gp_Vec; V4: var gp_Vec; V5: var gp_Vec) {.
    noSideEffect, importcpp: "D2", header: "GeomPlate_CurveConstraint.hxx".}
proc Curve3d*(this: GeomPlate_CurveConstraint): handle[Adaptor3d_HCurve] {.
    noSideEffect, importcpp: "Curve3d", header: "GeomPlate_CurveConstraint.hxx".}
proc SetCurve2dOnSurf*(this: var GeomPlate_CurveConstraint;
                      Curve2d: handle[Geom2d_Curve]) {.
    importcpp: "SetCurve2dOnSurf", header: "GeomPlate_CurveConstraint.hxx".}
proc Curve2dOnSurf*(this: GeomPlate_CurveConstraint): handle[Geom2d_Curve] {.
    noSideEffect, importcpp: "Curve2dOnSurf",
    header: "GeomPlate_CurveConstraint.hxx".}
proc SetProjectedCurve*(this: var GeomPlate_CurveConstraint;
                       Curve2d: handle[Adaptor2d_HCurve2d]; TolU: Standard_Real;
                       TolV: Standard_Real) {.importcpp: "SetProjectedCurve",
    header: "GeomPlate_CurveConstraint.hxx".}
proc ProjectedCurve*(this: GeomPlate_CurveConstraint): handle[Adaptor2d_HCurve2d] {.
    noSideEffect, importcpp: "ProjectedCurve",
    header: "GeomPlate_CurveConstraint.hxx".}
type
  GeomPlate_CurveConstraintbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomPlate_CurveConstraint::get_type_name(@)",
                              header: "GeomPlate_CurveConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomPlate_CurveConstraint::get_type_descriptor(@)",
    header: "GeomPlate_CurveConstraint.hxx".}
proc DynamicType*(this: GeomPlate_CurveConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomPlate_CurveConstraint.hxx".}