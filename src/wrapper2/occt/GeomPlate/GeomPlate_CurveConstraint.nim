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
  HandleGeomPlateCurveConstraint* = Handle[GeomPlateCurveConstraint]

## ! Defines curves as constraints to be used to deform a surface.

type
  GeomPlateCurveConstraint* {.importcpp: "GeomPlate_CurveConstraint",
                             header: "GeomPlate_CurveConstraint.hxx", bycopy.} = object of StandardTransient ##
                                                                                                      ## !
                                                                                                      ## Initializes
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## curve
                                                                                                      ## constraint
                                                                                                      ## object.


proc constructGeomPlateCurveConstraint*(): GeomPlateCurveConstraint {.constructor,
    importcpp: "GeomPlate_CurveConstraint(@)",
    header: "GeomPlate_CurveConstraint.hxx".}
proc constructGeomPlateCurveConstraint*(boundary: Handle[Adaptor3dHCurve];
                                       order: StandardInteger;
                                       nPt: StandardInteger = 10;
                                       tolDist: StandardReal = 0.0001;
                                       tolAng: StandardReal = 0.01;
                                       tolCurv: StandardReal = 0.1): GeomPlateCurveConstraint {.
    constructor, importcpp: "GeomPlate_CurveConstraint(@)",
    header: "GeomPlate_CurveConstraint.hxx".}
proc setOrder*(this: var GeomPlateCurveConstraint; order: StandardInteger) {.
    importcpp: "SetOrder", header: "GeomPlate_CurveConstraint.hxx".}
proc order*(this: GeomPlateCurveConstraint): StandardInteger {.noSideEffect,
    importcpp: "Order", header: "GeomPlate_CurveConstraint.hxx".}
proc nbPoints*(this: GeomPlateCurveConstraint): StandardInteger {.noSideEffect,
    importcpp: "NbPoints", header: "GeomPlate_CurveConstraint.hxx".}
proc setNbPoints*(this: var GeomPlateCurveConstraint; newNb: StandardInteger) {.
    importcpp: "SetNbPoints", header: "GeomPlate_CurveConstraint.hxx".}
proc setG0Criterion*(this: var GeomPlateCurveConstraint; g0Crit: Handle[LawFunction]) {.
    importcpp: "SetG0Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc setG1Criterion*(this: var GeomPlateCurveConstraint; g1Crit: Handle[LawFunction]) {.
    importcpp: "SetG1Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc setG2Criterion*(this: var GeomPlateCurveConstraint; g2Crit: Handle[LawFunction]) {.
    importcpp: "SetG2Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc g0Criterion*(this: GeomPlateCurveConstraint; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "G0Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc g1Criterion*(this: GeomPlateCurveConstraint; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "G1Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc g2Criterion*(this: GeomPlateCurveConstraint; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "G2Criterion", header: "GeomPlate_CurveConstraint.hxx".}
proc firstParameter*(this: GeomPlateCurveConstraint): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "GeomPlate_CurveConstraint.hxx".}
proc lastParameter*(this: GeomPlateCurveConstraint): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "GeomPlate_CurveConstraint.hxx".}
proc length*(this: GeomPlateCurveConstraint): StandardReal {.noSideEffect,
    importcpp: "Length", header: "GeomPlate_CurveConstraint.hxx".}
proc lPropSurf*(this: var GeomPlateCurveConstraint; u: StandardReal): var GeomLPropSLProps {.
    importcpp: "LPropSurf", header: "GeomPlate_CurveConstraint.hxx".}
proc d0*(this: GeomPlateCurveConstraint; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "GeomPlate_CurveConstraint.hxx".}
proc d1*(this: GeomPlateCurveConstraint; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D1",
                      header: "GeomPlate_CurveConstraint.hxx".}
proc d2*(this: GeomPlateCurveConstraint; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec; v4: var GpVec; v5: var GpVec) {.noSideEffect,
    importcpp: "D2", header: "GeomPlate_CurveConstraint.hxx".}
proc curve3d*(this: GeomPlateCurveConstraint): Handle[Adaptor3dHCurve] {.
    noSideEffect, importcpp: "Curve3d", header: "GeomPlate_CurveConstraint.hxx".}
proc setCurve2dOnSurf*(this: var GeomPlateCurveConstraint;
                      curve2d: Handle[Geom2dCurve]) {.
    importcpp: "SetCurve2dOnSurf", header: "GeomPlate_CurveConstraint.hxx".}
proc curve2dOnSurf*(this: GeomPlateCurveConstraint): Handle[Geom2dCurve] {.
    noSideEffect, importcpp: "Curve2dOnSurf",
    header: "GeomPlate_CurveConstraint.hxx".}
proc setProjectedCurve*(this: var GeomPlateCurveConstraint;
                       curve2d: Handle[Adaptor2dHCurve2d]; tolU: StandardReal;
                       tolV: StandardReal) {.importcpp: "SetProjectedCurve",
    header: "GeomPlate_CurveConstraint.hxx".}
proc projectedCurve*(this: GeomPlateCurveConstraint): Handle[Adaptor2dHCurve2d] {.
    noSideEffect, importcpp: "ProjectedCurve",
    header: "GeomPlate_CurveConstraint.hxx".}
type
  GeomPlateCurveConstraintbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "GeomPlate_CurveConstraint::get_type_name(@)",
                            header: "GeomPlate_CurveConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomPlate_CurveConstraint::get_type_descriptor(@)",
    header: "GeomPlate_CurveConstraint.hxx".}
proc dynamicType*(this: GeomPlateCurveConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomPlate_CurveConstraint.hxx".}

