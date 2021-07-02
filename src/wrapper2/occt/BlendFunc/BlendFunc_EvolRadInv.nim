##  Created on: 1993-12-21
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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
type
  BlendFuncEvolRadInv* {.importcpp: "BlendFunc_EvolRadInv",
                        header: "BlendFunc_EvolRadInv.hxx", bycopy.} = object of BlendFuncInv


proc constructBlendFuncEvolRadInv*(s1: Handle[Adaptor3dHSurface];
                                  s2: Handle[Adaptor3dHSurface];
                                  c: Handle[Adaptor3dHCurve];
                                  law: Handle[LawFunction]): BlendFuncEvolRadInv {.
    constructor, importcpp: "BlendFunc_EvolRadInv(@)",
    header: "BlendFunc_EvolRadInv.hxx".}
proc set*(this: var BlendFuncEvolRadInv; onFirst: StandardBoolean;
         cOnSurf: Handle[Adaptor2dHCurve2d]) {.importcpp: "Set",
    header: "BlendFunc_EvolRadInv.hxx".}
proc getTolerance*(this: BlendFuncEvolRadInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BlendFunc_EvolRadInv.hxx".}
proc getBounds*(this: BlendFuncEvolRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BlendFunc_EvolRadInv.hxx".}
proc isSolution*(this: var BlendFuncEvolRadInv; sol: MathVector; tol: StandardReal): StandardBoolean {.
    importcpp: "IsSolution", header: "BlendFunc_EvolRadInv.hxx".}
proc nbEquations*(this: BlendFuncEvolRadInv): StandardInteger {.noSideEffect,
    importcpp: "NbEquations", header: "BlendFunc_EvolRadInv.hxx".}
proc value*(this: var BlendFuncEvolRadInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BlendFunc_EvolRadInv.hxx".}
proc derivatives*(this: var BlendFuncEvolRadInv; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BlendFunc_EvolRadInv.hxx".}
proc values*(this: var BlendFuncEvolRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BlendFunc_EvolRadInv.hxx".}
proc set*(this: var BlendFuncEvolRadInv; choix: StandardInteger) {.importcpp: "Set",
    header: "BlendFunc_EvolRadInv.hxx".}

