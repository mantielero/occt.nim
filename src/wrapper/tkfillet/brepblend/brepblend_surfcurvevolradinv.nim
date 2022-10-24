import brepblend_types

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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Law_Function"
discard "forward decl of math_Matrix"


proc newBRepBlendSurfCurvEvolRadInv*(s: Handle[Adaptor3dHSurface];
                                    c: Handle[Adaptor3dHCurve];
                                    cg: Handle[Adaptor3dHCurve];
                                    evol: Handle[LawFunction]): BRepBlendSurfCurvEvolRadInv {.
    cdecl, constructor, importcpp: "BRepBlend_SurfCurvEvolRadInv(@)",
    header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfCurvEvolRadInv; choix: cint) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfCurvEvolRadInv): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc value*(this: var BRepBlendSurfCurvEvolRadInv; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfCurvEvolRadInv; x: MathVector;
                 d: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
                                        header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc values*(this: var BRepBlendSurfCurvEvolRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc set*(this: var BRepBlendSurfCurvEvolRadInv; rst: Handle[Adaptor2dHCurve2d]) {.
    cdecl, importcpp: "Set", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfCurvEvolRadInv; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfCurvEvolRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfCurvEvolRadInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_SurfCurvEvolRadInv.hxx".}
