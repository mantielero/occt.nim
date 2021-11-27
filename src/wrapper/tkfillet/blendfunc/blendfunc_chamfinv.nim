##  Created on: 1996-06-06
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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BlendFuncChamfInv* {.importcpp: "BlendFunc_ChamfInv",
                      header: "BlendFunc_ChamfInv.hxx", bycopy.} = object of BlendFuncGenChamfInv


proc newBlendFuncChamfInv*(s1: Handle[Adaptor3dHSurface];
                          s2: Handle[Adaptor3dHSurface];
                          c: Handle[Adaptor3dHCurve]): BlendFuncChamfInv {.cdecl,
    constructor, importcpp: "BlendFunc_ChamfInv(@)", header: "BlendFunc_ChamfInv.hxx".}
proc isSolution*(this: var BlendFuncChamfInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BlendFunc_ChamfInv.hxx".}
proc value*(this: var BlendFuncChamfInv; x: MathVector; f: var MathVector): bool {.cdecl,
    importcpp: "Value", header: "BlendFunc_ChamfInv.hxx".}
proc derivatives*(this: var BlendFuncChamfInv; x: MathVector; d: var MathMatrix): bool {.
    cdecl, importcpp: "Derivatives", header: "BlendFunc_ChamfInv.hxx".}
## using statement

proc set*(this: var BlendFuncChamfInv; dist1: cfloat; dist2: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BlendFunc_ChamfInv.hxx".}