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
discard "forward decl of gp_XYZ"
type
  BRepGPropUFunction* {.importcpp: "BRepGProp_UFunction",
                       header: "BRepGProp_UFunction.hxx", bycopy.} = object of MathFunction ##
                                                                                     ## !
                                                                                     ## Private
                                                                                     ## method.
                                                                                     ## Returns
                                                                                     ## the
                                                                                     ## value
                                                                                     ## for
                                                                                     ## volume
                                                                                     ## computation.
                                                                                     ##
                                                                                     ## !
                                                                                     ## Other
                                                                                     ## returned
                                                                                     ## values
                                                                                     ## are:
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## thePMP0
                                                                                     ## -
                                                                                     ## PSurf(X,Y)
                                                                                     ## minus
                                                                                     ## Location.
                                                                                     ##
                                                                                     ## !
                                                                                     ## -
                                                                                     ## theS
                                                                                     ## and
                                                                                     ## theD1
                                                                                     ## coeffitients
                                                                                     ## that
                                                                                     ## are
                                                                                     ## computed
                                                                                     ## and
                                                                                     ## used
                                                                                     ##
                                                                                     ## !
                                                                                     ## for
                                                                                     ## computation
                                                                                     ## of
                                                                                     ## center
                                                                                     ## of
                                                                                     ## mass
                                                                                     ## and
                                                                                     ## inertia
                                                                                     ## values
                                                                                     ##
                                                                                     ## !
                                                                                     ## by
                                                                                     ## plane.


proc `new`*(this: var BRepGPropUFunction; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_UFunction::operator new",
    header: "BRepGProp_UFunction.hxx".}
proc `delete`*(this: var BRepGPropUFunction; theAddress: pointer) {.
    importcpp: "BRepGProp_UFunction::operator delete",
    header: "BRepGProp_UFunction.hxx".}
proc `new[]`*(this: var BRepGPropUFunction; theSize: csize_t): pointer {.
    importcpp: "BRepGProp_UFunction::operator new[]",
    header: "BRepGProp_UFunction.hxx".}
proc `delete[]`*(this: var BRepGPropUFunction; theAddress: pointer) {.
    importcpp: "BRepGProp_UFunction::operator delete[]",
    header: "BRepGProp_UFunction.hxx".}
proc `new`*(this: var BRepGPropUFunction; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepGProp_UFunction::operator new",
    header: "BRepGProp_UFunction.hxx".}
proc `delete`*(this: var BRepGPropUFunction; a2: pointer; a3: pointer) {.
    importcpp: "BRepGProp_UFunction::operator delete",
    header: "BRepGProp_UFunction.hxx".}
proc constructBRepGPropUFunction*(theSurface: BRepGPropFace; theVertex: Pnt;
                                 isByPoint: StandardBoolean;
                                 theCoeffs: StandardAddress): BRepGPropUFunction {.
    constructor, importcpp: "BRepGProp_UFunction(@)",
    header: "BRepGProp_UFunction.hxx".}
proc setValueType*(this: var BRepGPropUFunction; theType: GPropValueType) {.
    importcpp: "SetValueType", header: "BRepGProp_UFunction.hxx".}
proc setVParam*(this: var BRepGPropUFunction; theVParam: StandardReal) {.
    importcpp: "SetVParam", header: "BRepGProp_UFunction.hxx".}
proc value*(this: var BRepGPropUFunction; x: StandardReal; f: var StandardReal): StandardBoolean {.
    importcpp: "Value", header: "BRepGProp_UFunction.hxx".}