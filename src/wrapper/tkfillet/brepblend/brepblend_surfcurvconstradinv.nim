import brepblend_types
import ../../tkmath/math/math_types
import ../../tkernel/standard/standard_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import ../../tkg2d/adaptor2d/adaptor2d_types





##  Created on: 1997-02-21
##  Created by: Laurent BOURESCHE
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



proc newBRepBlendSurfCurvConstRadInv*(s: Handle[Adaptor3dHSurface];
                                     c: Handle[Adaptor3dHCurve];
                                     cg: Handle[Adaptor3dHCurve]): BRepBlendSurfCurvConstRadInv {.
    cdecl, constructor, importcpp: "BRepBlend_SurfCurvConstRadInv(@)",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfCurvConstRadInv; r: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfCurvConstRadInv): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc value*(this: var BRepBlendSurfCurvConstRadInv; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfCurvConstRadInv; x: MathVector;
                 d: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
                                        header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc values*(this: var BRepBlendSurfCurvConstRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.cdecl, importcpp: "Values", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfCurvConstRadInv; rst: Handle[Adaptor2dHCurve2d]) {.
    cdecl, importcpp: "Set", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfCurvConstRadInv; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfCurvConstRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfCurvConstRadInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_SurfCurvConstRadInv.hxx".}


