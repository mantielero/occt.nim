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

discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
discard "forward decl of Blend_Point"
type
  BlendFunction* {.importcpp: "Blend_Function", header: "Blend_Function.hxx", bycopy.} = object of BlendAppFunction ##
                                                                                                          ## !
                                                                                                          ## Returns
                                                                                                          ## 4.


proc nbVariables*(this: BlendFunction): int {.noSideEffect, importcpp: "NbVariables",
    header: "Blend_Function.hxx".}
proc pnt1*(this: BlendFunction): Pnt {.noSideEffect, importcpp: "Pnt1",
                                   header: "Blend_Function.hxx".}
proc pnt2*(this: BlendFunction): Pnt {.noSideEffect, importcpp: "Pnt2",
                                   header: "Blend_Function.hxx".}
proc pointOnS1*(this: BlendFunction): Pnt {.noSideEffect, importcpp: "PointOnS1",
                                        header: "Blend_Function.hxx".}
proc pointOnS2*(this: BlendFunction): Pnt {.noSideEffect, importcpp: "PointOnS2",
                                        header: "Blend_Function.hxx".}
proc isTangencyPoint*(this: BlendFunction): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "Blend_Function.hxx".}
proc tangentOnS1*(this: BlendFunction): Vec {.noSideEffect, importcpp: "TangentOnS1",
    header: "Blend_Function.hxx".}
proc tangent2dOnS1*(this: BlendFunction): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS1", header: "Blend_Function.hxx".}
proc tangentOnS2*(this: BlendFunction): Vec {.noSideEffect, importcpp: "TangentOnS2",
    header: "Blend_Function.hxx".}
proc tangent2dOnS2*(this: BlendFunction): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS2", header: "Blend_Function.hxx".}
proc tangent*(this: BlendFunction; u1: float; v1: float; u2: float; v2: float;
             tgFirst: var Vec; tgLast: var Vec; normFirst: var Vec; normLast: var Vec) {.
    noSideEffect, importcpp: "Tangent", header: "Blend_Function.hxx".}
proc twistOnS1*(this: BlendFunction): bool {.noSideEffect, importcpp: "TwistOnS1",
    header: "Blend_Function.hxx".}
proc twistOnS2*(this: BlendFunction): bool {.noSideEffect, importcpp: "TwistOnS2",
    header: "Blend_Function.hxx".}
proc section*(this: var BlendFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             poles2d: var TColgpArray1OfPnt2d; weigths: var TColStdArray1OfReal) {.
    importcpp: "Section", header: "Blend_Function.hxx".}
proc section*(this: var BlendFunction; p: BlendPoint; poles: var TColgpArray1OfPnt;
             dPoles: var TColgpArray1OfVec; d2Poles: var TColgpArray1OfVec;
             poles2d: var TColgpArray1OfPnt2d; dPoles2d: var TColgpArray1OfVec2d;
             d2Poles2d: var TColgpArray1OfVec2d; weigths: var TColStdArray1OfReal;
             dWeigths: var TColStdArray1OfReal; d2Weigths: var TColStdArray1OfReal): bool {.
    importcpp: "Section", header: "Blend_Function.hxx".}
