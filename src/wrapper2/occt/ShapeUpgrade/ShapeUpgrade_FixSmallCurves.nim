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

discard "forward decl of ShapeUpgrade_SplitCurve3d"
discard "forward decl of ShapeUpgrade_SplitCurve2d"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom2d_Curve"
# when defined(Status):
#   discard
discard "forward decl of ShapeUpgrade_FixSmallCurves"
discard "forward decl of ShapeUpgrade_FixSmallCurves"
type
  HandleShapeUpgradeFixSmallCurves* = Handle[ShapeUpgradeFixSmallCurves]
  ShapeUpgradeFixSmallCurves* {.importcpp: "ShapeUpgrade_FixSmallCurves",
                               header: "ShapeUpgrade_FixSmallCurves.hxx", bycopy.} = object of ShapeUpgradeTool


proc constructShapeUpgradeFixSmallCurves*(): ShapeUpgradeFixSmallCurves {.
    constructor, importcpp: "ShapeUpgrade_FixSmallCurves(@)",
    header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc init*(this: var ShapeUpgradeFixSmallCurves; theEdge: TopoDS_Edge;
          theFace: TopoDS_Face) {.importcpp: "Init",
                                header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc approx*(this: var ShapeUpgradeFixSmallCurves; curve3d: var Handle[GeomCurve];
            curve2d: var Handle[Geom2dCurve]; curve2dR: var Handle[Geom2dCurve];
            first: var StandardReal; last: var StandardReal): StandardBoolean {.
    importcpp: "Approx", header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc setSplitCurve3dTool*(this: var ShapeUpgradeFixSmallCurves;
                         splitCurve3dTool: Handle[ShapeUpgradeSplitCurve3d]) {.
    importcpp: "SetSplitCurve3dTool", header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc setSplitCurve2dTool*(this: var ShapeUpgradeFixSmallCurves;
                         splitCurve2dTool: Handle[ShapeUpgradeSplitCurve2d]) {.
    importcpp: "SetSplitCurve2dTool", header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc status*(this: ShapeUpgradeFixSmallCurves; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_FixSmallCurves.hxx".}
type
  ShapeUpgradeFixSmallCurvesbaseType* = ShapeUpgradeTool

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_FixSmallCurves::get_type_name(@)",
                            header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_FixSmallCurves::get_type_descriptor(@)",
    header: "ShapeUpgrade_FixSmallCurves.hxx".}
proc dynamicType*(this: ShapeUpgradeFixSmallCurves): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeUpgrade_FixSmallCurves.hxx".}

