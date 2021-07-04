##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../BRepTools/BRepTools_Modification, ../Message/Message_Gravity

discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Message_Msg"
discard "forward decl of ShapeCustom_Modification"
discard "forward decl of ShapeCustom_Modification"
type
  Handle_ShapeCustom_Modification* = handle[ShapeCustom_Modification]

## ! A base class of Modification's from ShapeCustom.
## ! Implements message sending mechanism.

type
  ShapeCustom_Modification* {.importcpp: "ShapeCustom_Modification",
                             header: "ShapeCustom_Modification.hxx", bycopy.} = object of BRepTools_Modification ##
                                                                                                          ## !
                                                                                                          ## Sets
                                                                                                          ## message
                                                                                                          ## registrator


proc SetMsgRegistrator*(this: var ShapeCustom_Modification;
                       msgreg: handle[ShapeExtend_BasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeCustom_Modification.hxx".}
proc MsgRegistrator*(this: ShapeCustom_Modification): handle[
    ShapeExtend_BasicMsgRegistrator] {.noSideEffect, importcpp: "MsgRegistrator",
                                      header: "ShapeCustom_Modification.hxx".}
proc SendMsg*(this: ShapeCustom_Modification; shape: TopoDS_Shape;
             message: Message_Msg; gravity: Message_Gravity = Message_Info) {.
    noSideEffect, importcpp: "SendMsg", header: "ShapeCustom_Modification.hxx".}
type
  ShapeCustom_Modificationbase_type* = BRepTools_Modification

proc get_type_name*(): cstring {.importcpp: "ShapeCustom_Modification::get_type_name(@)",
                              header: "ShapeCustom_Modification.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ShapeCustom_Modification::get_type_descriptor(@)",
    header: "ShapeCustom_Modification.hxx".}
proc DynamicType*(this: ShapeCustom_Modification): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeCustom_Modification.hxx".}