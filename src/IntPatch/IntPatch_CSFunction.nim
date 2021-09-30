##  Created on: 1994-02-14
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of math_Matrix"
discard "forward decl of gp_Pnt"
type
  IntPatchCSFunction* {.importcpp: "IntPatch_CSFunction",
                       header: "IntPatch_CSFunction.hxx", bycopy.} = object of MathFunctionSetWithDerivatives ##
                                                                                                       ## !
                                                                                                       ## S1
                                                                                                       ## is
                                                                                                       ## the
                                                                                                       ## surface
                                                                                                       ## on
                                                                                                       ## which
                                                                                                       ## the
                                                                                                       ## intersection
                                                                                                       ## is
                                                                                                       ## searched.
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## C
                                                                                                       ## is
                                                                                                       ## a
                                                                                                       ## curve
                                                                                                       ## on
                                                                                                       ## the
                                                                                                       ## surface
                                                                                                       ## S2.


proc constructIntPatchCSFunction*(s1: Handle[Adaptor3dHSurface];
                                 c: Handle[Adaptor2dHCurve2d];
                                 s2: Handle[Adaptor3dHSurface]): IntPatchCSFunction {.
    constructor, importcpp: "IntPatch_CSFunction(@)",
    header: "IntPatch_CSFunction.hxx".}
proc nbVariables*(this: IntPatchCSFunction): cint {.noSideEffect,
    importcpp: "NbVariables", header: "IntPatch_CSFunction.hxx".}
proc nbEquations*(this: IntPatchCSFunction): cint {.noSideEffect,
    importcpp: "NbEquations", header: "IntPatch_CSFunction.hxx".}
proc value*(this: var IntPatchCSFunction; x: MathVector; f: var MathVector): bool {.
    importcpp: "Value", header: "IntPatch_CSFunction.hxx".}
proc derivatives*(this: var IntPatchCSFunction; x: MathVector; d: var MathMatrix): bool {.
    importcpp: "Derivatives", header: "IntPatch_CSFunction.hxx".}
proc values*(this: var IntPatchCSFunction; x: MathVector; f: var MathVector;
            d: var MathMatrix): bool {.importcpp: "Values",
                                   header: "IntPatch_CSFunction.hxx".}
proc point*(this: IntPatchCSFunction): Pnt {.noSideEffect, importcpp: "Point",
    header: "IntPatch_CSFunction.hxx".}
proc root*(this: IntPatchCSFunction): cfloat {.noSideEffect, importcpp: "Root",
    header: "IntPatch_CSFunction.hxx".}
proc auxillarSurface*(this: IntPatchCSFunction): Handle[Adaptor3dHSurface] {.
    noSideEffect, importcpp: "AuxillarSurface", header: "IntPatch_CSFunction.hxx".}
proc auxillarCurve*(this: IntPatchCSFunction): Handle[Adaptor2dHCurve2d] {.
    noSideEffect, importcpp: "AuxillarCurve", header: "IntPatch_CSFunction.hxx".}

























