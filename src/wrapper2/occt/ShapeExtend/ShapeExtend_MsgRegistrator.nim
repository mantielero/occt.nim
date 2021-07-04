##  Created on: 2000-01-28
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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ShapeExtend_DataMapOfTransientListOfMsg, ShapeExtend_DataMapOfShapeListOfMsg,
  ShapeExtend_BasicMsgRegistrator, ../Message/Message_Gravity

discard "forward decl of Standard_Transient"
discard "forward decl of Message_Msg"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeExtend_MsgRegistrator"
discard "forward decl of ShapeExtend_MsgRegistrator"
type
  Handle_ShapeExtend_MsgRegistrator* = handle[ShapeExtend_MsgRegistrator]

## ! Attaches messages to the objects (generic Transient or shape).
## ! The objects of this class are transmitted to the Shape Healing
## ! algorithms so that they could collect messages occurred during
## ! processing.
## !
## ! Messages are added to the Maps (stored as a field) that can be
## ! used, for instance, by Data Exchange processors to attach those
## ! messages to initial file entities.

type
  ShapeExtend_MsgRegistrator* {.importcpp: "ShapeExtend_MsgRegistrator",
                               header: "ShapeExtend_MsgRegistrator.hxx", bycopy.} = object of ShapeExtend_BasicMsgRegistrator ##
                                                                                                                       ## !
                                                                                                                       ## Creates
                                                                                                                       ## an
                                                                                                                       ## object.


proc constructShapeExtend_MsgRegistrator*(): ShapeExtend_MsgRegistrator {.
    constructor, importcpp: "ShapeExtend_MsgRegistrator(@)",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc Send*(this: var ShapeExtend_MsgRegistrator;
          `object`: handle[Standard_Transient]; message: Message_Msg;
          gravity: Message_Gravity) {.importcpp: "Send",
                                    header: "ShapeExtend_MsgRegistrator.hxx".}
proc Send*(this: var ShapeExtend_MsgRegistrator; shape: TopoDS_Shape;
          message: Message_Msg; gravity: Message_Gravity) {.importcpp: "Send",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc MapTransient*(this: ShapeExtend_MsgRegistrator): ShapeExtend_DataMapOfTransientListOfMsg {.
    noSideEffect, importcpp: "MapTransient",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc MapShape*(this: ShapeExtend_MsgRegistrator): ShapeExtend_DataMapOfShapeListOfMsg {.
    noSideEffect, importcpp: "MapShape", header: "ShapeExtend_MsgRegistrator.hxx".}
type
  ShapeExtend_MsgRegistratorbase_type* = ShapeExtend_BasicMsgRegistrator

proc get_type_name*(): cstring {.importcpp: "ShapeExtend_MsgRegistrator::get_type_name(@)",
                              header: "ShapeExtend_MsgRegistrator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeExtend_MsgRegistrator::get_type_descriptor(@)",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc DynamicType*(this: ShapeExtend_MsgRegistrator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeExtend_MsgRegistrator.hxx".}