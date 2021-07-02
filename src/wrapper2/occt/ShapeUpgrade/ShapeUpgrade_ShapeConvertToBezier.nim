##  Created on: 1999-05-14
##  Created by: Pavel DURANDIN
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of Message_Msg"
type
  ShapeUpgradeShapeConvertToBezier* {.importcpp: "ShapeUpgrade_ShapeConvertToBezier", header: "ShapeUpgrade_ShapeConvertToBezier.hxx",
                                     bycopy.} = object of ShapeUpgradeShapeDivide ## !
                                                                             ## Empty
                                                                             ## constructor.
                                                                             ## !
                                                                             ## Returns the
                                                                             ## tool for
                                                                             ## dividing
                                                                             ## faces.


proc constructShapeUpgradeShapeConvertToBezier*(): ShapeUpgradeShapeConvertToBezier {.
    constructor, importcpp: "ShapeUpgrade_ShapeConvertToBezier(@)",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc constructShapeUpgradeShapeConvertToBezier*(s: TopoDS_Shape): ShapeUpgradeShapeConvertToBezier {.
    constructor, importcpp: "ShapeUpgrade_ShapeConvertToBezier(@)",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc set2dConversion*(this: var ShapeUpgradeShapeConvertToBezier;
                     mode: StandardBoolean) {.importcpp: "Set2dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc get2dConversion*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "Get2dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc set3dConversion*(this: var ShapeUpgradeShapeConvertToBezier;
                     mode: StandardBoolean) {.importcpp: "Set3dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc get3dConversion*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "Get3dConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc setSurfaceConversion*(this: var ShapeUpgradeShapeConvertToBezier;
                          mode: StandardBoolean) {.
    importcpp: "SetSurfaceConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc getSurfaceConversion*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetSurfaceConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc set3dLineConversion*(this: var ShapeUpgradeShapeConvertToBezier;
                         mode: StandardBoolean) {.
    importcpp: "Set3dLineConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc get3dLineConversion*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "Get3dLineConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc set3dCircleConversion*(this: var ShapeUpgradeShapeConvertToBezier;
                           mode: StandardBoolean) {.
    importcpp: "Set3dCircleConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc get3dCircleConversion*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "Get3dCircleConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc set3dConicConversion*(this: var ShapeUpgradeShapeConvertToBezier;
                          mode: StandardBoolean) {.
    importcpp: "Set3dConicConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc get3dConicConversion*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "Get3dConicConversion",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc setPlaneMode*(this: var ShapeUpgradeShapeConvertToBezier; mode: StandardBoolean) {.
    importcpp: "SetPlaneMode", header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc getPlaneMode*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetPlaneMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc setRevolutionMode*(this: var ShapeUpgradeShapeConvertToBezier;
                       mode: StandardBoolean) {.importcpp: "SetRevolutionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc getRevolutionMode*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetRevolutionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc setExtrusionMode*(this: var ShapeUpgradeShapeConvertToBezier;
                      mode: StandardBoolean) {.importcpp: "SetExtrusionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc getExtrusionMode*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetExtrusionMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc setBSplineMode*(this: var ShapeUpgradeShapeConvertToBezier;
                    mode: StandardBoolean) {.importcpp: "SetBSplineMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc getBSplineMode*(this: ShapeUpgradeShapeConvertToBezier): StandardBoolean {.
    noSideEffect, importcpp: "GetBSplineMode",
    header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}
proc perform*(this: var ShapeUpgradeShapeConvertToBezier;
             newContext: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "Perform", header: "ShapeUpgrade_ShapeConvertToBezier.hxx".}

