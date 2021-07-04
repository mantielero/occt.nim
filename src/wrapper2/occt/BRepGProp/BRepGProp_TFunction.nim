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
  ../Standard/Standard_Handle, BRepGProp_Face, BRepGProp_UFunction,
  ../Standard/Standard_Real, ../GProp/GProp_ValueType,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../math/math_Function, ../Standard/Standard_Address

discard "forward decl of BRepGProp_Face"
discard "forward decl of gp_Pnt"
type
  BRepGProp_TFunction* {.importcpp: "BRepGProp_TFunction",
                        header: "BRepGProp_TFunction.hxx", bycopy.} = object of math_Function ##
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
                                                                                       ## IsByPoint,
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
                                                                                       ## The
                                                                                       ## last
                                                                                       ## two
                                                                                       ## parameters
                                                                                       ## are
                                                                                       ## theUMin
                                                                                       ## -
                                                                                       ## the
                                                                                       ##
                                                                                       ## !
                                                                                       ## lower
                                                                                       ## bound
                                                                                       ## of
                                                                                       ## the
                                                                                       ## inner
                                                                                       ## integral.
                                                                                       ## This
                                                                                       ## value
                                                                                       ## is
                                                                                       ## fixed
                                                                                       ## for
                                                                                       ##
                                                                                       ## !
                                                                                       ## any
                                                                                       ## integral.
                                                                                       ## And
                                                                                       ## the
                                                                                       ## value
                                                                                       ## of
                                                                                       ## tolerance
                                                                                       ## of
                                                                                       ## inner
                                                                                       ## integral
                                                                                       ##
                                                                                       ## !
                                                                                       ## computation.
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
                                                                                       ## shift
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
                                                                                       ## compbination
                                                                                       ## of
                                                                                       ##
                                                                                       ## !
                                                                                       ## plane
                                                                                       ## parameters
                                                                                       ## and
                                                                                       ## shift
                                                                                       ## values.


proc constructBRepGProp_TFunction*(theSurface: BRepGProp_Face; theVertex: gp_Pnt;
                                  IsByPoint: Standard_Boolean;
                                  theCoeffs: Standard_Address;
                                  theUMin: Standard_Real;
                                  theTolerance: Standard_Real): BRepGProp_TFunction {.
    constructor, importcpp: "BRepGProp_TFunction(@)",
    header: "BRepGProp_TFunction.hxx".}
proc Init*(this: var BRepGProp_TFunction) {.importcpp: "Init",
                                        header: "BRepGProp_TFunction.hxx".}
proc SetNbKronrodPoints*(this: var BRepGProp_TFunction;
                        theNbPoints: Standard_Integer) {.
    importcpp: "SetNbKronrodPoints", header: "BRepGProp_TFunction.hxx".}
proc SetValueType*(this: var BRepGProp_TFunction; aType: GProp_ValueType) {.
    importcpp: "SetValueType", header: "BRepGProp_TFunction.hxx".}
proc SetTolerance*(this: var BRepGProp_TFunction; aTol: Standard_Real) {.
    importcpp: "SetTolerance", header: "BRepGProp_TFunction.hxx".}
proc ErrorReached*(this: BRepGProp_TFunction): Standard_Real {.noSideEffect,
    importcpp: "ErrorReached", header: "BRepGProp_TFunction.hxx".}
proc AbsolutError*(this: BRepGProp_TFunction): Standard_Real {.noSideEffect,
    importcpp: "AbsolutError", header: "BRepGProp_TFunction.hxx".}
proc Value*(this: var BRepGProp_TFunction; X: Standard_Real; F: var Standard_Real): Standard_Boolean {.
    importcpp: "Value", header: "BRepGProp_TFunction.hxx".}
proc GetStateNumber*(this: var BRepGProp_TFunction): Standard_Integer {.
    importcpp: "GetStateNumber", header: "BRepGProp_TFunction.hxx".}