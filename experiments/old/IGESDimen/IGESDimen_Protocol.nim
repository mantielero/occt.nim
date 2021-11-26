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
discard "forward decl of IGESDimen_Protocol"
discard "forward decl of IGESDimen_Protocol"
type
  HandleC1C1* = Handle[IGESDimenProtocol]

## ! Description of Protocol for IGESDimen

type
  IGESDimenProtocol* {.importcpp: "IGESDimen_Protocol",
                      header: "IGESDimen_Protocol.hxx", bycopy.} = object of IGESDataProtocol


proc constructIGESDimenProtocol*(): IGESDimenProtocol {.constructor,
    importcpp: "IGESDimen_Protocol(@)", header: "IGESDimen_Protocol.hxx".}
proc nbResources*(this: IGESDimenProtocol): cint {.noSideEffect,
    importcpp: "NbResources", header: "IGESDimen_Protocol.hxx".}
proc resource*(this: IGESDimenProtocol; num: cint): Handle[InterfaceProtocol] {.
    noSideEffect, importcpp: "Resource", header: "IGESDimen_Protocol.hxx".}
proc typeNumber*(this: IGESDimenProtocol; atype: Handle[StandardType]): cint {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESDimen_Protocol.hxx".}
type
  IGESDimenProtocolbaseType* = IGESDataProtocol

proc getTypeName*(): cstring {.importcpp: "IGESDimen_Protocol::get_type_name(@)",
                            header: "IGESDimen_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESDimen_Protocol::get_type_descriptor(@)",
    header: "IGESDimen_Protocol.hxx".}
proc dynamicType*(this: IGESDimenProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDimen_Protocol.hxx".}

























