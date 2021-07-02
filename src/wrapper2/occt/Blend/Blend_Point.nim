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


proc constructBlendPoint*(): BlendPoint {.constructor, importcpp: "Blend_Point(@)",
                                       header: "Blend_Point.hxx".}
proc constructBlendPoint*(pt1: GpPnt; pt2: GpPnt; param: StandardReal;
                         u1: StandardReal; v1: StandardReal; u2: StandardReal;
                         v2: StandardReal; tg1: GpVec; tg2: GpVec; tg12d: GpVec2d;
                         tg22d: GpVec2d): BlendPoint {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pt1: GpPnt; pt2: GpPnt; param: StandardReal;
                         u1: StandardReal; v1: StandardReal; u2: StandardReal;
                         v2: StandardReal): BlendPoint {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pts: GpPnt; ptc: GpPnt; param: StandardReal; u: StandardReal;
                         v: StandardReal; w: StandardReal; tgs: GpVec; tgc: GpVec;
                         tg2d: GpVec2d): BlendPoint {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pts: GpPnt; ptc: GpPnt; param: StandardReal; u: StandardReal;
                         v: StandardReal; w: StandardReal): BlendPoint {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pt1: GpPnt; pt2: GpPnt; param: StandardReal;
                         u1: StandardReal; v1: StandardReal; u2: StandardReal;
                         v2: StandardReal; pc: StandardReal; tg1: GpVec; tg2: GpVec;
                         tg12d: GpVec2d; tg22d: GpVec2d): BlendPoint {.constructor,
    importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pt1: GpPnt; pt2: GpPnt; param: StandardReal;
                         u1: StandardReal; v1: StandardReal; u2: StandardReal;
                         v2: StandardReal; pc: StandardReal): BlendPoint {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pt1: GpPnt; pt2: GpPnt; param: StandardReal;
                         u1: StandardReal; v1: StandardReal; u2: StandardReal;
                         v2: StandardReal; pc1: StandardReal; pc2: StandardReal;
                         tg1: GpVec; tg2: GpVec; tg12d: GpVec2d; tg22d: GpVec2d): BlendPoint {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc constructBlendPoint*(pt1: GpPnt; pt2: GpPnt; param: StandardReal;
                         u1: StandardReal; v1: StandardReal; u2: StandardReal;
                         v2: StandardReal; pc1: StandardReal; pc2: StandardReal): BlendPoint {.
    constructor, importcpp: "Blend_Point(@)", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              u1: StandardReal; v1: StandardReal; u2: StandardReal; v2: StandardReal;
              tg1: GpVec; tg2: GpVec; tg12d: GpVec2d; tg22d: GpVec2d) {.
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              u1: StandardReal; v1: StandardReal; u2: StandardReal; v2: StandardReal) {.
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pts: GpPnt; ptc: GpPnt; param: StandardReal;
              u: StandardReal; v: StandardReal; w: StandardReal; tgs: GpVec; tgc: GpVec;
              tg2d: GpVec2d) {.importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pts: GpPnt; ptc: GpPnt; param: StandardReal;
              u: StandardReal; v: StandardReal; w: StandardReal) {.
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              u1: StandardReal; v1: StandardReal; u2: StandardReal; v2: StandardReal;
              pc: StandardReal; tg1: GpVec; tg2: GpVec; tg12d: GpVec2d; tg22d: GpVec2d) {.
    importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              u1: StandardReal; v1: StandardReal; u2: StandardReal; v2: StandardReal;
              pc: StandardReal) {.importcpp: "SetValue", header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              u1: StandardReal; v1: StandardReal; u2: StandardReal; v2: StandardReal;
              pc1: StandardReal; pc2: StandardReal; tg1: GpVec; tg2: GpVec;
              tg12d: GpVec2d; tg22d: GpVec2d) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              u1: StandardReal; v1: StandardReal; u2: StandardReal; v2: StandardReal;
              pc1: StandardReal; pc2: StandardReal) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc setValue*(this: var BlendPoint; pt1: GpPnt; pt2: GpPnt; param: StandardReal;
              pc1: StandardReal; pc2: StandardReal) {.importcpp: "SetValue",
    header: "Blend_Point.hxx".}
proc setParameter*(this: var BlendPoint; param: StandardReal) {.
    importcpp: "SetParameter", header: "Blend_Point.hxx".}
proc parameter*(this: BlendPoint): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "Blend_Point.hxx".}
proc isTangencyPoint*(this: BlendPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_Point.hxx".}
proc pointOnS1*(this: BlendPoint): GpPnt {.noSideEffect, importcpp: "PointOnS1",
                                       header: "Blend_Point.hxx".}
proc pointOnS2*(this: BlendPoint): GpPnt {.noSideEffect, importcpp: "PointOnS2",
                                       header: "Blend_Point.hxx".}
proc parametersOnS1*(this: BlendPoint; u: var StandardReal; v: var StandardReal) {.
    noSideEffect, importcpp: "ParametersOnS1", header: "Blend_Point.hxx".}
proc parametersOnS2*(this: BlendPoint; u: var StandardReal; v: var StandardReal) {.
    noSideEffect, importcpp: "ParametersOnS2", header: "Blend_Point.hxx".}
proc tangentOnS1*(this: BlendPoint): GpVec {.noSideEffect, importcpp: "TangentOnS1",
    header: "Blend_Point.hxx".}
proc tangentOnS2*(this: BlendPoint): GpVec {.noSideEffect, importcpp: "TangentOnS2",
    header: "Blend_Point.hxx".}
proc tangent2dOnS1*(this: BlendPoint): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "Blend_Point.hxx".}
proc tangent2dOnS2*(this: BlendPoint): GpVec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "Blend_Point.hxx".}
proc pointOnS*(this: BlendPoint): GpPnt {.noSideEffect, importcpp: "PointOnS",
                                      header: "Blend_Point.hxx".}
proc pointOnC*(this: BlendPoint): GpPnt {.noSideEffect, importcpp: "PointOnC",
                                      header: "Blend_Point.hxx".}
proc parametersOnS*(this: BlendPoint; u: var StandardReal; v: var StandardReal) {.
    noSideEffect, importcpp: "ParametersOnS", header: "Blend_Point.hxx".}
proc parameterOnC*(this: BlendPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnC", header: "Blend_Point.hxx".}
proc tangentOnS*(this: BlendPoint): GpVec {.noSideEffect, importcpp: "TangentOnS",
                                        header: "Blend_Point.hxx".}
proc tangentOnC*(this: BlendPoint): GpVec {.noSideEffect, importcpp: "TangentOnC",
                                        header: "Blend_Point.hxx".}
proc tangent2d*(this: BlendPoint): GpVec2d {.noSideEffect, importcpp: "Tangent2d",
    header: "Blend_Point.hxx".}
proc pointOnC1*(this: BlendPoint): GpPnt {.noSideEffect, importcpp: "PointOnC1",
                                       header: "Blend_Point.hxx".}
proc pointOnC2*(this: BlendPoint): GpPnt {.noSideEffect, importcpp: "PointOnC2",
                                       header: "Blend_Point.hxx".}
proc parameterOnC1*(this: BlendPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnC1", header: "Blend_Point.hxx".}
proc parameterOnC2*(this: BlendPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnC2", header: "Blend_Point.hxx".}
proc tangentOnC1*(this: BlendPoint): GpVec {.noSideEffect, importcpp: "TangentOnC1",
    header: "Blend_Point.hxx".}
proc tangentOnC2*(this: BlendPoint): GpVec {.noSideEffect, importcpp: "TangentOnC2",
    header: "Blend_Point.hxx".}

