##  Created on: 1993-12-02
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../gp/gp_Vec,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean, ../gp/gp_Vec2d

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  Blend_Point* {.importcpp: "Blend_Point", header: "Blend_Point.hxx", bycopy.} = object


proc constructBlend_Point*(): Blend_Point {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
                          U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
                          V2: Standard_Real; Tg1: gp_Vec; Tg2: gp_Vec;
                          Tg12d: gp_Vec2d; Tg22d: gp_Vec2d): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
                          U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
                          V2: Standard_Real): Blend_Point {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pts: gp_Pnt; Ptc: gp_Pnt; Param: Standard_Real;
                          U: Standard_Real; V: Standard_Real; W: Standard_Real;
                          Tgs: gp_Vec; Tgc: gp_Vec; Tg2d: gp_Vec2d): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pts: gp_Pnt; Ptc: gp_Pnt; Param: Standard_Real;
                          U: Standard_Real; V: Standard_Real; W: Standard_Real): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
                          U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
                          V2: Standard_Real; PC: Standard_Real; Tg1: gp_Vec;
                          Tg2: gp_Vec; Tg12d: gp_Vec2d; Tg22d: gp_Vec2d): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
                          U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
                          V2: Standard_Real; PC: Standard_Real): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
                          U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
                          V2: Standard_Real; PC1: Standard_Real; PC2: Standard_Real;
                          Tg1: gp_Vec; Tg2: gp_Vec; Tg12d: gp_Vec2d; Tg22d: gp_Vec2d): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlend_Point*(Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
                          U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
                          V2: Standard_Real; PC1: Standard_Real; PC2: Standard_Real): Blend_Point {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
              V2: Standard_Real; Tg1: gp_Vec; Tg2: gp_Vec; Tg12d: gp_Vec2d;
              Tg22d: gp_Vec2d) {.importcpp: "SetValue", header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
              V2: Standard_Real) {.importcpp: "SetValue", header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pts: gp_Pnt; Ptc: gp_Pnt; Param: Standard_Real;
              U: Standard_Real; V: Standard_Real; W: Standard_Real; Tgs: gp_Vec;
              Tgc: gp_Vec; Tg2d: gp_Vec2d) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pts: gp_Pnt; Ptc: gp_Pnt; Param: Standard_Real;
              U: Standard_Real; V: Standard_Real; W: Standard_Real) {.
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
              V2: Standard_Real; PC: Standard_Real; Tg1: gp_Vec; Tg2: gp_Vec;
              Tg12d: gp_Vec2d; Tg22d: gp_Vec2d) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
              V2: Standard_Real; PC: Standard_Real) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
              V2: Standard_Real; PC1: Standard_Real; PC2: Standard_Real; Tg1: gp_Vec;
              Tg2: gp_Vec; Tg12d: gp_Vec2d; Tg22d: gp_Vec2d) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              U1: Standard_Real; V1: Standard_Real; U2: Standard_Real;
              V2: Standard_Real; PC1: Standard_Real; PC2: Standard_Real) {.
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc SetValue*(this: var Blend_Point; Pt1: gp_Pnt; Pt2: gp_Pnt; Param: Standard_Real;
              PC1: Standard_Real; PC2: Standard_Real) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc SetParameter*(this: var Blend_Point; Param: Standard_Real) {.
    importcpp: "SetParameter", header: "Blend_Point.hxx".}
proc Parameter*(this: Blend_Point): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Blend_Point.hxx".}
proc IsTangencyPoint*(this: Blend_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_Point.hxx".}
proc PointOnS1*(this: Blend_Point): gp_Pnt {.noSideEffect, importcpp: "PointOnS1",
    header: "Blend_Point.hxx".}
proc PointOnS2*(this: Blend_Point): gp_Pnt {.noSideEffect, importcpp: "PointOnS2",
    header: "Blend_Point.hxx".}
proc ParametersOnS1*(this: Blend_Point; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "ParametersOnS1", header: "Blend_Point.hxx".}
proc ParametersOnS2*(this: Blend_Point; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "ParametersOnS2", header: "Blend_Point.hxx".}
proc TangentOnS1*(this: Blend_Point): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "Blend_Point.hxx".}
proc TangentOnS2*(this: Blend_Point): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "Blend_Point.hxx".}
proc Tangent2dOnS1*(this: Blend_Point): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "Blend_Point.hxx".}
proc Tangent2dOnS2*(this: Blend_Point): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "Blend_Point.hxx".}
proc PointOnS*(this: Blend_Point): gp_Pnt {.noSideEffect, importcpp: "PointOnS",
                                        header: "Blend_Point.hxx".}
proc PointOnC*(this: Blend_Point): gp_Pnt {.noSideEffect, importcpp: "PointOnC",
                                        header: "Blend_Point.hxx".}
proc ParametersOnS*(this: Blend_Point; U: var Standard_Real; V: var Standard_Real) {.
    noSideEffect, importcpp: "ParametersOnS", header: "Blend_Point.hxx".}
proc ParameterOnC*(this: Blend_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnC", header: "Blend_Point.hxx".}
proc TangentOnS*(this: Blend_Point): gp_Vec {.noSideEffect, importcpp: "TangentOnS",
    header: "Blend_Point.hxx".}
proc TangentOnC*(this: Blend_Point): gp_Vec {.noSideEffect, importcpp: "TangentOnC",
    header: "Blend_Point.hxx".}
proc Tangent2d*(this: Blend_Point): gp_Vec2d {.noSideEffect, importcpp: "Tangent2d",
    header: "Blend_Point.hxx".}
proc PointOnC1*(this: Blend_Point): gp_Pnt {.noSideEffect, importcpp: "PointOnC1",
    header: "Blend_Point.hxx".}
proc PointOnC2*(this: Blend_Point): gp_Pnt {.noSideEffect, importcpp: "PointOnC2",
    header: "Blend_Point.hxx".}
proc ParameterOnC1*(this: Blend_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnC1", header: "Blend_Point.hxx".}
proc ParameterOnC2*(this: Blend_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnC2", header: "Blend_Point.hxx".}
proc TangentOnC1*(this: Blend_Point): gp_Vec {.noSideEffect,
    importcpp: "TangentOnC1", header: "Blend_Point.hxx".}
proc TangentOnC2*(this: Blend_Point): gp_Vec {.noSideEffect,
    importcpp: "TangentOnC2", header: "Blend_Point.hxx".}