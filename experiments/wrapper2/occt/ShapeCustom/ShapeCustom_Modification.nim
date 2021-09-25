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

discard "forward decl of ShapeExtend_BasicMsgRegistrator"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Message_Msg"
discard "forward decl of ShapeCustom_Modification"
discard "forward decl of ShapeCustom_Modification"
type
  HandleShapeCustomModification* = Handle[ShapeCustomModification]

## ! A base class of Modification's from ShapeCustom.
## ! Implements message sending mechanism.

type
  ShapeCustomModification* {.importcpp: "ShapeCustom_Modification",
                            header: "ShapeCustom_Modification.hxx", bycopy.} = object of BRepToolsModification ##
                                                                                                        ## !
                                                                                                        ## Sets
                                                                                                        ## message
                                                                                                        ## registrator


proc setMsgRegistrator*(this: var ShapeCustomModification;
                       msgreg: Handle[ShapeExtendBasicMsgRegistrator]) {.
    importcpp: "SetMsgRegistrator", header: "ShapeCustom_Modification.hxx".}
proc msgRegistrator*(this: ShapeCustomModification): Handle[
    ShapeExtendBasicMsgRegistrator] {.noSideEffect, importcpp: "MsgRegistrator",
                                     header: "ShapeCustom_Modification.hxx".}
proc sendMsg*(this: ShapeCustomModification; shape: TopoDS_Shape;
             message: MessageMsg; gravity: MessageGravity = messageInfo) {.
    noSideEffect, importcpp: "SendMsg", header: "ShapeCustom_Modification.hxx".}
type
  ShapeCustomModificationbaseType* = BRepToolsModification

proc getTypeName*(): cstring {.importcpp: "ShapeCustom_Modification::get_type_name(@)",
                            header: "ShapeCustom_Modification.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "ShapeCustom_Modification::get_type_descriptor(@)",
    header: "ShapeCustom_Modification.hxx".}
proc dynamicType*(this: ShapeCustomModification): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "ShapeCustom_Modification.hxx".}
