##  Created on: 1996-06-04
##  Created by: Stagiaire Xuan Trang PHAMPHU
##  Copyright (c) 1996-1999 Matra Datavision
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Standard_DomainError"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  BlendFuncCorde* {.importcpp: "BlendFunc_Corde", header: "BlendFunc_Corde.hxx",
                   bycopy.} = object


proc constructBlendFuncCorde*(s: Handle[Adaptor3dHSurface];
                             cGuide: Handle[Adaptor3dHCurve]): BlendFuncCorde {.
    constructor, importcpp: "BlendFunc_Corde(@)", header: "BlendFunc_Corde.hxx".}
proc setParam*(this: var BlendFuncCorde; param: float) {.importcpp: "SetParam",
    header: "BlendFunc_Corde.hxx".}
proc setDist*(this: var BlendFuncCorde; dist: float) {.importcpp: "SetDist",
    header: "BlendFunc_Corde.hxx".}
proc value*(this: var BlendFuncCorde; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_Corde.hxx".}
proc derivatives*(this: var BlendFuncCorde; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_Corde.hxx".}
proc pointOnS*(this: BlendFuncCorde): Pnt {.noSideEffect, importcpp: "PointOnS",
                                        header: "BlendFunc_Corde.hxx".}
proc pointOnGuide*(this: BlendFuncCorde): Pnt {.noSideEffect,
    importcpp: "PointOnGuide", header: "BlendFunc_Corde.hxx".}
proc nPlan*(this: BlendFuncCorde): Vec {.noSideEffect, importcpp: "NPlan",
                                     header: "BlendFunc_Corde.hxx".}
proc isTangencyPoint*(this: BlendFuncCorde): bool {.noSideEffect,
    importcpp: "IsTangencyPoint", header: "BlendFunc_Corde.hxx".}
proc tangentOnS*(this: BlendFuncCorde): Vec {.noSideEffect, importcpp: "TangentOnS",
    header: "BlendFunc_Corde.hxx".}
proc tangent2dOnS*(this: BlendFuncCorde): Vec2d {.noSideEffect,
    importcpp: "Tangent2dOnS", header: "BlendFunc_Corde.hxx".}
proc derFguide*(this: var BlendFuncCorde; sol: MathVector; derF: var Vec2d) {.
    importcpp: "DerFguide", header: "BlendFunc_Corde.hxx".}
proc isSolution*(this: var BlendFuncCorde; sol: MathVector; tol: float): bool {.
    importcpp: "IsSolution", header: "BlendFunc_Corde.hxx".}
