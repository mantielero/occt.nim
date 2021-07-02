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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
type
  BRepBlendSurfCurvConstRadInv* {.importcpp: "BRepBlend_SurfCurvConstRadInv",
                                 header: "BRepBlend_SurfCurvConstRadInv.hxx",
                                 bycopy.} = object of BlendSurfCurvFuncInv


proc constructBRepBlendSurfCurvConstRadInv*(s: Handle[Adaptor3dHSurface];
    c: Handle[Adaptor3dHCurve]; cg: Handle[Adaptor3dHCurve]): BRepBlendSurfCurvConstRadInv {.
    constructor, importcpp: "BRepBlend_SurfCurvConstRadInv(@)",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfCurvConstRadInv; r: StandardReal;
         choix: StandardInteger) {.importcpp: "Set",
                                 header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfCurvConstRadInv): StandardInteger {.
    noSideEffect, importcpp: "NbEquations",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc value*(this: var BRepBlendSurfCurvConstRadInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfCurvConstRadInv; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc values*(this: var BRepBlendSurfCurvConstRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfCurvConstRadInv; rst: Handle[Adaptor2dHCurve2d]) {.
    importcpp: "Set", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfCurvConstRadInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfCurvConstRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds", header: "BRepBlend_SurfCurvConstRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfCurvConstRadInv; sol: MathVector;
                tol: StandardReal): StandardBoolean {.importcpp: "IsSolution",
    header: "BRepBlend_SurfCurvConstRadInv.hxx".}

