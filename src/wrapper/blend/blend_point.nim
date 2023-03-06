import ../gp/gp_types
import blend_types





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



proc newBlendPoint*(): BlendPoint {.cdecl, constructor, importcpp: "Blend_Point(@)",
                                 header: "Blend_Point.hxx".}
proc newBlendPoint*(pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; tg1: gp_Vec; tg2: gp_Vec; tg12d: Vec2dObj; tg22d: Vec2dObj): BlendPoint {.
    cdecl, constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pts: gp_Pnt; ptc: gp_Pnt; param: cfloat; u: cfloat; v: cfloat; w: cfloat;
                   tgs: gp_Vec; tgc: gp_Vec; tg2d: Vec2dObj): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pts: gp_Pnt; ptc: gp_Pnt; param: cfloat; u: cfloat; v: cfloat; w: cfloat): BlendPoint {.
    cdecl, constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc: cfloat; tg1: gp_Vec; tg2: gp_Vec; tg12d: Vec2dObj; tg22d: Vec2dObj): BlendPoint {.
    cdecl, constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc: cfloat): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc1: cfloat; pc2: cfloat; tg1: gp_Vec; tg2: gp_Vec; tg12d: Vec2dObj;
                   tg22d: Vec2dObj): BlendPoint {.cdecl, constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc newBlendPoint*(pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat; v1: cfloat; u2: cfloat;
                   v2: cfloat; pc1: cfloat; pc2: cfloat): BlendPoint {.cdecl,
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; tg1: gp_Vec; tg2: gp_Vec; tg12d: Vec2dObj;
              tg22d: Vec2dObj) {.cdecl, importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat) {.cdecl, importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pts: gp_Pnt; ptc: gp_Pnt; param: cfloat; u: cfloat;
              v: cfloat; w: cfloat; tgs: gp_Vec; tgc: gp_Vec; tg2d: Vec2dObj) {.cdecl,
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pts: gp_Pnt; ptc: gp_Pnt; param: cfloat; u: cfloat;
              v: cfloat; w: cfloat) {.cdecl, importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc: cfloat; tg1: gp_Vec; tg2: gp_Vec;
              tg12d: Vec2dObj; tg22d: Vec2dObj) {.cdecl, importcpp: "SetValue",
                                        header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc: cfloat) {.cdecl,
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc1: cfloat; pc2: cfloat; tg1: gp_Vec;
              tg2: gp_Vec; tg12d: Vec2dObj; tg22d: Vec2dObj) {.cdecl, importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; u1: cfloat;
              v1: cfloat; u2: cfloat; v2: cfloat; pc1: cfloat; pc2: cfloat) {.cdecl,
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: gp_Pnt; pt2: gp_Pnt; param: cfloat; pc1: cfloat;
              pc2: cfloat) {.cdecl, importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setParameter*(this: var BlendPoint; param: cfloat) {.cdecl,
    importcpp: "SetParameter", header: "Blend_Point.hxx".}
proc parameter*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Parameter", header: "Blend_Point.hxx".}
proc isTangencyPoint*(this: BlendPoint): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", header: "Blend_Point.hxx".}
proc pointOnS1*(this: BlendPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "PointOnS1",
                                     header: "Blend_Point.hxx".}
proc pointOnS2*(this: BlendPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "PointOnS2",
                                     header: "Blend_Point.hxx".}
proc parametersOnS1*(this: BlendPoint; u: var cfloat; v: var cfloat) {.noSideEffect,
    cdecl, importcpp: "ParametersOnS1", header: "Blend_Point.hxx".}
proc parametersOnS2*(this: BlendPoint; u: var cfloat; v: var cfloat) {.noSideEffect,
    cdecl, importcpp: "ParametersOnS2", header: "Blend_Point.hxx".}
proc tangentOnS1*(this: BlendPoint): gp_Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnS1", header: "Blend_Point.hxx".}
proc tangentOnS2*(this: BlendPoint): gp_Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnS2", header: "Blend_Point.hxx".}
proc tangent2dOnS1*(this: BlendPoint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS1", header: "Blend_Point.hxx".}
proc tangent2dOnS2*(this: BlendPoint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS2", header: "Blend_Point.hxx".}
proc pointOnS*(this: BlendPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "PointOnS",
                                    header: "Blend_Point.hxx".}
proc pointOnC*(this: BlendPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "PointOnC",
                                    header: "Blend_Point.hxx".}
proc parametersOnS*(this: BlendPoint; u: var cfloat; v: var cfloat) {.noSideEffect, cdecl,
    importcpp: "ParametersOnS", header: "Blend_Point.hxx".}
proc parameterOnC*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC", header: "Blend_Point.hxx".}
proc tangentOnS*(this: BlendPoint): gp_Vec {.noSideEffect, cdecl,
                                      importcpp: "TangentOnS", header: "Blend_Point.hxx".}
proc tangentOnC*(this: BlendPoint): gp_Vec {.noSideEffect, cdecl,
                                      importcpp: "TangentOnC", header: "Blend_Point.hxx".}
proc tangent2d*(this: BlendPoint): Vec2dObj {.noSideEffect, cdecl,
                                       importcpp: "Tangent2d", header: "Blend_Point.hxx".}
proc pointOnC1*(this: BlendPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "PointOnC1",
                                     header: "Blend_Point.hxx".}
proc pointOnC2*(this: BlendPoint): gp_Pnt {.noSideEffect, cdecl, importcpp: "PointOnC2",
                                     header: "Blend_Point.hxx".}
proc parameterOnC1*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC1", header: "Blend_Point.hxx".}
proc parameterOnC2*(this: BlendPoint): cfloat {.noSideEffect, cdecl,
    importcpp: "ParameterOnC2", header: "Blend_Point.hxx".}
proc tangentOnC1*(this: BlendPoint): gp_Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnC1", header: "Blend_Point.hxx".}
proc tangentOnC2*(this: BlendPoint): gp_Vec {.noSideEffect, cdecl,
                                       importcpp: "TangentOnC2", header: "Blend_Point.hxx".}


