##  Created on: 1993-05-05
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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

discard "forward decl of Interface_Protocol"
discard "forward decl of IGESGraph_Protocol"
discard "forward decl of IGESGraph_Protocol"
type
  HandleIGESGraphProtocol* = Handle[IGESGraphProtocol]

## ! Description of Protocol for IGESGraph

type
  IGESGraphProtocol* {.importcpp: "IGESGraph_Protocol",
                      header: "IGESGraph_Protocol.hxx", bycopy.} = object of IGESDataProtocol


proc constructIGESGraphProtocol*(): IGESGraphProtocol {.constructor,
    importcpp: "IGESGraph_Protocol(@)", header: "IGESGraph_Protocol.hxx".}
proc nbResources*(this: IGESGraphProtocol): int {.noSideEffect,
    importcpp: "NbResources", header: "IGESGraph_Protocol.hxx".}
proc resource*(this: IGESGraphProtocol; num: int): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Resource", header: "IGESGraph_Protocol.hxx".}
proc typeNumber*(this: IGESGraphProtocol; atype: Handle[StandardType]): int {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESGraph_Protocol.hxx".}
type
  IGESGraphProtocolbaseType* = IGESDataProtocol

proc getTypeName*(): cstring {.importcpp: "IGESGraph_Protocol::get_type_name(@)",
                            header: "IGESGraph_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_Protocol::get_type_descriptor(@)",
    header: "IGESGraph_Protocol.hxx".}
proc dynamicType*(this: IGESGraphProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESGraph_Protocol.hxx".}
