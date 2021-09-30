##  Created by: Julia GERASIMOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
  BlendFuncConstThroatInv* {.importcpp: "BlendFunc_ConstThroatInv",
                            header: "BlendFunc_ConstThroatInv.hxx", bycopy.} = object of BlendFuncGenChamfInv


proc constructBlendFuncConstThroatInv*(s1: Handle[Adaptor3dHSurface];
                                      s2: Handle[Adaptor3dHSurface];
                                      c: Handle[Adaptor3dHCurve]): BlendFuncConstThroatInv {.
    constructor, importcpp: "BlendFunc_ConstThroatInv(@)",
    header: "BlendFunc_ConstThroatInv.hxx".}
proc isSolution*(this: var BlendFuncConstThroatInv; sol: MathVector; tol: cfloat): bool {.
    importcpp: "IsSolution", header: "BlendFunc_ConstThroatInv.hxx".}
proc value*(this: var BlendFuncConstThroatInv; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BlendFunc_ConstThroatInv.hxx".}
proc derivatives*(this: var BlendFuncConstThroatInv; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "BlendFunc_ConstThroatInv.hxx".}
## using statement

proc set*(this: var BlendFuncConstThroatInv; theThroat: cfloat; a3: cfloat; choix: cint) {.
    importcpp: "Set", header: "BlendFunc_ConstThroatInv.hxx".}

























