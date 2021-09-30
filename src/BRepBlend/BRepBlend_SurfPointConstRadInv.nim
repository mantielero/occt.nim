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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HCurve"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  BRepBlendSurfPointConstRadInv* {.importcpp: "BRepBlend_SurfPointConstRadInv",
                                  header: "BRepBlend_SurfPointConstRadInv.hxx",
                                  bycopy.} = object of BlendSurfPointFuncInv


proc `new`*(this: var BRepBlendSurfPointConstRadInv; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfPointConstRadInv::operator new",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc `delete`*(this: var BRepBlendSurfPointConstRadInv; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfPointConstRadInv::operator delete",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc `new[]`*(this: var BRepBlendSurfPointConstRadInv; theSize: csize_t): pointer {.
    importcpp: "BRepBlend_SurfPointConstRadInv::operator new[]",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc `delete[]`*(this: var BRepBlendSurfPointConstRadInv; theAddress: pointer) {.
    importcpp: "BRepBlend_SurfPointConstRadInv::operator delete[]",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc `new`*(this: var BRepBlendSurfPointConstRadInv; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepBlend_SurfPointConstRadInv::operator new",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc `delete`*(this: var BRepBlendSurfPointConstRadInv; a2: pointer; a3: pointer) {.
    importcpp: "BRepBlend_SurfPointConstRadInv::operator delete",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc constructBRepBlendSurfPointConstRadInv*(s: Handle[Adaptor3dHSurface];
    c: Handle[Adaptor3dHCurve]): BRepBlendSurfPointConstRadInv {.constructor,
    importcpp: "BRepBlend_SurfPointConstRadInv(@)",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointConstRadInv; r: StandardReal; choix: int) {.
    importcpp: "Set", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc nbEquations*(this: BRepBlendSurfPointConstRadInv): int {.noSideEffect,
    importcpp: "NbEquations", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc value*(this: var BRepBlendSurfPointConstRadInv; x: MathVector; f: var MathVector): StandardBoolean {.
    importcpp: "Value", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc derivatives*(this: var BRepBlendSurfPointConstRadInv; x: MathVector;
                 d: var MathMatrix): StandardBoolean {.importcpp: "Derivatives",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc values*(this: var BRepBlendSurfPointConstRadInv; x: MathVector;
            f: var MathVector; d: var MathMatrix): StandardBoolean {.
    importcpp: "Values", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc set*(this: var BRepBlendSurfPointConstRadInv; p: Pnt) {.importcpp: "Set",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc getTolerance*(this: BRepBlendSurfPointConstRadInv; tolerance: var MathVector;
                  tol: StandardReal) {.noSideEffect, importcpp: "GetTolerance", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc getBounds*(this: BRepBlendSurfPointConstRadInv; infBound: var MathVector;
               supBound: var MathVector) {.noSideEffect, importcpp: "GetBounds", header: "BRepBlend_SurfPointConstRadInv.hxx".}
proc isSolution*(this: var BRepBlendSurfPointConstRadInv; sol: MathVector;
                tol: StandardReal): StandardBoolean {.importcpp: "IsSolution",
    header: "BRepBlend_SurfPointConstRadInv.hxx".}