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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_Protocol, ../Standard/Standard_Integer,
  ../Standard/Standard_Type, ../Standard/Standard_Boolean

discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Standard_Transient"
discard "forward decl of IGESData_Protocol"
discard "forward decl of IGESData_Protocol"
type
  Handle_IGESData_Protocol* = handle[IGESData_Protocol]

## ! Description of basic Protocol for IGES
## ! This comprises treatement of IGESModel and Recognition of
## ! Undefined-FreeFormat-Entity

type
  IGESData_Protocol* {.importcpp: "IGESData_Protocol",
                      header: "IGESData_Protocol.hxx", bycopy.} = object of Interface_Protocol


proc constructIGESData_Protocol*(): IGESData_Protocol {.constructor,
    importcpp: "IGESData_Protocol(@)", header: "IGESData_Protocol.hxx".}
proc NbResources*(this: IGESData_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "IGESData_Protocol.hxx".}
proc Resource*(this: IGESData_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "IGESData_Protocol.hxx".}
proc TypeNumber*(this: IGESData_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESData_Protocol.hxx".}
proc NewModel*(this: IGESData_Protocol): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "IGESData_Protocol.hxx".}
proc IsSuitableModel*(this: IGESData_Protocol;
                     model: handle[Interface_InterfaceModel]): Standard_Boolean {.
    noSideEffect, importcpp: "IsSuitableModel", header: "IGESData_Protocol.hxx".}
proc UnknownEntity*(this: IGESData_Protocol): handle[Standard_Transient] {.
    noSideEffect, importcpp: "UnknownEntity", header: "IGESData_Protocol.hxx".}
proc IsUnknownEntity*(this: IGESData_Protocol; ent: handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "IsUnknownEntity", header: "IGESData_Protocol.hxx".}
type
  IGESData_Protocolbase_type* = Interface_Protocol

proc get_type_name*(): cstring {.importcpp: "IGESData_Protocol::get_type_name(@)",
                              header: "IGESData_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESData_Protocol::get_type_descriptor(@)",
    header: "IGESData_Protocol.hxx".}
proc DynamicType*(this: IGESData_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESData_Protocol.hxx".}