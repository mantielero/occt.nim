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

discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
discard "forward decl of ShapeUpgrade_FixSmallBezierCurves"
discard "forward decl of ShapeUpgrade_FixSmallBezierCurves"
type
  HandleShapeUpgradeFixSmallBezierCurves* = Handle[
      ShapeUpgradeFixSmallBezierCurves]
  ShapeUpgradeFixSmallBezierCurves* {.importcpp: "ShapeUpgrade_FixSmallBezierCurves", header: "ShapeUpgrade_FixSmallBezierCurves.hxx",
                                     bycopy.} = object of ShapeUpgradeFixSmallCurves


proc constructShapeUpgradeFixSmallBezierCurves*(): ShapeUpgradeFixSmallBezierCurves {.
    constructor, importcpp: "ShapeUpgrade_FixSmallBezierCurves(@)",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
proc approx*(this: var ShapeUpgradeFixSmallBezierCurves;
            curve3d: var Handle[GeomCurve]; curve2d: var Handle[Geom2dCurve];
            curve2dR: var Handle[Geom2dCurve]; first: var StandardReal;
            last: var StandardReal): StandardBoolean {.importcpp: "Approx",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
type
  ShapeUpgradeFixSmallBezierCurvesbaseType* = ShapeUpgradeFixSmallCurves

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_FixSmallBezierCurves::get_type_name(@)",
                            header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_FixSmallBezierCurves::get_type_descriptor(@)",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}
proc dynamicType*(this: ShapeUpgradeFixSmallBezierCurves): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_FixSmallBezierCurves.hxx".}

