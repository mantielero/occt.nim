##  Created on: 1992-05-06
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of IntSurf_Transition"
discard "forward decl of IntSurf_PntOn2S"
type
  IntPatchPoint* {.importcpp: "IntPatch_Point", header: "IntPatch_Point.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor.
    ## TRUE if the point is in several intersection lines


proc constructIntPatchPoint*(): IntPatchPoint {.constructor,
    importcpp: "IntPatch_Point(@)", header: "IntPatch_Point.hxx".}
proc setValue*(this: var IntPatchPoint; pt: GpPnt; tol: StandardReal;
              tangent: StandardBoolean) {.importcpp: "SetValue",
                                        header: "IntPatch_Point.hxx".}
proc setValue*(this: var IntPatchPoint; pt: GpPnt) {.importcpp: "SetValue",
    header: "IntPatch_Point.hxx".}
proc setValue*(this: var IntPatchPoint; thePOn2S: IntSurfPntOn2S) {.
    importcpp: "SetValue", header: "IntPatch_Point.hxx".}
proc setTolerance*(this: var IntPatchPoint; tol: StandardReal) {.
    importcpp: "SetTolerance", header: "IntPatch_Point.hxx".}
proc setParameters*(this: var IntPatchPoint; u1: StandardReal; v1: StandardReal;
                   u2: StandardReal; v2: StandardReal) {.importcpp: "SetParameters",
    header: "IntPatch_Point.hxx".}
proc setParameter*(this: var IntPatchPoint; para: StandardReal) {.
    importcpp: "SetParameter", header: "IntPatch_Point.hxx".}
proc setVertex*(this: var IntPatchPoint; onFirst: StandardBoolean;
               v: Handle[Adaptor3dHVertex]) {.importcpp: "SetVertex",
    header: "IntPatch_Point.hxx".}
proc setArc*(this: var IntPatchPoint; onFirst: StandardBoolean;
            a: Handle[Adaptor2dHCurve2d]; param: StandardReal;
            tLine: IntSurfTransition; tArc: IntSurfTransition) {.
    importcpp: "SetArc", header: "IntPatch_Point.hxx".}
proc setMultiple*(this: var IntPatchPoint; isMult: StandardBoolean) {.
    importcpp: "SetMultiple", header: "IntPatch_Point.hxx".}
proc value*(this: IntPatchPoint): GpPnt {.noSideEffect, importcpp: "Value",
                                      header: "IntPatch_Point.hxx".}
proc parameterOnLine*(this: IntPatchPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnLine", header: "IntPatch_Point.hxx".}
proc tolerance*(this: IntPatchPoint): StandardReal {.noSideEffect,
    importcpp: "Tolerance", header: "IntPatch_Point.hxx".}
proc isTangencyPoint*(this: IntPatchPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "IntPatch_Point.hxx".}
proc parametersOnS1*(this: IntPatchPoint; u1: var StandardReal; v1: var StandardReal) {.
    noSideEffect, importcpp: "ParametersOnS1", header: "IntPatch_Point.hxx".}
proc parametersOnS2*(this: IntPatchPoint; u2: var StandardReal; v2: var StandardReal) {.
    noSideEffect, importcpp: "ParametersOnS2", header: "IntPatch_Point.hxx".}
proc isMultiple*(this: IntPatchPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsMultiple", header: "IntPatch_Point.hxx".}
proc isOnDomS1*(this: IntPatchPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsOnDomS1", header: "IntPatch_Point.hxx".}
proc isVertexOnS1*(this: IntPatchPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsVertexOnS1", header: "IntPatch_Point.hxx".}
proc vertexOnS1*(this: IntPatchPoint): Handle[Adaptor3dHVertex] {.noSideEffect,
    importcpp: "VertexOnS1", header: "IntPatch_Point.hxx".}
proc arcOnS1*(this: IntPatchPoint): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "ArcOnS1", header: "IntPatch_Point.hxx".}
proc transitionLineArc1*(this: IntPatchPoint): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionLineArc1", header: "IntPatch_Point.hxx".}
proc transitionOnS1*(this: IntPatchPoint): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnS1", header: "IntPatch_Point.hxx".}
proc parameterOnArc1*(this: IntPatchPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnArc1", header: "IntPatch_Point.hxx".}
proc isOnDomS2*(this: IntPatchPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsOnDomS2", header: "IntPatch_Point.hxx".}
proc isVertexOnS2*(this: IntPatchPoint): StandardBoolean {.noSideEffect,
    importcpp: "IsVertexOnS2", header: "IntPatch_Point.hxx".}
proc vertexOnS2*(this: IntPatchPoint): Handle[Adaptor3dHVertex] {.noSideEffect,
    importcpp: "VertexOnS2", header: "IntPatch_Point.hxx".}
proc arcOnS2*(this: IntPatchPoint): Handle[Adaptor2dHCurve2d] {.noSideEffect,
    importcpp: "ArcOnS2", header: "IntPatch_Point.hxx".}
proc transitionLineArc2*(this: IntPatchPoint): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionLineArc2", header: "IntPatch_Point.hxx".}
proc transitionOnS2*(this: IntPatchPoint): IntSurfTransition {.noSideEffect,
    importcpp: "TransitionOnS2", header: "IntPatch_Point.hxx".}
proc parameterOnArc2*(this: IntPatchPoint): StandardReal {.noSideEffect,
    importcpp: "ParameterOnArc2", header: "IntPatch_Point.hxx".}
proc pntOn2S*(this: IntPatchPoint): IntSurfPntOn2S {.noSideEffect,
    importcpp: "PntOn2S", header: "IntPatch_Point.hxx".}
proc parameters*(this: IntPatchPoint; u1: var StandardReal; v1: var StandardReal;
                u2: var StandardReal; v2: var StandardReal) {.noSideEffect,
    importcpp: "Parameters", header: "IntPatch_Point.hxx".}
proc reverseTransition*(this: var IntPatchPoint) {.importcpp: "ReverseTransition",
    header: "IntPatch_Point.hxx".}
proc dump*(this: IntPatchPoint) {.noSideEffect, importcpp: "Dump",
                               header: "IntPatch_Point.hxx".}

