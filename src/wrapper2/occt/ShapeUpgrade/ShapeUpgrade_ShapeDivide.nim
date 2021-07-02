##  Created on: 1999-04-26
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

discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of Message_Msg"
# when defined(Status):
#   discard
## ! Divides a all faces in shell with given criteria Shell.

type
  ShapeUpgradeShapeDivide* {.importcpp: "ShapeUpgrade_ShapeDivide",
                            header: "ShapeUpgrade_ShapeDivide.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## the
                                                                                 ## tool
                                                                                 ## for
                                                                                 ## splitting
                                                                                 ## faces.


proc constructShapeUpgradeShapeDivide*(): ShapeUpgradeShapeDivide {.constructor,
    importcpp: "ShapeUpgrade_ShapeDivide(@)",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc constructShapeUpgradeShapeDivide*(s: TopoDS_Shape): ShapeUpgradeShapeDivide {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivide(@)",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc init*(this: var ShapeUpgradeShapeDivide; s: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc destroyShapeUpgradeShapeDivide*(this: var ShapeUpgradeShapeDivide) {.
    importcpp: "#.~ShapeUpgrade_ShapeDivide()",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setPrecision*(this: var ShapeUpgradeShapeDivide; prec: StandardReal) {.
    importcpp: "SetPrecision", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setMaxTolerance*(this: var ShapeUpgradeShapeDivide; maxtol: StandardReal) {.
    importcpp: "SetMaxTolerance", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setMinTolerance*(this: var ShapeUpgradeShapeDivide; mintol: StandardReal) {.
    importcpp: "SetMinTolerance", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setSurfaceSegmentMode*(this: var ShapeUpgradeShapeDivide;
                           segment: StandardBoolean) {.
    importcpp: "SetSurfaceSegmentMode", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc perform*(this: var ShapeUpgradeShapeDivide;
             newContext: StandardBoolean = standardTrue): StandardBoolean {.
    importcpp: "Perform", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc result*(this: ShapeUpgradeShapeDivide): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc getContext*(this: ShapeUpgradeShapeDivide): Handle[ShapeBuildReShape] {.
    noSideEffect, importcpp: "GetContext", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setContext*(this: var ShapeUpgradeShapeDivide;
                context: Handle[ShapeBuildReShape]) {.importcpp: "SetContext",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setMsgRegistrator*(this: var ShapeUpgradeShapeDivide;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc msgRegistrator*(this: ShapeUpgradeShapeDivide): Handle[
    ShapeExtendBasicMsgRegistrator] {.noSideEffect, importcpp: "MsgRegistrator",
                                     header: "ShapeUpgrade_ShapeDivide.hxx".}
proc sendMsg*(this: ShapeUpgradeShapeDivide; shape: TopoDS_Shape;
             message: MessageMsg; gravity: MessageGravity = messageInfo) {.
    noSideEffect, importcpp: "SendMsg", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc status*(this: ShapeUpgradeShapeDivide; status: ShapeExtendStatus): StandardBoolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setSplitFaceTool*(this: var ShapeUpgradeShapeDivide;
                      splitFaceTool: Handle[ShapeUpgradeFaceDivide]) {.
    importcpp: "SetSplitFaceTool", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc setEdgeMode*(this: var ShapeUpgradeShapeDivide; aEdgeMode: StandardInteger) {.
    importcpp: "SetEdgeMode", header: "ShapeUpgrade_ShapeDivide.hxx".}

