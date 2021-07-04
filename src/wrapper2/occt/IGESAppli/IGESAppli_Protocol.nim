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
discard "forward decl of IGESAppli_Protocol"
discard "forward decl of IGESAppli_Protocol"
type
  Handle_IGESAppli_Protocol* = handle[IGESAppli_Protocol]

## ! Description of Protocol for IGESAppli

type
  IGESAppli_Protocol* {.importcpp: "IGESAppli_Protocol",
                       header: "IGESAppli_Protocol.hxx", bycopy.} = object of IGESData_Protocol


proc constructIGESAppli_Protocol*(): IGESAppli_Protocol {.constructor,
    importcpp: "IGESAppli_Protocol(@)", header: "IGESAppli_Protocol.hxx".}
proc NbResources*(this: IGESAppli_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "IGESAppli_Protocol.hxx".}
proc Resource*(this: IGESAppli_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "IGESAppli_Protocol.hxx".}
proc TypeNumber*(this: IGESAppli_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESAppli_Protocol.hxx".}
type
  IGESAppli_Protocolbase_type* = IGESData_Protocol

proc get_type_name*(): cstring {.importcpp: "IGESAppli_Protocol::get_type_name(@)",
                              header: "IGESAppli_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESAppli_Protocol::get_type_descriptor(@)",
    header: "IGESAppli_Protocol.hxx".}
proc DynamicType*(this: IGESAppli_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESAppli_Protocol.hxx".}