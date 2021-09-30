##  Created on: 2015-09-21
##  Copyright (c) 2015 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _Geom2dEvaluator_Curve_HeaderFile [NewLine] # _Geom2dEvaluator_Curve_HeaderFile [NewLine] # < Standard_Transient . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] class gp_Pnt2d ;
## Error: expected ';'!!!

discard "forward decl of gp_Vec2d"
type
  Geom2dEvaluatorCurve* {.importcpp: "Geom2dEvaluator_Curve",
                         header: "Geom2dEvaluator_Curve.hxx", bycopy.} = object of StandardTransient


proc constructGeom2dEvaluatorCurve*(): Geom2dEvaluatorCurve {.constructor,
    importcpp: "Geom2dEvaluator_Curve(@)", header: "Geom2dEvaluator_Curve.hxx".}
proc d0*(this: Geom2dEvaluatorCurve; theU: float; theValue: var Pnt2d) {.noSideEffect,
    importcpp: "D0", header: "Geom2dEvaluator_Curve.hxx".}
proc d1*(this: Geom2dEvaluatorCurve; theU: float; theValue: var Pnt2d; theD1: var Vec2d) {.
    noSideEffect, importcpp: "D1", header: "Geom2dEvaluator_Curve.hxx".}
proc d2*(this: Geom2dEvaluatorCurve; theU: float; theValue: var Pnt2d; theD1: var Vec2d;
        theD2: var Vec2d) {.noSideEffect, importcpp: "D2",
                         header: "Geom2dEvaluator_Curve.hxx".}
proc d3*(this: Geom2dEvaluatorCurve; theU: float; theValue: var Pnt2d; theD1: var Vec2d;
        theD2: var Vec2d; theD3: var Vec2d) {.noSideEffect, importcpp: "D3",
                                        header: "Geom2dEvaluator_Curve.hxx".}
proc dn*(this: Geom2dEvaluatorCurve; theU: float; theDerU: int): Vec2d {.noSideEffect,
    importcpp: "DN", header: "Geom2dEvaluator_Curve.hxx".}
type
  Geom2dEvaluatorCurvebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Geom2dEvaluator_Curve::get_type_name(@)",
                            header: "Geom2dEvaluator_Curve.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) { return Standard_Type :: Instance < Geom2dEvaluator_Curve > ( ) ; } virtual const Handle ( Standard_Type ) & DynamicType ( ) const { return get_type_descriptor ( ) ; } }
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Geom2dEvaluator_Curve , Standard_Transient ) #  _Geom2dEvaluator_Curve_HeaderFile
## Error: expected ';'!!!














































