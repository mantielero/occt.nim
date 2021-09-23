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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepGProp_Face, ../gp/gp_Pnt,
  ../Standard/Standard_Address, ../Standard/Standard_Real,
  ../GProp/GProp_ValueType, ../Standard/Standard_Boolean, ../math/math_Function

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_XYZ"
type
  BRepGProp_UFunction* {.importcpp: "BRepGProp_UFunction",
                        header: "BRepGProp_UFunction.hxx", bycopy.} = object of math_Function ##
                                                                                       ## !
                                                                                       ## Constructor.
                                                                                       ## Initializes
                                                                                       ## the
                                                                                       ## function
                                                                                       ## with
                                                                                       ## the
                                                                                       ## face,
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## location
                                                                                       ## point,
                                                                                       ## the
                                                                                       ## flag
                                                                                       ## IsByPoint
                                                                                       ## and
                                                                                       ## the
                                                                                       ## coefficients
                                                                                       ##
                                                                                       ## !
                                                                                       ## theCoeff
                                                                                       ## that
                                                                                       ## have
                                                                                       ## different
                                                                                       ## meaning
                                                                                       ## depending
                                                                                       ## on
                                                                                       ## the
                                                                                       ## value
                                                                                       ##
                                                                                       ## !
                                                                                       ## of
                                                                                       ## IsByPoint.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## IsByPoint
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## Standard_True,
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## coefficients
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## 3
                                                                                       ## and
                                                                                       ## they
                                                                                       ## represent
                                                                                       ## X,
                                                                                       ## Y
                                                                                       ## and
                                                                                       ## Z
                                                                                       ##
                                                                                       ## !
                                                                                       ## coordinates
                                                                                       ## (theCoeff[0],
                                                                                       ## theCoeff[1]
                                                                                       ## and
                                                                                       ## theCoeff[2]
                                                                                       ##
                                                                                       ## !
                                                                                       ## correspondingly)
                                                                                       ## of
                                                                                       ## the
                                                                                       ## shift,
                                                                                       ## if
                                                                                       ## the
                                                                                       ## inertia
                                                                                       ## is
                                                                                       ## computed
                                                                                       ##
                                                                                       ## !
                                                                                       ## with
                                                                                       ## respect
                                                                                       ## to
                                                                                       ## the
                                                                                       ## point
                                                                                       ## different
                                                                                       ## then
                                                                                       ## the
                                                                                       ## location.
                                                                                       ##
                                                                                       ## !
                                                                                       ## If
                                                                                       ## IsByPoint
                                                                                       ## is
                                                                                       ## equal
                                                                                       ## to
                                                                                       ## Standard_False,
                                                                                       ## the
                                                                                       ## number
                                                                                       ## of
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## coefficients
                                                                                       ## is
                                                                                       ## 4
                                                                                       ## and
                                                                                       ## they
                                                                                       ## represent
                                                                                       ## the
                                                                                       ## combination
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## plane
                                                                                       ## parameters
                                                                                       ## and
                                                                                       ## shift
                                                                                       ## values.
                                                                                       ##
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


proc constructBRepGProp_UFunction*(theSurface: BRepGProp_Face; theVertex: gp_Pnt;
                                  IsByPoint: Standard_Boolean;
                                  theCoeffs: Standard_Address): BRepGProp_UFunction {.
    constructor, importcpp: "BRepGProp_UFunction(@)",
    header: "BRepGProp_UFunction.hxx".}
proc SetValueType*(this: var BRepGProp_UFunction; theType: GProp_ValueType) {.
    importcpp: "SetValueType", header: "BRepGProp_UFunction.hxx".}
proc SetVParam*(this: var BRepGProp_UFunction; theVParam: Standard_Real) {.
    importcpp: "SetVParam", header: "BRepGProp_UFunction.hxx".}
proc Value*(this: var BRepGProp_UFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "BRepGProp_UFunction.hxx".}