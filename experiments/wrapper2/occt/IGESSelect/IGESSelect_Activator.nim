##  Created on: 1994-06-03
##  Created by: Christian CAILLET
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
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Activator,
  ../IFSelect/IFSelect_ReturnStatus, ../Standard/Standard_Integer,
  ../Standard/Standard_CString

discard "forward decl of IFSelect_SessionPilot"
discard "forward decl of IGESSelect_Activator"
discard "forward decl of IGESSelect_Activator"
type
  Handle_IGESSelect_Activator* = handle[IGESSelect_Activator]

## ! Performs Actions specific to IGESSelect, i.e. creation of
## ! IGES Selections and Dispatches, plus dumping specific to IGES

type
  IGESSelect_Activator* {.importcpp: "IGESSelect_Activator",
                         header: "IGESSelect_Activator.hxx", bycopy.} = object of IFSelect_Activator


proc constructIGESSelect_Activator*(): IGESSelect_Activator {.constructor,
    importcpp: "IGESSelect_Activator(@)", header: "IGESSelect_Activator.hxx".}
proc Do*(this: var IGESSelect_Activator; number: Standard_Integer;
        pilot: handle[IFSelect_SessionPilot]): IFSelect_ReturnStatus {.
    importcpp: "Do", header: "IGESSelect_Activator.hxx".}
proc Help*(this: IGESSelect_Activator; number: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "Help", header: "IGESSelect_Activator.hxx".}
type
  IGESSelect_Activatorbase_type* = IFSelect_Activator

proc get_type_name*(): cstring {.importcpp: "IGESSelect_Activator::get_type_name(@)",
                              header: "IGESSelect_Activator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSelect_Activator::get_type_descriptor(@)",
    header: "IGESSelect_Activator.hxx".}
proc DynamicType*(this: IGESSelect_Activator): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSelect_Activator.hxx".}