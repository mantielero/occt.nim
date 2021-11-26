##  Created on: 1997-09-12
##  Created by: Philippe MANGIN
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

discard "forward decl of PLib_Base"
discard "forward decl of Standard_DimensionError"
discard "forward decl of FEmTool_Curve"
discard "forward decl of FEmTool_Curve"
type
  HandleC1C1* = Handle[FEmToolCurve]

## ! Curve defined by Polynomial Elements.

type
  FEmToolCurve* {.importcpp: "FEmTool_Curve", header: "FEmTool_Curve.hxx", bycopy.} = object of StandardTransient


proc constructFEmToolCurve*(dimension: cint; nbElements: cint;
                           theBase: Handle[PLibBase]; tolerance: cfloat): FEmToolCurve {.
    constructor, importcpp: "FEmTool_Curve(@)", header: "FEmTool_Curve.hxx".}
proc knots*(this: FEmToolCurve): var TColStdArray1OfReal {.noSideEffect,
    importcpp: "Knots", header: "FEmTool_Curve.hxx".}
proc setElement*(this: var FEmToolCurve; indexOfElement: cint;
                coeffs: TColStdArray2OfReal) {.importcpp: "SetElement",
    header: "FEmTool_Curve.hxx".}
proc d0*(this: var FEmToolCurve; u: cfloat; pnt: var TColStdArray1OfReal) {.
    importcpp: "D0", header: "FEmTool_Curve.hxx".}
proc d1*(this: var FEmToolCurve; u: cfloat; vec: var TColStdArray1OfReal) {.
    importcpp: "D1", header: "FEmTool_Curve.hxx".}
proc d2*(this: var FEmToolCurve; u: cfloat; vec: var TColStdArray1OfReal) {.
    importcpp: "D2", header: "FEmTool_Curve.hxx".}
proc length*(this: var FEmToolCurve; firstU: cfloat; lastU: cfloat; length: var cfloat) {.
    importcpp: "Length", header: "FEmTool_Curve.hxx".}
proc getElement*(this: var FEmToolCurve; indexOfElement: cint;
                coeffs: var TColStdArray2OfReal) {.importcpp: "GetElement",
    header: "FEmTool_Curve.hxx".}
proc getPolynom*(this: var FEmToolCurve; coeffs: var TColStdArray1OfReal) {.
    importcpp: "GetPolynom", header: "FEmTool_Curve.hxx".}
proc nbElements*(this: FEmToolCurve): cint {.noSideEffect, importcpp: "NbElements",
    header: "FEmTool_Curve.hxx".}
proc dimension*(this: FEmToolCurve): cint {.noSideEffect, importcpp: "Dimension",
                                        header: "FEmTool_Curve.hxx".}
proc base*(this: FEmToolCurve): Handle[PLibBase] {.noSideEffect, importcpp: "Base",
    header: "FEmTool_Curve.hxx".}
proc degree*(this: FEmToolCurve; indexOfElement: cint): cint {.noSideEffect,
    importcpp: "Degree", header: "FEmTool_Curve.hxx".}
proc setDegree*(this: var FEmToolCurve; indexOfElement: cint; degree: cint) {.
    importcpp: "SetDegree", header: "FEmTool_Curve.hxx".}
proc reduceDegree*(this: var FEmToolCurve; indexOfElement: cint; tol: cfloat;
                  newDegree: var cint; maxError: var cfloat) {.
    importcpp: "ReduceDegree", header: "FEmTool_Curve.hxx".}
type
  FEmToolCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "FEmTool_Curve::get_type_name(@)",
                            header: "FEmTool_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "FEmTool_Curve::get_type_descriptor(@)",
    header: "FEmTool_Curve.hxx".}
proc dynamicType*(this: FEmToolCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "FEmTool_Curve.hxx".}

























