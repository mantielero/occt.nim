##  Created on: 1999-06-22
##  Created by: Roman LYGIN
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of Geom_Curve"
discard "forward decl of gp_Trsf"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of ShapeExtend_ComplexCurve"
discard "forward decl of ShapeExtend_ComplexCurve"
type
  HandleShapeExtendComplexCurve* = Handle[ShapeExtendComplexCurve]

## ! Defines a curve which consists of several segments.
## ! Implements basic interface to it.

type
  ShapeExtendComplexCurve* {.importcpp: "ShapeExtend_ComplexCurve",
                            header: "ShapeExtend_ComplexCurve.hxx", bycopy.} = object of GeomCurve ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## number
                                                                                            ## of
                                                                                            ## curves


proc nbCurves*(this: ShapeExtendComplexCurve): StandardInteger {.noSideEffect,
    importcpp: "NbCurves", header: "ShapeExtend_ComplexCurve.hxx".}
proc curve*(this: ShapeExtendComplexCurve; index: StandardInteger): Handle[GeomCurve] {.
    noSideEffect, importcpp: "Curve", header: "ShapeExtend_ComplexCurve.hxx".}
proc locateParameter*(this: ShapeExtendComplexCurve; u: StandardReal;
                     uOut: var StandardReal): StandardInteger {.noSideEffect,
    importcpp: "LocateParameter", header: "ShapeExtend_ComplexCurve.hxx".}
proc localToGlobal*(this: ShapeExtendComplexCurve; index: StandardInteger;
                   ulocal: StandardReal): StandardReal {.noSideEffect,
    importcpp: "LocalToGlobal", header: "ShapeExtend_ComplexCurve.hxx".}
proc transform*(this: var ShapeExtendComplexCurve; t: GpTrsf) {.
    importcpp: "Transform", header: "ShapeExtend_ComplexCurve.hxx".}
proc reversedParameter*(this: ShapeExtendComplexCurve; u: StandardReal): StandardReal {.
    noSideEffect, importcpp: "ReversedParameter",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc firstParameter*(this: ShapeExtendComplexCurve): StandardReal {.noSideEffect,
    importcpp: "FirstParameter", header: "ShapeExtend_ComplexCurve.hxx".}
proc lastParameter*(this: ShapeExtendComplexCurve): StandardReal {.noSideEffect,
    importcpp: "LastParameter", header: "ShapeExtend_ComplexCurve.hxx".}
proc isClosed*(this: ShapeExtendComplexCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsClosed", header: "ShapeExtend_ComplexCurve.hxx".}
proc isPeriodic*(this: ShapeExtendComplexCurve): StandardBoolean {.noSideEffect,
    importcpp: "IsPeriodic", header: "ShapeExtend_ComplexCurve.hxx".}
proc continuity*(this: ShapeExtendComplexCurve): GeomAbsShape {.noSideEffect,
    importcpp: "Continuity", header: "ShapeExtend_ComplexCurve.hxx".}
proc isCN*(this: ShapeExtendComplexCurve; n: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "IsCN", header: "ShapeExtend_ComplexCurve.hxx".}
proc d0*(this: ShapeExtendComplexCurve; u: StandardReal; p: var GpPnt) {.noSideEffect,
    importcpp: "D0", header: "ShapeExtend_ComplexCurve.hxx".}
proc d1*(this: ShapeExtendComplexCurve; u: StandardReal; p: var GpPnt; v1: var GpVec) {.
    noSideEffect, importcpp: "D1", header: "ShapeExtend_ComplexCurve.hxx".}
proc d2*(this: ShapeExtendComplexCurve; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec) {.noSideEffect, importcpp: "D2",
                      header: "ShapeExtend_ComplexCurve.hxx".}
proc d3*(this: ShapeExtendComplexCurve; u: StandardReal; p: var GpPnt; v1: var GpVec;
        v2: var GpVec; v3: var GpVec) {.noSideEffect, importcpp: "D3",
                                  header: "ShapeExtend_ComplexCurve.hxx".}
proc dn*(this: ShapeExtendComplexCurve; u: StandardReal; n: StandardInteger): GpVec {.
    noSideEffect, importcpp: "DN", header: "ShapeExtend_ComplexCurve.hxx".}
proc getScaleFactor*(this: ShapeExtendComplexCurve; ind: StandardInteger): StandardReal {.
    noSideEffect, importcpp: "GetScaleFactor",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc checkConnectivity*(this: var ShapeExtendComplexCurve; preci: StandardReal): StandardBoolean {.
    importcpp: "CheckConnectivity", header: "ShapeExtend_ComplexCurve.hxx".}
type
  ShapeExtendComplexCurvebaseType* = GeomCurve

proc getTypeName*(): cstring {.importcpp: "ShapeExtend_ComplexCurve::get_type_name(@)",
                            header: "ShapeExtend_ComplexCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeExtend_ComplexCurve::get_type_descriptor(@)",
    header: "ShapeExtend_ComplexCurve.hxx".}
proc dynamicType*(this: ShapeExtendComplexCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeExtend_ComplexCurve.hxx".}

