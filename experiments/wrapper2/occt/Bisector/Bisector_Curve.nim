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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Geom2d/Geom2d_Curve,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of gp_Pnt2d"
discard "forward decl of Bisector_Curve"
discard "forward decl of Bisector_Curve"
type
  Handle_Bisector_Curve* = handle[Bisector_Curve]
  Bisector_Curve* {.importcpp: "Bisector_Curve", header: "Bisector_Curve.hxx", bycopy.} = object of Geom2d_Curve


proc Parameter*(this: Bisector_Curve; P: gp_Pnt2d): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "Bisector_Curve.hxx".}
proc IsExtendAtStart*(this: Bisector_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtStart", header: "Bisector_Curve.hxx".}
proc IsExtendAtEnd*(this: Bisector_Curve): Standard_Boolean {.noSideEffect,
    importcpp: "IsExtendAtEnd", header: "Bisector_Curve.hxx".}
proc NbIntervals*(this: Bisector_Curve): Standard_Integer {.noSideEffect,
    importcpp: "NbIntervals", header: "Bisector_Curve.hxx".}
proc IntervalFirst*(this: Bisector_Curve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalFirst", header: "Bisector_Curve.hxx".}
proc IntervalLast*(this: Bisector_Curve; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "IntervalLast", header: "Bisector_Curve.hxx".}
type
  Bisector_Curvebase_type* = Geom2d_Curve

proc get_type_name*(): cstring {.importcpp: "Bisector_Curve::get_type_name(@)",
                              header: "Bisector_Curve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Bisector_Curve::get_type_descriptor(@)",
    header: "Bisector_Curve.hxx".}
proc DynamicType*(this: Bisector_Curve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Bisector_Curve.hxx".}