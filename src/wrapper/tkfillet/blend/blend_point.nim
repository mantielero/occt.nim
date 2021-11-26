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

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  BlendPoint* {.importcpp: "Blend_Point", header: "Blend_Point.hxx", bycopy.} = object


proc newBlendPoint*(): BlendPoint {.cdecl, constructor, importcpp: "Blend_Point(@)",
                                 dynlib: tkfillet.}
proc newBlendPoint*(pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; tg1: Vec; tg2: Vec; tg12d: Vec2d; tg22d: Vec2d): BlendPoint {.
    cdecl, constructor, importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pts: Pnt; ptc: Pnt; param: cfloat; u: cfloat; v: cfloat; w: cfloat;
                   tgs: Vec; tgc: Vec; tg2d: Vec2d): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pts: Pnt; ptc: Pnt; param: cfloat; u: cfloat; v: cfloat; w: cfloat): BlendPoint {.
    cdecl, constructor, importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc: cfloat; tg1: Vec; tg2: Vec; tg12d: Vec2d; tg22d: Vec2d): BlendPoint {.
    cdecl, constructor, importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc: cfloat): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc1: cfloat; pc2: cfloat; tg1: Vec; tg2: Vec; tg12d: Vec2d;
                   tg22d: Vec2d): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc newBlendPoint*(pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc1: cfloat; pc2: cfloat): BlendPoint {.cdecl,
    constructor, importcpp: "Blend_Point(@)", dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; tg1: Vec; tg2: Vec; tg12d: Vec2d;
              tg22d: Vec2d) {.cdecl, importcpp: "SetValue", dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat) {.cdecl, importcpp: "SetValue",
    dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pts: Pnt; ptc: Pnt; param: cfloat; u: cfloat;
              v: cfloat; w: cfloat; tgs: Vec; tgc: Vec; tg2d: Vec2d) {.cdecl,
    importcpp: "SetValue", dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pts: Pnt; ptc: Pnt; param: cfloat; u: cfloat;
              v: cfloat; w: cfloat) {.cdecl, importcpp: "SetValue", dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc: cfloat; tg1: Vec; tg2: Vec;
              tg12d: Vec2d; tg22d: Vec2d) {.cdecl, importcpp: "SetValue",
                                        dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc1: cfloat; pc2: cfloat; tg1: Vec;
              tg2: Vec; tg12d: Vec2d; tg22d: Vec2d) {.cdecl, importcpp: "SetValue",
    dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc1: cfloat; pc2: cfloat) {.cdecl,
    importcpp: "SetValue", dynlib: tkfillet.}
proc setValue*(this: var BlendPoint; pt1: Pnt; pt2: Pnt; param: cfloat; pc1: cfloat;
              pc2: cfloat) {.cdecl, importcpp: "SetValue", dynlib: tkfillet.}
proc setParameter*(this: var BlendPoint; param: cfloat) {.cdecl,
    importcpp: "SetParameter", dynlib: tkfillet.}
proc parameter*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Parameter", dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc pointOnS1*(this: BlendPoint): Pnt {.noSideEffect, cdecl, importcpp: "PointOnS1",
                                     dynlib: tkfillet.}
proc pointOnS2*(this: BlendPoint): Pnt {.noSideEffect, cdecl, importcpp: "PointOnS2",
                                     dynlib: tkfillet.}
proc parametersOnS1*(this: BlendPoint; u: var cfloat; v: var cfloat) {.noSideEffect,
    cdecl, importcpp: "ParametersOnS1", dynlib: tkfillet.}
proc parametersOnS2*(this: BlendPoint; u: var cfloat; v: var cfloat) {.noSideEffect,
    cdecl, importcpp: "ParametersOnS2", dynlib: tkfillet.}
proc tangentOnS1*(this: BlendPoint): Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnS1", dynlib: tkfillet.}
proc tangentOnS2*(this: BlendPoint): Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnS2", dynlib: tkfillet.}
proc tangent2dOnS1*(this: BlendPoint): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", dynlib: tkfillet.}
proc tangent2dOnS2*(this: BlendPoint): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", dynlib: tkfillet.}
proc pointOnS*(this: BlendPoint): Pnt {.noSideEffect, cdecl, importcpp: "PointOnS",
                                    dynlib: tkfillet.}
proc pointOnC*(this: BlendPoint): Pnt {.noSideEffect, cdecl, importcpp: "PointOnC",
                                    dynlib: tkfillet.}
proc parametersOnS*(this: BlendPoint; u: var cfloat; v: var cfloat) {.noSideEffect, cdecl,
    importcpp: "ParametersOnS", dynlib: tkfillet.}
proc parameterOnC*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", dynlib: tkfillet.}
proc tangentOnS*(this: BlendPoint): Vec {.noSideEffect, cdecl,
                                      importcpp: "TangentOnS", dynlib: tkfillet.}
proc tangentOnC*(this: BlendPoint): Vec {.noSideEffect, cdecl,
                                      importcpp: "TangentOnC", dynlib: tkfillet.}
proc tangent2d*(this: BlendPoint): Vec2d {.noSideEffect, cdecl,
                                       importcpp: "Tangent2d", dynlib: tkfillet.}
proc pointOnC1*(this: BlendPoint): Pnt {.noSideEffect, cdecl, importcpp: "PointOnC1",
                                     dynlib: tkfillet.}
proc pointOnC2*(this: BlendPoint): Pnt {.noSideEffect, cdecl, importcpp: "PointOnC2",
                                     dynlib: tkfillet.}
proc parameterOnC1*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC1", dynlib: tkfillet.}
proc parameterOnC2*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC2", dynlib: tkfillet.}
proc tangentOnC1*(this: BlendPoint): Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnC1", dynlib: tkfillet.}
proc tangentOnC2*(this: BlendPoint): Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnC2", dynlib: tkfillet.}