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

discard "forward decl of Message_Messenger"
type
  TopoDS_AlertAttribute* {.importcpp: "TopoDS_AlertAttribute",
                          header: "TopoDS_AlertAttribute.hxx", bycopy.} = object of MessageAttributeStream ##
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

  TopoDS_AlertAttributebaseType* = MessageAttributeStream

proc getTypeName*(): cstring {.importcpp: "TopoDS_AlertAttribute::get_type_name(@)",
                            header: "TopoDS_AlertAttribute.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopoDS_AlertAttribute::get_type_descriptor(@)",
    header: "TopoDS_AlertAttribute.hxx".}
proc dynamicType*(this: TopoDS_AlertAttribute): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TopoDS_AlertAttribute.hxx".}
proc constructTopoDS_AlertAttribute*(theShape: TopoDS_Shape; theName: TCollectionAsciiString = tCollectionAsciiString()): TopoDS_AlertAttribute {.
    constructor, importcpp: "TopoDS_AlertAttribute(@)",
    header: "TopoDS_AlertAttribute.hxx".}
proc getShape*(this: TopoDS_AlertAttribute): TopoDS_Shape {.noSideEffect,
    importcpp: "GetShape", header: "TopoDS_AlertAttribute.hxx".}
proc send*(theMessenger: Handle[MessageMessenger]; theShape: TopoDS_Shape) {.
    importcpp: "TopoDS_AlertAttribute::Send(@)",
    header: "TopoDS_AlertAttribute.hxx".}
proc dumpJson*(this: TopoDS_AlertAttribute; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TopoDS_AlertAttribute.hxx".}
proc `<<`*(theMessenger: Handle[MessageMessenger]; theShape: TopoDS_Shape): var Handle[
    MessageMessenger] {.importcpp: "(# << #)", header: "TopoDS_AlertAttribute.hxx".}