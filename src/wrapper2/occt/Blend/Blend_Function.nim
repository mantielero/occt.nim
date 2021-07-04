##  Created on: 1993-09-13
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
  ../Standard/Standard_Handle, Blend_AppFunction, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../math/math_Vector, ../Standard/Standard_Real,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array1OfInteger,
  ../TColgp/TColgp_Array1OfPnt, ../TColgp/TColgp_Array1OfVec,
  ../TColgp/TColgp_Array1OfPnt2d, ../TColgp/TColgp_Array1OfVec2d

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  Blend_Function* {.importcpp: "Blend_Function", header: "Blend_Function.hxx", bycopy.} = object of Blend_AppFunction ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## 4.


proc NbVariables*(this: Blend_Function): Standard_Integer {.noSideEffect,
    importcpp: "NbVariables", header: "Blend_Function.hxx".}
proc Pnt1*(this: Blend_Function): gp_Pnt {.noSideEffect, importcpp: "Pnt1",
                                       header: "Blend_Function.hxx".}
proc Pnt2*(this: Blend_Function): gp_Pnt {.noSideEffect, importcpp: "Pnt2",
                                       header: "Blend_Function.hxx".}
proc PointOnS1*(this: Blend_Function): gp_Pnt {.noSideEffect, importcpp: "PointOnS1",
    header: "Blend_Function.hxx".}
proc PointOnS2*(this: Blend_Function): gp_Pnt {.noSideEffect, importcpp: "PointOnS2",
    header: "Blend_Function.hxx".}
proc IsTangencyPoint*(this: Blend_Function): Standard_Boolean {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_Function.hxx".}
proc TangentOnS1*(this: Blend_Function): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS1", header: "Blend_Function.hxx".}
proc Tangent2dOnS1*(this: Blend_Function): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "Blend_Function.hxx".}
proc TangentOnS2*(this: Blend_Function): gp_Vec {.noSideEffect,
    importcpp: "TangentOnS2", header: "Blend_Function.hxx".}
proc Tangent2dOnS2*(this: Blend_Function): gp_Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "Blend_Function.hxx".}
proc Tangent*(this: Blend_Function; U1: Standard_Real; V1: Standard_Real;
             U2: Standard_Real; V2: Standard_Real; TgFirst: var gp_Vec;
             TgLast: var gp_Vec; NormFirst: var gp_Vec; NormLast: var gp_Vec) {.
    noSideEffect, importcpp: "Tangent", header: "Blend_Function.hxx".}
proc TwistOnS1*(this: Blend_Function): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS1", header: "Blend_Function.hxx".}
proc TwistOnS2*(this: Blend_Function): Standard_Boolean {.noSideEffect,
    importcpp: "TwistOnS2", header: "Blend_Function.hxx".}
proc Section*(this: var Blend_Function; P: Blend_Point; Poles: var TColgp_Array1OfPnt;
             Poles2d: var TColgp_Array1OfPnt2d; Weigths: var TColStd_Array1OfReal) {.
    importcpp: "Section", header: "Blend_Function.hxx".}
proc Section*(this: var Blend_Function; P: Blend_Point; Poles: var TColgp_Array1OfPnt;
             DPoles: var TColgp_Array1OfVec; D2Poles: var TColgp_Array1OfVec;
             Poles2d: var TColgp_Array1OfPnt2d; DPoles2d: var TColgp_Array1OfVec2d;
             D2Poles2d: var TColgp_Array1OfVec2d;
             Weigths: var TColStd_Array1OfReal; DWeigths: var TColStd_Array1OfReal;
             D2Weigths: var TColStd_Array1OfReal): Standard_Boolean {.
    importcpp: "Section", header: "Blend_Function.hxx".}