##  Created on: 1994-03-18
##  Created by: Yves FRICAUD
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

discard "forward decl of gp_Pnt2d"
discard "forward decl of Bisector_Curve"
discard "forward decl of Bisector_Curve"
type
  HandleBisectorCurve* = Handle[BisectorCurve]
  BisectorCurve* {.importcpp: "Bisector_Curve", header: "Bisector_Curve.hxx", bycopy.} = object of Geom2dCurve


proc parameter*(this: BisectorCurve; p: Pnt2d): float {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_Curve.hxx".}
proc isExtendAtStart*(this: BisectorCurve): bool {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_Curve.hxx".}
proc isExtendAtEnd*(this: BisectorCurve): bool {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_Curve.hxx".}
proc nbIntervals*(this: BisectorCurve): int {.noSideEffect, importcpp: "NbIntervals",
    header: "Bisector_Curve.hxx".}
proc intervalFirst*(this: BisectorCurve; index: int): float {.noSideEffect,
    importcpp: "IntervalFirst", header: "Bisector_Curve.hxx".}
proc intervalLast*(this: BisectorCurve; index: int): float {.noSideEffect,
    importcpp: "IntervalLast", header: "Bisector_Curve.hxx".}
type
  BisectorCurvebaseType* = Geom2dCurve

proc getTypeName*(): cstring {.importcpp: "Bisector_Curve::get_type_name(@)",
                            header: "Bisector_Curve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Bisector_Curve::get_type_descriptor(@)",
    header: "Bisector_Curve.hxx".}
proc dynamicType*(this: BisectorCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_Curve.hxx".}
