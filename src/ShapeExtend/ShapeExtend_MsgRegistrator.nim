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

discard "forward decl of Standard_Transient"
discard "forward decl of Message_Msg"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeExtend_MsgRegistrator"
discard "forward decl of ShapeExtend_MsgRegistrator"
type
  HandleC1C1* = Handle[ShapeExtendMsgRegistrator]

## ! Attaches messages to the objects (generic Transient or shape).
## ! The objects of this class are transmitted to the Shape Healing
## ! algorithms so that they could collect messages occurred during
## ! processing.
## !
## ! Messages are added to the Maps (stored as a field) that can be
## ! used, for instance, by Data Exchange processors to attach those
## ! messages to initial file entities.

type
  ShapeExtendMsgRegistrator* {.importcpp: "ShapeExtend_MsgRegistrator",
                              header: "ShapeExtend_MsgRegistrator.hxx", bycopy.} = object of ShapeExtendBasicMsgRegistrator ##
                                                                                                                     ## !
                                                                                                                     ## Creates
                                                                                                                     ## an
                                                                                                                     ## object.


proc constructShapeExtendMsgRegistrator*(): ShapeExtendMsgRegistrator {.
    constructor, importcpp: "ShapeExtend_MsgRegistrator(@)",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc send*(this: var ShapeExtendMsgRegistrator; `object`: Handle[StandardTransient];
          message: MessageMsg; gravity: MessageGravity) {.importcpp: "Send",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc send*(this: var ShapeExtendMsgRegistrator; shape: TopoDS_Shape;
          message: MessageMsg; gravity: MessageGravity) {.importcpp: "Send",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc mapTransient*(this: ShapeExtendMsgRegistrator): ShapeExtendDataMapOfTransientListOfMsg {.
    noSideEffect, importcpp: "MapTransient",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc mapShape*(this: ShapeExtendMsgRegistrator): ShapeExtendDataMapOfShapeListOfMsg {.
    noSideEffect, importcpp: "MapShape", header: "ShapeExtend_MsgRegistrator.hxx".}
type
  ShapeExtendMsgRegistratorbaseType* = ShapeExtendBasicMsgRegistrator

proc getTypeName*(): cstring {.importcpp: "ShapeExtend_MsgRegistrator::get_type_name(@)",
                            header: "ShapeExtend_MsgRegistrator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeExtend_MsgRegistrator::get_type_descriptor(@)",
    header: "ShapeExtend_MsgRegistrator.hxx".}
proc dynamicType*(this: ShapeExtendMsgRegistrator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeExtend_MsgRegistrator.hxx".}

























