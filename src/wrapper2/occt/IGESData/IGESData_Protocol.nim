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
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_Protocol"
type
  HandleIGESDataProtocol* = Handle[IGESDataProtocol]

## ! Description of basic Protocol for IGES
## ! This comprises treatement of IGESModel and Recognition of
## ! Undefined-FreeFormat-Entity

type
  IGESDataProtocol* {.importcpp: "IGESData_Protocol",
                     header: "IGESData_Protocol.hxx", bycopy.} = object of InterfaceProtocol


proc constructIGESDataProtocol*(): IGESDataProtocol {.constructor,
    importcpp: "IGESData_Protocol(@)", header: "IGESData_Protocol.hxx".}
proc nbResources*(this: IGESDataProtocol): StandardInteger {.noSideEffect,
    importcpp: "NbResources", header: "IGESData_Protocol.hxx".}
proc resource*(this: IGESDataProtocol; num: StandardInteger): Handle[
    InterfaceProtocol] {.noSideEffect, importcpp: "Resource",
                        header: "IGESData_Protocol.hxx".}
proc typeNumber*(this: IGESDataProtocol; atype: Handle[StandardType]): StandardInteger {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESData_Protocol.hxx".}
proc newModel*(this: IGESDataProtocol): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "IGESData_Protocol.hxx".}
proc isSuitableModel*(this: IGESDataProtocol;
                     model: Handle[InterfaceInterfaceModel]): StandardBoolean {.
    noSideEffect, importcpp: "IsSuitableModel", header: "IGESData_Protocol.hxx".}
proc unknownEntity*(this: IGESDataProtocol): Handle[StandardTransient] {.
    noSideEffect, importcpp: "UnknownEntity", header: "IGESData_Protocol.hxx".}
proc isUnknownEntity*(this: IGESDataProtocol; ent: Handle[StandardTransient]): StandardBoolean {.
    noSideEffect, importcpp: "IsUnknownEntity", header: "IGESData_Protocol.hxx".}
type
  IGESDataProtocolbaseType* = InterfaceProtocol

proc getTypeName*(): cstring {.importcpp: "IGESData_Protocol::get_type_name(@)",
                            header: "IGESData_Protocol.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_Protocol::get_type_descriptor(@)",
    header: "IGESData_Protocol.hxx".}
proc dynamicType*(this: IGESDataProtocol): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_Protocol.hxx".}

