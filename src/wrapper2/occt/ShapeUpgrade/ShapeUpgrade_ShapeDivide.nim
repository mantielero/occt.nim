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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../Standard/Standard_Integer,
  ../Message/Message_Gravity, ../ShapeExtend/ShapeExtend_Status

discard "forward decl of ShapeUpgrade_FaceDivide"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of Message_Msg"
when defined(Status):
  discard
## ! Divides a all faces in shell with given criteria Shell.

type
  ShapeUpgrade_ShapeDivide* {.importcpp: "ShapeUpgrade_ShapeDivide",
                             header: "ShapeUpgrade_ShapeDivide.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Returns
                                                                                  ## the
                                                                                  ## tool
                                                                                  ## for
                                                                                  ## splitting
                                                                                  ## faces.


proc constructShapeUpgrade_ShapeDivide*(): ShapeUpgrade_ShapeDivide {.constructor,
    importcpp: "ShapeUpgrade_ShapeDivide(@)",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc constructShapeUpgrade_ShapeDivide*(S: TopoDS_Shape): ShapeUpgrade_ShapeDivide {.
    constructor, importcpp: "ShapeUpgrade_ShapeDivide(@)",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc Init*(this: var ShapeUpgrade_ShapeDivide; S: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc destroyShapeUpgrade_ShapeDivide*(this: var ShapeUpgrade_ShapeDivide) {.
    importcpp: "#.~ShapeUpgrade_ShapeDivide()",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetPrecision*(this: var ShapeUpgrade_ShapeDivide; Prec: Standard_Real) {.
    importcpp: "SetPrecision", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetMaxTolerance*(this: var ShapeUpgrade_ShapeDivide; maxtol: Standard_Real) {.
    importcpp: "SetMaxTolerance", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetMinTolerance*(this: var ShapeUpgrade_ShapeDivide; mintol: Standard_Real) {.
    importcpp: "SetMinTolerance", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetSurfaceSegmentMode*(this: var ShapeUpgrade_ShapeDivide;
                           Segment: Standard_Boolean) {.
    importcpp: "SetSurfaceSegmentMode", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc Perform*(this: var ShapeUpgrade_ShapeDivide;
             newContext: Standard_Boolean = Standard_True): Standard_Boolean {.
    importcpp: "Perform", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc Result*(this: ShapeUpgrade_ShapeDivide): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc GetContext*(this: ShapeUpgrade_ShapeDivide): handle[ShapeBuild_ReShape] {.
    noSideEffect, importcpp: "GetContext", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetContext*(this: var ShapeUpgrade_ShapeDivide;
                context: handle[ShapeBuild_ReShape]) {.importcpp: "SetContext",
    header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetMsgRegistrator*(this: var ShapeUpgrade_ShapeDivide;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc MsgRegistrator*(this: ShapeUpgrade_ShapeDivide): handle[
    ShapeExtend_BasicMsgRegistrator] {.noSideEffect, importcpp: "MsgRegistrator",
                                      header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SendMsg*(this: ShapeUpgrade_ShapeDivide; shape: TopoDS_Shape;
             message: Message_Msg; gravity: Message_Gravity = Message_Info) {.
    noSideEffect, importcpp: "SendMsg", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc Status*(this: ShapeUpgrade_ShapeDivide; status: ShapeExtend_Status): Standard_Boolean {.
    noSideEffect, importcpp: "Status", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetSplitFaceTool*(this: var ShapeUpgrade_ShapeDivide;
                      splitFaceTool: handle[ShapeUpgrade_FaceDivide]) {.
    importcpp: "SetSplitFaceTool", header: "ShapeUpgrade_ShapeDivide.hxx".}
proc SetEdgeMode*(this: var ShapeUpgrade_ShapeDivide; aEdgeMode: Standard_Integer) {.
    importcpp: "SetEdgeMode", header: "ShapeUpgrade_ShapeDivide.hxx".}