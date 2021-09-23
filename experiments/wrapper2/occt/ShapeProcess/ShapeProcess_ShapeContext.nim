##  Created on: 2000-08-22
##  Created by: Andrey BETENEV
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
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_DataMapOfShapeShape, ../TopAbs/TopAbs_ShapeEnum,
  ShapeProcess_Context, ../Standard/Standard_CString, ../Message/Message_Gravity,
  ../Standard/Standard_Boolean, ../GeomAbs/GeomAbs_Shape

discard "forward decl of ShapeExtend_MsgRegistrator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of BRepTools_Modifier"
discard "forward decl of Message_Msg"
discard "forward decl of ShapeProcess_ShapeContext"
discard "forward decl of ShapeProcess_ShapeContext"
type
  Handle_ShapeProcess_ShapeContext* = handle[ShapeProcess_ShapeContext]

## ! Extends Context to handle shapes
## ! Contains map of shape-shape, and messages
## ! attached to shapes

type
  ShapeProcess_ShapeContext* {.importcpp: "ShapeProcess_ShapeContext",
                              header: "ShapeProcess_ShapeContext.hxx", bycopy.} = object of ShapeProcess_Context


proc constructShapeProcess_ShapeContext*(file: Standard_CString;
                                        seq: Standard_CString = ""): ShapeProcess_ShapeContext {.
    constructor, importcpp: "ShapeProcess_ShapeContext(@)",
    header: "ShapeProcess_ShapeContext.hxx".}
proc constructShapeProcess_ShapeContext*(S: TopoDS_Shape; file: Standard_CString;
                                        seq: Standard_CString = ""): ShapeProcess_ShapeContext {.
    constructor, importcpp: "ShapeProcess_ShapeContext(@)",
    header: "ShapeProcess_ShapeContext.hxx".}
proc Init*(this: var ShapeProcess_ShapeContext; S: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeProcess_ShapeContext.hxx".}
proc Shape*(this: ShapeProcess_ShapeContext): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "ShapeProcess_ShapeContext.hxx".}
proc Result*(this: ShapeProcess_ShapeContext): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeProcess_ShapeContext.hxx".}
proc Map*(this: ShapeProcess_ShapeContext): TopTools_DataMapOfShapeShape {.
    noSideEffect, importcpp: "Map", header: "ShapeProcess_ShapeContext.hxx".}
proc Messages*(this: ShapeProcess_ShapeContext): handle[ShapeExtend_MsgRegistrator] {.
    noSideEffect, importcpp: "Messages", header: "ShapeProcess_ShapeContext.hxx".}
proc Messages*(this: var ShapeProcess_ShapeContext): var handle[
    ShapeExtend_MsgRegistrator] {.importcpp: "Messages",
                                 header: "ShapeProcess_ShapeContext.hxx".}
proc SetDetalisation*(this: var ShapeProcess_ShapeContext; level: TopAbs_ShapeEnum) {.
    importcpp: "SetDetalisation", header: "ShapeProcess_ShapeContext.hxx".}
proc GetDetalisation*(this: ShapeProcess_ShapeContext): TopAbs_ShapeEnum {.
    noSideEffect, importcpp: "GetDetalisation",
    header: "ShapeProcess_ShapeContext.hxx".}
proc SetResult*(this: var ShapeProcess_ShapeContext; S: TopoDS_Shape) {.
    importcpp: "SetResult", header: "ShapeProcess_ShapeContext.hxx".}
proc RecordModification*(this: var ShapeProcess_ShapeContext;
                        repl: TopTools_DataMapOfShapeShape;
                        msg: handle[ShapeExtend_MsgRegistrator] = 0) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc RecordModification*(this: var ShapeProcess_ShapeContext;
                        repl: handle[ShapeBuild_ReShape];
                        msg: handle[ShapeExtend_MsgRegistrator]) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc RecordModification*(this: var ShapeProcess_ShapeContext;
                        repl: handle[ShapeBuild_ReShape]) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc RecordModification*(this: var ShapeProcess_ShapeContext; sh: TopoDS_Shape;
                        repl: BRepTools_Modifier;
                        msg: handle[ShapeExtend_MsgRegistrator] = 0) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc AddMessage*(this: var ShapeProcess_ShapeContext; S: TopoDS_Shape;
                msg: Message_Msg; gravity: Message_Gravity = Message_Warning) {.
    importcpp: "AddMessage", header: "ShapeProcess_ShapeContext.hxx".}
proc GetContinuity*(this: ShapeProcess_ShapeContext; param: Standard_CString;
                   val: var GeomAbs_Shape): Standard_Boolean {.noSideEffect,
    importcpp: "GetContinuity", header: "ShapeProcess_ShapeContext.hxx".}
proc ContinuityVal*(this: ShapeProcess_ShapeContext; param: Standard_CString;
                   def: GeomAbs_Shape): GeomAbs_Shape {.noSideEffect,
    importcpp: "ContinuityVal", header: "ShapeProcess_ShapeContext.hxx".}
proc PrintStatistics*(this: ShapeProcess_ShapeContext) {.noSideEffect,
    importcpp: "PrintStatistics", header: "ShapeProcess_ShapeContext.hxx".}
proc SetNonManifold*(this: var ShapeProcess_ShapeContext;
                    theNonManifold: Standard_Boolean) {.
    importcpp: "SetNonManifold", header: "ShapeProcess_ShapeContext.hxx".}
proc IsNonManifold*(this: var ShapeProcess_ShapeContext): Standard_Boolean {.
    importcpp: "IsNonManifold", header: "ShapeProcess_ShapeContext.hxx".}
type
  ShapeProcess_ShapeContextbase_type* = ShapeProcess_Context

proc get_type_name*(): cstring {.importcpp: "ShapeProcess_ShapeContext::get_type_name(@)",
                              header: "ShapeProcess_ShapeContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeProcess_ShapeContext::get_type_descriptor(@)",
    header: "ShapeProcess_ShapeContext.hxx".}
proc DynamicType*(this: ShapeProcess_ShapeContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeProcess_ShapeContext.hxx".}