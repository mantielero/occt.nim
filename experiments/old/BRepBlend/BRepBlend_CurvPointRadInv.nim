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

discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  BRepBlendCurvPointRadInv* {.importcpp: "BRepBlend_CurvPointRadInv",
                             header: "BRepBlend_CurvPointRadInv.hxx", bycopy.} = object of BlendCurvPointFuncInv


proc `new`*(this: var BRepBlendCurvPointRadInv; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_CurvPointRadInv::operator new",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc `delete`*(this: var BRepBlendCurvPointRadInv; theAddress: pointer) {.
    importcpp: "BRepBlend_CurvPointRadInv::operator delete",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc `new[]`*(this: var BRepBlendCurvPointRadInv; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_CurvPointRadInv::operator new[]",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc `delete[]`*(this: var BRepBlendCurvPointRadInv; theAddress: pointer) {.
    importcpp: "BRepBlend_CurvPointRadInv::operator delete[]",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc `new`*(this: var BRepBlendCurvPointRadInv; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_CurvPointRadInv::operator new",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc `delete`*(this: var BRepBlendCurvPointRadInv; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_CurvPointRadInv::operator delete",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc constructBRepBlendCurvPointRadInv*(c1: Handle[Adaptor3dHCurve];
                                       c2: Handle[Adaptor3dHCurve]): BRepBlendCurvPointRadInv {.
    constructor, importcpp: "BRepBlend_CurvPointRadInv(@)",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc set*(this: var BRepBlendCurvPointRadInv; choix: int) {.importcpp: "Set",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc nbEquations*(this: BRepBlendCurvPointRadInv): int {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_CurvPointRadInv.hxx".}
proc value*(this: var BRepBlendCurvPointRadInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_CurvPointRadInv.hxx".}
proc derivatives*(this: var BRepBlendCurvPointRadInv; x: MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Derivatives", header: "BRepBlend_CurvPointRadInv.hxx".}
proc values*(this: var BRepBlendCurvPointRadInv; x: MathVector; f: var MathVector;
            d: var MathMatrix): StandardBoolean {.importcpp: "Values",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc set*(this: var BRepBlendCurvPointRadInv; p: Pnt) {.importcpp: "Set",
    header: "BRepBlend_CurvPointRadInv.hxx".}
proc getTolerance*(this: BRepBlendCurvPointRadInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance",
                                     header: "BRepBlend_CurvPointRadInv.hxx".}
proc getBounds*(this: BRepBlendCurvPointRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds",
                                        header: "BRepBlend_CurvPointRadInv.hxx".}
proc isSolution*(this: var BRepBlendCurvPointRadInv; sol: MathVector;
                tol: StandardReal): StandardBoolean {.importcpp: "IsSolution",
    header: "BRepBlend_CurvPointRadInv.hxx".}