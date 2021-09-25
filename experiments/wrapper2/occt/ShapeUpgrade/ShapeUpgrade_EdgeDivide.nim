##  Created on: 2000-05-24
##  Created by: data exchange team
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
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Edge"
discard "forward decl of ShapeUpgrade_EdgeDivide"
discard "forward decl of ShapeUpgrade_EdgeDivide"
type
  HandleShapeUpgradeEdgeDivide* = Handle[ShapeUpgradeEdgeDivide]
  ShapeUpgradeEdgeDivide* {.importcpp: "ShapeUpgrade_EdgeDivide",
                           header: "ShapeUpgrade_EdgeDivide.hxx", bycopy.} = object of ShapeUpgradeTool ##
                                                                                                 ## !
                                                                                                 ## Empty
                                                                                                 ## constructor


proc constructShapeUpgradeEdgeDivide*(): ShapeUpgradeEdgeDivide {.constructor,
    importcpp: "ShapeUpgrade_EdgeDivide(@)", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc clear*(this: var ShapeUpgradeEdgeDivide) {.importcpp: "Clear",
    header: "ShapeUpgrade_EdgeDivide.hxx".}
proc setFace*(this: var ShapeUpgradeEdgeDivide; f: TopoDS_Face) {.
    importcpp: "SetFace", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc compute*(this: var ShapeUpgradeEdgeDivide; e: TopoDS_Edge): bool {.
    importcpp: "Compute", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc hasCurve2d*(this: ShapeUpgradeEdgeDivide): bool {.noSideEffect,
    importcpp: "HasCurve2d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc hasCurve3d*(this: ShapeUpgradeEdgeDivide): bool {.noSideEffect,
    importcpp: "HasCurve3d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc knots2d*(this: ShapeUpgradeEdgeDivide): Handle[TColStdHSequenceOfReal] {.
    noSideEffect, importcpp: "Knots2d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc knots3d*(this: ShapeUpgradeEdgeDivide): Handle[TColStdHSequenceOfReal] {.
    noSideEffect, importcpp: "Knots3d", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc setSplitCurve2dTool*(this: var ShapeUpgradeEdgeDivide;
                         splitCurve2dTool: Handle[ShapeUpgradeSplitCurve2d]) {.
    importcpp: "SetSplitCurve2dTool", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc setSplitCurve3dTool*(this: var ShapeUpgradeEdgeDivide;
                         splitCurve3dTool: Handle[ShapeUpgradeSplitCurve3d]) {.
    importcpp: "SetSplitCurve3dTool", header: "ShapeUpgrade_EdgeDivide.hxx".}
proc getSplitCurve2dTool*(this: ShapeUpgradeEdgeDivide): Handle[
    ShapeUpgradeSplitCurve2d] {.noSideEffect, importcpp: "GetSplitCurve2dTool",
                               header: "ShapeUpgrade_EdgeDivide.hxx".}
proc getSplitCurve3dTool*(this: ShapeUpgradeEdgeDivide): Handle[
    ShapeUpgradeSplitCurve3d] {.noSideEffect, importcpp: "GetSplitCurve3dTool",
                               header: "ShapeUpgrade_EdgeDivide.hxx".}
type
  ShapeUpgradeEdgeDividebaseType* = ShapeUpgradeTool

proc getTypeName*(): cstring {.importcpp: "ShapeUpgrade_EdgeDivide::get_type_name(@)",
                            header: "ShapeUpgrade_EdgeDivide.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeUpgrade_EdgeDivide::get_type_descriptor(@)",
    header: "ShapeUpgrade_EdgeDivide.hxx".}
proc dynamicType*(this: ShapeUpgradeEdgeDivide): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeUpgrade_EdgeDivide.hxx".}
