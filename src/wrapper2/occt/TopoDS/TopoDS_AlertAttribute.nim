##  Created on: 2018-06-10
##  Created by: Natalia Ermolaeva
##  Copyright (c) 2018-2020 OPEN CASCADE SAS
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
  ../Message/Message_AttributeStream, ../Message/Message,
  ../Message/Message_Messenger, ../Message/Message_Report, TopoDS_Shape

discard "forward decl of Message_Messenger"
type
  TopoDS_AlertAttribute* {.importcpp: "TopoDS_AlertAttribute",
                          header: "TopoDS_AlertAttribute.hxx", bycopy.} = object of Message_AttributeStream ##
                                                                                                     ## !
                                                                                                     ## Constructor
                                                                                                     ## with
                                                                                                     ## shape
                                                                                                     ## argument
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Push
                                                                                                     ## shape
                                                                                                     ## information
                                                                                                     ## into
                                                                                                     ## messenger

  TopoDS_AlertAttributebase_type* = Message_AttributeStream

proc get_type_name*(): cstring {.importcpp: "TopoDS_AlertAttribute::get_type_name(@)",
                              header: "TopoDS_AlertAttribute.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopoDS_AlertAttribute::get_type_descriptor(@)",
    header: "TopoDS_AlertAttribute.hxx".}
proc DynamicType*(this: TopoDS_AlertAttribute): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TopoDS_AlertAttribute.hxx".}
proc constructTopoDS_AlertAttribute*(theShape: TopoDS_Shape; theName: TCollection_AsciiString = TCollection_AsciiString()): TopoDS_AlertAttribute {.
    constructor, importcpp: "TopoDS_AlertAttribute(@)",
    header: "TopoDS_AlertAttribute.hxx".}
proc GetShape*(this: TopoDS_AlertAttribute): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "TopoDS_AlertAttribute.hxx".}
proc Send*(theMessenger: handle[Message_Messenger]; theShape: TopoDS_Shape) {.
    importcpp: "TopoDS_AlertAttribute::Send(@)",
    header: "TopoDS_AlertAttribute.hxx".}
proc DumpJson*(this: TopoDS_AlertAttribute; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TopoDS_AlertAttribute.hxx".}
proc `<<`*(theMessenger: handle[Message_Messenger]; theShape: TopoDS_Shape): var handle[
    Message_Messenger] {.importcpp: "(# << #)", header: "TopoDS_AlertAttribute.hxx".}