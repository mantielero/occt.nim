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
discard "forward decl of IGESDefs_Protocol"
discard "forward decl of IGESDefs_Protocol"
type
  Handle_IGESDefs_Protocol* = handle[IGESDefs_Protocol]

## ! Description of Protocol for IGESDefs

type
  IGESDefs_Protocol* {.importcpp: "IGESDefs_Protocol",
                      header: "IGESDefs_Protocol.hxx", bycopy.} = object of IGESData_Protocol


proc constructIGESDefs_Protocol*(): IGESDefs_Protocol {.constructor,
    importcpp: "IGESDefs_Protocol(@)", header: "IGESDefs_Protocol.hxx".}
proc NbResources*(this: IGESDefs_Protocol): Standard_Integer {.noSideEffect,
    importcpp: "NbResources", header: "IGESDefs_Protocol.hxx".}
proc Resource*(this: IGESDefs_Protocol; num: Standard_Integer): handle[
    Interface_Protocol] {.noSideEffect, importcpp: "Resource",
                         header: "IGESDefs_Protocol.hxx".}
proc TypeNumber*(this: IGESDefs_Protocol; atype: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "TypeNumber", header: "IGESDefs_Protocol.hxx".}
type
  IGESDefs_Protocolbase_type* = IGESData_Protocol

proc get_type_name*(): cstring {.importcpp: "IGESDefs_Protocol::get_type_name(@)",
                              header: "IGESDefs_Protocol.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESDefs_Protocol::get_type_descriptor(@)",
    header: "IGESDefs_Protocol.hxx".}
proc DynamicType*(this: IGESDefs_Protocol): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESDefs_Protocol.hxx".}