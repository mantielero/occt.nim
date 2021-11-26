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

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
type
  BRepGPropTFunction* {.importcpp: "BRepGProp_TFunction",
                       header: "BRepGProp_TFunction.hxx", bycopy.} = object of MathFunction


proc `new`*(this: var BRepGPropTFunction; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_TFunction::operator new",
    header: "BRepGProp_TFunction.hxx".}
proc `delete`*(this: var BRepGPropTFunction; theAddress: pointer) {.
    importcpp: "BRepGProp_TFunction::operator delete",
    header: "BRepGProp_TFunction.hxx".}
proc `new[]`*(this: var BRepGPropTFunction; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_TFunction::operator new[]",
    header: "BRepGProp_TFunction.hxx".}
proc `delete[]`*(this: var BRepGPropTFunction; theAddress: pointer) {.
    importcpp: "BRepGProp_TFunction::operator delete[]",
    header: "BRepGProp_TFunction.hxx".}
proc `new`*(this: var BRepGPropTFunction; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_TFunction::operator new",
    header: "BRepGProp_TFunction.hxx".}
proc `delete`*(this: var BRepGPropTFunction; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_TFunction::operator delete",
    header: "BRepGProp_TFunction.hxx".}
proc constructBRepGPropTFunction*(theSurface: BRepGPropFace; theVertex: Pnt;
                                 isByPoint: StandardBoolean;
                                 theCoeffs: StandardAddress;
                                 theUMin: StandardReal; theTolerance: StandardReal): BRepGPropTFunction {.
    constructor, importcpp: "BRepGProp_TFunction(@)",
    header: "BRepGProp_TFunction.hxx".}
proc init*(this: var BRepGPropTFunction) {.importcpp: "Init",
                                       header: "BRepGProp_TFunction.hxx".}
proc setNbKronrodPoints*(this: var BRepGPropTFunction; theNbPoints: int) {.
    importcpp: "SetNbKronrodPoints", header: "BRepGProp_TFunction.hxx".}
proc setValueType*(this: var BRepGPropTFunction; aType: GPropValueType) {.
    importcpp: "SetValueType", header: "BRepGProp_TFunction.hxx".}
proc setTolerance*(this: var BRepGPropTFunction; aTol: StandardReal) {.
    importcpp: "SetTolerance", header: "BRepGProp_TFunction.hxx".}
proc errorReached*(this: BRepGPropTFunction): StandardReal {.noSideEffect,
    importcpp: "ErrorReached", header: "BRepGProp_TFunction.hxx".}
proc absolutError*(this: BRepGPropTFunction): StandardReal {.noSideEffect,
    importcpp: "AbsolutError", header: "BRepGProp_TFunction.hxx".}
proc value*(this: var BRepGPropTFunction; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "BRepGProp_TFunction.hxx".}
proc getStateNumber*(this: var BRepGPropTFunction): int {.
    importcpp: "GetStateNumber", header: "BRepGProp_TFunction.hxx".}