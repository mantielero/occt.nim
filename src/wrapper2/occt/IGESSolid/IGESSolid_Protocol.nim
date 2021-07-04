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
  ../Standard/Standard, ../Standard/Standard_Type, ../IGESData/IGESData_Protocol,
  ../Standard/Standard_Integer, ../Standard/Standard_Type

discard "forward decl of Interface_Protocol"
discard "forward decl of IGESSolid_Protocol"
discard "forward decl of IGESSolid_Protocol"
type
  Handle_IGESSolid_Protocol* = handle[IGESSolid_Protocol]

## ! Description of Protocol for IGESSolid

type
  IGESSolid_Protocol* {.importcpp: "IGESSolid_Protocol",
                       header: "IGESSolid_Protocol.hxx", bycopy.} = object of IGESData_Protocol


proc constructIGESSolid_Protocol*(): IGESSolid_Protocol {.constructor,
    importcpp: "IGESSolid_Protocol(@)", header: "IGESSolid_Protocol.hxx".}
proc NbResources*(this: IGESSolid_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "IGESSolid_Protocol.hxx".}
proc Resource*(this: IGESSolid_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "IGESSolid_Protocol.hxx".}
proc TypeNumber*(this: IGESSolid_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESSolid_Protocol.hxx".}
type
  IGESSolid_Protocolbase_type* = IGESData_Protocol

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Protocol::get_type_name(@)",
                              header: "IGESSolid_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Protocol::get_type_descriptor(@)",
    header: "IGESSolid_Protocol.hxx".}
proc DynamicType*(this: IGESSolid_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Protocol.hxx".}