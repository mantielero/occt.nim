import brepblend_types
import ../math/math_types
import ../gp/gp_types
import ../standard/standard_types
import ../adaptor3d/adaptor3d_types





##  Created on: 1997-02-12
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



proc newBRepBlendSurfPointConstRadInv*(s: Handle[Adaptor3dHSurface];
                                      c: Handle[Adaptor3dHCurve]): BRepBlendSurfPointConstRadInv {.
    cdecl, constructor, importcpp: "BRepBlend_SurfPointConstRadInv(@)",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointConstRadInv; r: cfloat; choix: cint) {.cdecl,
    importcpp: "Set", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfPointConstRadInv): cint {.noSideEffect, cdecl,
    importcpp: "NbEquations", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc value*(this: var BRepBlendSurfPointConstRadInv; x: MathVector; f: var MathVector): bool {.
    cdecl, importcpp: "Value", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfPointConstRadInv; x: MathVector;
                 d: var MathMatrix): bool {.cdecl, importcpp: "Derivatives",
                                        header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc values*(this: var BRepBlendSurfPointConstRadInv; x: MathVector;
            f: var MathVector; d: var MathMatrix): bool {.cdecl, importcpp: "Values",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointConstRadInv; p: gp_Pnt) {.cdecl, importcpp: "Set",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfPointConstRadInv; tolerance: var MathVector;
                  tol: cfloat) {.noSideEffect, cdecl, importcpp: "GetTolerance",
                               header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfPointConstRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, cdecl,
                                        importcpp: "GetBounds", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfPointConstRadInv; sol: MathVector; tol: cfloat): bool {.
    cdecl, importcpp: "IsSolution", header: "BRepBlend_SurfPointConstRadInv.hxx".}


