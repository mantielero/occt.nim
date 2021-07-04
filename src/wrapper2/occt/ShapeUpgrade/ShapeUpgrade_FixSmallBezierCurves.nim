##  Created on: 2000-06-07
##  Created by: Galina KULIKOVA
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, ShapeUpgrade_FixSmallCurves,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeUpgrade_FixSmallBezierCurves"
discard "forward decl of ShapeUpgrade_FixSmallBezierCurves"
type
  Handle_ShapeUpgrade_FixSmallBezierCurves* = handle[
      ShapeUpgrade_FixSmallBezierCurves]
  ShapeUpgrade_FixSmallBezierCurves* {.importcpp: "ShapeUpgrade_FixSmallBezierCurves", header: "ShapeUpgrade_FixSmallBezierCurves.hxx",
                                      bycopy.} = object of ShapeUpgrade_FixSmallCurves


proc constructShapeUpgrade_FixSmallBezierCurves*(): ShapeUpgrade_FixSmallBezierCurves {.
    constructor, importcpp: "ShapeUpgrade_FixSmallBezierCurves(@)",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
proc Approx*(this: var ShapeUpgrade_FixSmallBezierCurves;
            Curve3d: var handle[Geom_Curve]; Curve2d: var handle[Geom2d_Curve];
            Curve2dR: var handle[Geom2d_Curve]; First: var Standard_Real;
            Last: var Standard_Real): Standard_Boolean {.importcpp: "Approx",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
type
  ShapeUpgrade_FixSmallBezierCurvesbase_type* = ShapeUpgrade_FixSmallCurves

proc get_type_name*(): cstring {.importcpp: "ShapeUpgrade_FixSmallBezierCurves::get_type_name(@)",
                              header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeUpgrade_FixSmallBezierCurves::get_type_descriptor(@)",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
proc DynamicType*(this: ShapeUpgrade_FixSmallBezierCurves): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}