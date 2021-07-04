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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  ../Message/Message_Gravity

discard "forward decl of Standard_Transient"
discard "forward decl of Message_Msg"
discard "forward decl of TopoDS_Shape"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of ShapeExtend_BasicMsgRegistrator"
type
  Handle_ShapeExtend_BasicMsgRegistrator* = handle[ShapeExtend_BasicMsgRegistrator]

## ! Abstract class that can be used for attaching messages
## ! to the objects (e.g. shapes).
## ! It is used by ShapeHealing algorithms to attach a message
## ! describing encountered case (e.g. removing small edge from
## ! a wire).
## !
## ! The methods of this class are empty and redefined, for instance,
## ! in the classes for Data Exchange processors for attaching
## ! messages to interface file entities or CAS.CADE shapes.

type
  ShapeExtend_BasicMsgRegistrator* {.importcpp: "ShapeExtend_BasicMsgRegistrator", header: "ShapeExtend_BasicMsgRegistrator.hxx",
                                    bycopy.} = object of Standard_Transient ## ! Empty
                                                                       ## constructor.


proc constructShapeExtend_BasicMsgRegistrator*(): ShapeExtend_BasicMsgRegistrator {.
    constructor, importcpp: "ShapeExtend_BasicMsgRegistrator(@)",
    header: "ShapeExtend_BasicMsgRegistrator.hxx".}
proc Send*(this: var ShapeExtend_BasicMsgRegistrator;
          `object`: handle[Standard_Transient]; message: Message_Msg;
          gravity: Message_Gravity) {.importcpp: "Send", header: "ShapeExtend_BasicMsgRegistrator.hxx".}
proc Send*(this: var ShapeExtend_BasicMsgRegistrator; shape: TopoDS_Shape;
          message: Message_Msg; gravity: Message_Gravity) {.importcpp: "Send",
    header: "ShapeExtend_BasicMsgRegistrator.hxx".}
proc Send*(this: var ShapeExtend_BasicMsgRegistrator; message: Message_Msg;
          gravity: Message_Gravity) {.importcpp: "Send", header: "ShapeExtend_BasicMsgRegistrator.hxx".}
type
  ShapeExtend_BasicMsgRegistratorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "ShapeExtend_BasicMsgRegistrator::get_type_name(@)",
                              header: "ShapeExtend_BasicMsgRegistrator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeExtend_BasicMsgRegistrator::get_type_descriptor(@)",
    header: "ShapeExtend_BasicMsgRegistrator.hxx".}
proc DynamicType*(this: ShapeExtend_BasicMsgRegistrator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ShapeExtend_BasicMsgRegistrator.hxx".}