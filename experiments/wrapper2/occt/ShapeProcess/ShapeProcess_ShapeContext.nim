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

discard "forward decl of ShapeExtend_MsgRegistrator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeBuild_ReShape"
discard "forward decl of BRepTools_Modifier"
discard "forward decl of Message_Msg"
discard "forward decl of ShapeProcess_ShapeContext"
discard "forward decl of ShapeProcess_ShapeContext"
type
  HandleShapeProcessShapeContext* = Handle[ShapeProcessShapeContext]

## ! Extends Context to handle shapes
## ! Contains map of shape-shape, and messages
## ! attached to shapes

type
  ShapeProcessShapeContext* {.importcpp: "ShapeProcess_ShapeContext",
                             header: "ShapeProcess_ShapeContext.hxx", bycopy.} = object of ShapeProcessContext


proc constructShapeProcessShapeContext*(file: StandardCString;
                                       seq: StandardCString = ""): ShapeProcessShapeContext {.
    constructor, importcpp: "ShapeProcess_ShapeContext(@)",
    header: "ShapeProcess_ShapeContext.hxx".}
proc constructShapeProcessShapeContext*(s: TopoDS_Shape; file: StandardCString;
                                       seq: StandardCString = ""): ShapeProcessShapeContext {.
    constructor, importcpp: "ShapeProcess_ShapeContext(@)",
    header: "ShapeProcess_ShapeContext.hxx".}
proc init*(this: var ShapeProcessShapeContext; s: TopoDS_Shape) {.importcpp: "Init",
    header: "ShapeProcess_ShapeContext.hxx".}
proc shape*(this: ShapeProcessShapeContext): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "ShapeProcess_ShapeContext.hxx".}
proc result*(this: ShapeProcessShapeContext): TopoDS_Shape {.noSideEffect,
    importcpp: "Result", header: "ShapeProcess_ShapeContext.hxx".}
proc map*(this: ShapeProcessShapeContext): TopToolsDataMapOfShapeShape {.
    noSideEffect, importcpp: "Map", header: "ShapeProcess_ShapeContext.hxx".}
proc messages*(this: ShapeProcessShapeContext): Handle[ShapeExtendMsgRegistrator] {.
    noSideEffect, importcpp: "Messages", header: "ShapeProcess_ShapeContext.hxx".}
proc messages*(this: var ShapeProcessShapeContext): var Handle[
    ShapeExtendMsgRegistrator] {.importcpp: "Messages",
                                header: "ShapeProcess_ShapeContext.hxx".}
proc setDetalisation*(this: var ShapeProcessShapeContext; level: TopAbsShapeEnum) {.
    importcpp: "SetDetalisation", header: "ShapeProcess_ShapeContext.hxx".}
proc getDetalisation*(this: ShapeProcessShapeContext): TopAbsShapeEnum {.
    noSideEffect, importcpp: "GetDetalisation",
    header: "ShapeProcess_ShapeContext.hxx".}
proc setResult*(this: var ShapeProcessShapeContext; s: TopoDS_Shape) {.
    importcpp: "SetResult", header: "ShapeProcess_ShapeContext.hxx".}
proc recordModification*(this: var ShapeProcessShapeContext;
                        repl: TopToolsDataMapOfShapeShape;
                        msg: Handle[ShapeExtendMsgRegistrator] = 0) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc recordModification*(this: var ShapeProcessShapeContext;
                        repl: Handle[ShapeBuildReShape];
                        msg: Handle[ShapeExtendMsgRegistrator]) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc recordModification*(this: var ShapeProcessShapeContext;
                        repl: Handle[ShapeBuildReShape]) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc recordModification*(this: var ShapeProcessShapeContext; sh: TopoDS_Shape;
                        repl: BRepToolsModifier;
                        msg: Handle[ShapeExtendMsgRegistrator] = 0) {.
    importcpp: "RecordModification", header: "ShapeProcess_ShapeContext.hxx".}
proc addMessage*(this: var ShapeProcessShapeContext; s: TopoDS_Shape; msg: MessageMsg;
                gravity: MessageGravity = messageWarning) {.importcpp: "AddMessage",
    header: "ShapeProcess_ShapeContext.hxx".}
proc getContinuity*(this: ShapeProcessShapeContext; param: StandardCString;
                   val: var GeomAbsShape): bool {.noSideEffect,
    importcpp: "GetContinuity", header: "ShapeProcess_ShapeContext.hxx".}
proc continuityVal*(this: ShapeProcessShapeContext; param: StandardCString;
                   def: GeomAbsShape): GeomAbsShape {.noSideEffect,
    importcpp: "ContinuityVal", header: "ShapeProcess_ShapeContext.hxx".}
proc printStatistics*(this: ShapeProcessShapeContext) {.noSideEffect,
    importcpp: "PrintStatistics", header: "ShapeProcess_ShapeContext.hxx".}
proc setNonManifold*(this: var ShapeProcessShapeContext; theNonManifold: bool) {.
    importcpp: "SetNonManifold", header: "ShapeProcess_ShapeContext.hxx".}
proc isNonManifold*(this: var ShapeProcessShapeContext): bool {.
    importcpp: "IsNonManifold", header: "ShapeProcess_ShapeContext.hxx".}
type
  ShapeProcessShapeContextbaseType* = ShapeProcessContext

proc getTypeName*(): cstring {.importcpp: "ShapeProcess_ShapeContext::get_type_name(@)",
                            header: "ShapeProcess_ShapeContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeProcess_ShapeContext::get_type_descriptor(@)",
    header: "ShapeProcess_ShapeContext.hxx".}
proc dynamicType*(this: ShapeProcessShapeContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeProcess_ShapeContext.hxx".}
