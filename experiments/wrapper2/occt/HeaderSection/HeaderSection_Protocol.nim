##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../StepData/StepData_Protocol,
  ../Standard/Standard_Integer, ../Standard/Standard_Type,
  ../Standard/Standard_CString

discard "forward decl of HeaderSection_Protocol"
discard "forward decl of HeaderSection_Protocol"
type
  Handle_HeaderSection_Protocol* = handle[HeaderSection_Protocol]

## ! Protocol for HeaderSection Entities
## ! It requires HeaderSection as a Resource

type
  HeaderSection_Protocol* {.importcpp: "HeaderSection_Protocol",
                           header: "HeaderSection_Protocol.hxx", bycopy.} = object of StepData_Protocol


proc constructHeaderSection_Protocol*(): HeaderSection_Protocol {.constructor,
    importcpp: "HeaderSection_Protocol(@)", header: "HeaderSection_Protocol.hxx".}
proc TypeNumber*(this: HeaderSection_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "HeaderSection_Protocol.hxx".}
proc SchemaName*(this: HeaderSection_Protocol): Standard_CString {.noSideEffect,
    importcpp: "SchemaName", header: "HeaderSection_Protocol.hxx".}
type
  HeaderSection_Protocolbase_type* = StepData_Protocol

proc get_type_name*(): cstring {.importcpp: "HeaderSection_Protocol::get_type_name(@)",
                              header: "HeaderSection_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HeaderSection_Protocol::get_type_descriptor(@)",
    header: "HeaderSection_Protocol.hxx".}
proc DynamicType*(this: HeaderSection_Protocol): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HeaderSection_Protocol.hxx".}