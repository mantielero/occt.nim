import brepblend_types
import ../math/math_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types
import ../law/law_types





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



proc newBRepBlendSurfPointEvolRadInv*(s: Handle[Adaptor3dHSurface];
                                     c: Handle[Adaptor3dHCurve];
                                     evol: Handle[LawFunction]): BRepBlendSurfPointEvolRadInv {.
    cdecl, constructor, importcpp: "BRepBlend_SurfPointEvolRadInv(@)",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointEvolRadInv; choix: cint) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfPointEvolRadInv): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc value*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector;
                 d: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
                                        header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc values*(this: var BRepBlendSurfPointEvolRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointEvolRadInv; p: gp_Pnt) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfPointEvolRadInv; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfPointEvolRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_SurfPointEvolRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfPointEvolRadInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_SurfPointEvolRadInv.hxx".}


