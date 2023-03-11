import brepgprop_types
import ../gp/gp_types
import ../gprop/gprop_types
##  Created on: 2005-12-21
##  Created by: Sergey KHROMOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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

discard "forward decl of gp_Pnt"


proc newBRepGProp_TFunction*(theSurface: BRepGProp_Face; theVertex: gp_Pnt;
                            IsByPoint: bool; theCoeffs: ptr cfloat; theUMin: cfloat;
                            theTolerance: cfloat): BRepGProp_TFunction {.cdecl,
    constructor, importcpp: "BRepGProp_TFunction(@)".}
proc Init*(this: var BRepGProp_TFunction) {.cdecl, importcpp: "Init".}
proc SetNbKronrodPoints*(this: var BRepGProp_TFunction; theNbPoints: cint) {.cdecl,
    importcpp: "SetNbKronrodPoints".}
proc SetValueType*(this: var BRepGProp_TFunction; aType: GProp_ValueType) {.cdecl,
    importcpp: "SetValueType".}
proc SetTolerance*(this: var BRepGProp_TFunction; aTol: cfloat) {.cdecl,
    importcpp: "SetTolerance".}
proc ErrorReached*(this: BRepGProp_TFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "ErrorReached".}
proc AbsolutError*(this: BRepGProp_TFunction): cfloat {.noSideEffect, cdecl,
    importcpp: "AbsolutError".}
proc Value*(this: var BRepGProp_TFunction; X: cfloat; F: var cfloat): bool {.cdecl,
    importcpp: "Value".}
proc GetStateNumber*(this: var BRepGProp_TFunction): cint {.cdecl,
    importcpp: "GetStateNumber".}