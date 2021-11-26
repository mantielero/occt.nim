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


proc newBlendFuncCorde*(s: Handle[Adaptor3dHSurface];
                       cGuide: Handle[Adaptor3dHCurve]): BlendFuncCorde {.cdecl,
    constructor, importcpp: "BlendFunc_Corde(@)", dynlib: tkfillet.}
proc setParam*(this: var BlendFuncCorde; param: cfloat) {.cdecl, importcpp: "SetParam",
    dynlib: tkfillet.}
proc setDist*(this: var BlendFuncCorde; dist: cfloat) {.cdecl, importcpp: "SetDist",
    dynlib: tkfillet.}
proc value*(this: var BlendFuncCorde; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", dynlib: tkfillet.}
proc derivatives*(this: var BlendFuncCorde; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", dynlib: tkfillet.}
proc pointOnS*(this: BlendFuncCorde): Pnt {.noSideEffect, cdecl,
                                        importcpp: "PointOnS", dynlib: tkfillet.}
proc pointOnGuide*(this: BlendFuncCorde): Pnt {.noSideEffect, cdecl,
    importcpp: "PointOnGuide", dynlib: tkfillet.}
proc nPlan*(this: BlendFuncCorde): Vec {.noSideEffect, cdecl, importcpp: "NPlan",
                                     dynlib: tkfillet.}
proc isTangencyPoint*(this: BlendFuncCorde): bool {.noSideEffect, cdecl,
    importcpp: "IsTangencyPoint", dynlib: tkfillet.}
proc tangentOnS*(this: BlendFuncCorde): Vec {.noSideEffect, cdecl,
    importcpp: "TangentOnS", dynlib: tkfillet.}
proc tangent2dOnS*(this: BlendFuncCorde): Vec2d {.noSideEffect, cdecl,
    importcpp: "Tangent2dOnS", dynlib: tkfillet.}
proc derFguide*(this: var BlendFuncCorde; sol: MathVector; derF: var Vec2d) {.cdecl,
    importcpp: "DerFguide", dynlib: tkfillet.}
proc isSolution*(this: var BlendFuncCorde; sol: MathVector; tol: cfloat): bool {.cdecl,
    importcpp: "IsSolution", dynlib: tkfillet.}