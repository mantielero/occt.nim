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
                       header: "BRepGProp_TFunction.hxx", bycopy.} = object of MathFunction ##
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


proc constructBRepGPropTFunction*(theSurface: BRepGPropFace; theVertex: Pnt;
                                 isByPoint: bool; theCoeffs: StandardAddress;
                                 theUMin: float; theTolerance: float): BRepGPropTFunction {.
    constructor, importcpp: "BRepGProp_TFunction(@)",
    header: "BRepGProp_TFunction.hxx".}
proc init*(this: var BRepGPropTFunction) {.importcpp: "Init",
                                       header: "BRepGProp_TFunction.hxx".}
proc setNbKronrodPoints*(this: var BRepGPropTFunction; theNbPoints: int) {.
    importcpp: "SetNbKronrodPoints", header: "BRepGProp_TFunction.hxx".}
proc setValueType*(this: var BRepGPropTFunction; aType: GPropValueType) {.
    importcpp: "SetValueType", header: "BRepGProp_TFunction.hxx".}
proc setTolerance*(this: var BRepGPropTFunction; aTol: float) {.
    importcpp: "SetTolerance", header: "BRepGProp_TFunction.hxx".}
proc errorReached*(this: BRepGPropTFunction): float {.noSideEffect,
    importcpp: "ErrorReached", header: "BRepGProp_TFunction.hxx".}
proc absolutError*(this: BRepGPropTFunction): float {.noSideEffect,
    importcpp: "AbsolutError", header: "BRepGProp_TFunction.hxx".}
proc value*(this: var BRepGPropTFunction; x: float; f: var float): bool {.
    importcpp: "Value", header: "BRepGProp_TFunction.hxx".}
proc getStateNumber*(this: var BRepGPropTFunction): int {.
    importcpp: "GetStateNumber", header: "BRepGProp_TFunction.hxx".}
