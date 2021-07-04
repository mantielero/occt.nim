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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../IntSurf/IntSurf_PntOn2S,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../IntSurf/IntSurf_Transition, ../Adaptor2d/Adaptor2d_HCurve2d

discard "forward decl of Adaptor3d_HVertex"
discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of IntSurf_Transition"
discard "forward decl of IntSurf_PntOn2S"
type
  IntPatch_Point* {.importcpp: "IntPatch_Point", header: "IntPatch_Point.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor.
    ## TRUE if the point is in several intersection lines


proc constructIntPatch_Point*(): IntPatch_Point {.constructor,
    importcpp: "IntPatch_Point(@)", header: "IntPatch_Point.hxx".}
proc SetValue*(this: var IntPatch_Point; Pt: gp_Pnt; Tol: Standard_Real;
              Tangent: Standard_Boolean) {.importcpp: "SetValue",
    header: "IntPatch_Point.hxx".}
proc SetValue*(this: var IntPatch_Point; Pt: gp_Pnt) {.importcpp: "SetValue",
    header: "IntPatch_Point.hxx".}
proc SetValue*(this: var IntPatch_Point; thePOn2S: IntSurf_PntOn2S) {.
    importcpp: "SetValue", header: "IntPatch_Point.hxx".}
proc SetTolerance*(this: var IntPatch_Point; Tol: Standard_Real) {.
    importcpp: "SetTolerance", header: "IntPatch_Point.hxx".}
proc SetParameters*(this: var IntPatch_Point; U1: Standard_Real; V1: Standard_Real;
                   U2: Standard_Real; V2: Standard_Real) {.
    importcpp: "SetParameters", header: "IntPatch_Point.hxx".}
proc SetParameter*(this: var IntPatch_Point; Para: Standard_Real) {.
    importcpp: "SetParameter", header: "IntPatch_Point.hxx".}
proc SetVertex*(this: var IntPatch_Point; OnFirst: Standard_Boolean;
               V: handle[Adaptor3d_HVertex]) {.importcpp: "SetVertex",
    header: "IntPatch_Point.hxx".}
proc SetArc*(this: var IntPatch_Point; OnFirst: Standard_Boolean;
            A: handle[Adaptor2d_HCurve2d]; Param: Standard_Real;
            TLine: IntSurf_Transition; TArc: IntSurf_Transition) {.
    importcpp: "SetArc", header: "IntPatch_Point.hxx".}
proc SetMultiple*(this: var IntPatch_Point; IsMult: Standard_Boolean) {.
    importcpp: "SetMultiple", header: "IntPatch_Point.hxx".}
proc Value*(this: IntPatch_Point): gp_Pnt {.noSideEffect, importcpp: "Value",
                                        header: "IntPatch_Point.hxx".}
proc ParameterOnLine*(this: IntPatch_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnLine", header: "IntPatch_Point.hxx".}
proc Tolerance*(this: IntPatch_Point): Standard_Real {.noSideEffect,
    importcpp: "Tolerance", header: "IntPatch_Point.hxx".}
proc IsTangencyPoint*(this: IntPatch_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "IntPatch_Point.hxx".}
proc ParametersOnS1*(this: IntPatch_Point; U1: var Standard_Real;
                    V1: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS1", header: "IntPatch_Point.hxx".}
proc ParametersOnS2*(this: IntPatch_Point; U2: var Standard_Real;
                    V2: var Standard_Real) {.noSideEffect,
    importcpp: "ParametersOnS2", header: "IntPatch_Point.hxx".}
proc IsMultiple*(this: IntPatch_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsMultiple", header: "IntPatch_Point.hxx".}
proc IsOnDomS1*(this: IntPatch_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnDomS1", header: "IntPatch_Point.hxx".}
proc IsVertexOnS1*(this: IntPatch_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertexOnS1", header: "IntPatch_Point.hxx".}
proc VertexOnS1*(this: IntPatch_Point): handle[Adaptor3d_HVertex] {.noSideEffect,
    importcpp: "VertexOnS1", header: "IntPatch_Point.hxx".}
proc ArcOnS1*(this: IntPatch_Point): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "ArcOnS1", header: "IntPatch_Point.hxx".}
proc TransitionLineArc1*(this: IntPatch_Point): IntSurf_Transition {.noSideEffect,
    importcpp: "TransitionLineArc1", header: "IntPatch_Point.hxx".}
proc TransitionOnS1*(this: IntPatch_Point): IntSurf_Transition {.noSideEffect,
    importcpp: "TransitionOnS1", header: "IntPatch_Point.hxx".}
proc ParameterOnArc1*(this: IntPatch_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc1", header: "IntPatch_Point.hxx".}
proc IsOnDomS2*(this: IntPatch_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsOnDomS2", header: "IntPatch_Point.hxx".}
proc IsVertexOnS2*(this: IntPatch_Point): Standard_Boolean {.noSideEffect,
    importcpp: "IsVertexOnS2", header: "IntPatch_Point.hxx".}
proc VertexOnS2*(this: IntPatch_Point): handle[Adaptor3d_HVertex] {.noSideEffect,
    importcpp: "VertexOnS2", header: "IntPatch_Point.hxx".}
proc ArcOnS2*(this: IntPatch_Point): handle[Adaptor2d_HCurve2d] {.noSideEffect,
    importcpp: "ArcOnS2", header: "IntPatch_Point.hxx".}
proc TransitionLineArc2*(this: IntPatch_Point): IntSurf_Transition {.noSideEffect,
    importcpp: "TransitionLineArc2", header: "IntPatch_Point.hxx".}
proc TransitionOnS2*(this: IntPatch_Point): IntSurf_Transition {.noSideEffect,
    importcpp: "TransitionOnS2", header: "IntPatch_Point.hxx".}
proc ParameterOnArc2*(this: IntPatch_Point): Standard_Real {.noSideEffect,
    importcpp: "ParameterOnArc2", header: "IntPatch_Point.hxx".}
proc PntOn2S*(this: IntPatch_Point): IntSurf_PntOn2S {.noSideEffect,
    importcpp: "PntOn2S", header: "IntPatch_Point.hxx".}
proc Parameters*(this: IntPatch_Point; U1: var Standard_Real; V1: var Standard_Real;
                U2: var Standard_Real; V2: var Standard_Real) {.noSideEffect,
    importcpp: "Parameters", header: "IntPatch_Point.hxx".}
proc ReverseTransition*(this: var IntPatch_Point) {.importcpp: "ReverseTransition",
    header: "IntPatch_Point.hxx".}
proc Dump*(this: IntPatch_Point) {.noSideEffect, importcpp: "Dump",
                                header: "IntPatch_Point.hxx".}