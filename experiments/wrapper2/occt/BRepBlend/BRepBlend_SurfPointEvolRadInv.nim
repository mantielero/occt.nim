##  Created on: 1997-07-29
##  Created by: Jerome LEMONIER
##  Copyright (c) 1997-1999 Matra Datavision
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
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  BRepBlendSurfPointEvolRadInv* {.importcpp: "BRepBlend_SurfPointEvolRadInv",
                                 header: "BRepBlend_SurfPointEvolRadInv.hxx",
                                 bycopy.} = object of BlendSurfPointFuncInv


proc constructBRepBlendSurfPointEvolRadInv*(s: Handle[Adaptor3dHSurface];
    c: Handle[Adaptor3dHCurve]; evol: Handle[LawFunction]): BRepBlendSurfPointEvolRadInv {.
    constructor, importcpp: "BRepBlend_SurfPointEvolRadInv(@)",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointEvolRadInv; choix: cint) {.importcpp: "Set",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfPointEvolRadInv): cint {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc value*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector;
                 d: var MathMatrix): bool {.importcpp: "Derivatives", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc values*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointEvolRadInv; p: Pnt) {.importcpp: "Set",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfPointEvolRadInv; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfPointEvolRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfPointEvolRadInv; sol: MathVector; tol: cfloat): bool {.
    importcpp: "IsSolution", header: "BRepBlend_SurfPointEvolRadInv.hxx".}

























