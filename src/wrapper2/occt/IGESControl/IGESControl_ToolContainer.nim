##  Created on: 2000-02-08
##  Created by: data exchange team
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../IGESToBRep/IGESToBRep_ToolContainer

discard "forward decl of IGESToBRep_IGESBoundary"
discard "forward decl of IGESControl_ToolContainer"
discard "forward decl of IGESControl_ToolContainer"
type
  Handle_IGESControl_ToolContainer* = handle[IGESControl_ToolContainer]
  IGESControl_ToolContainer* {.importcpp: "IGESControl_ToolContainer",
                              header: "IGESControl_ToolContainer.hxx", bycopy.} = object of IGESToBRep_ToolContainer ##
                                                                                                              ## !
                                                                                                              ## Empty
                                                                                                              ## constructor


proc constructIGESControl_ToolContainer*(): IGESControl_ToolContainer {.
    constructor, importcpp: "IGESControl_ToolContainer(@)",
    header: "IGESControl_ToolContainer.hxx".}
proc IGESBoundary*(this: IGESControl_ToolContainer): handle[IGESToBRep_IGESBoundary] {.
    noSideEffect, importcpp: "IGESBoundary",
    header: "IGESControl_ToolContainer.hxx".}
type
  IGESControl_ToolContainerbase_type* = IGESToBRep_ToolContainer

proc get_type_name*(): cstring {.importcpp: "IGESControl_ToolContainer::get_type_name(@)",
                              header: "IGESControl_ToolContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESControl_ToolContainer::get_type_descriptor(@)",
    header: "IGESControl_ToolContainer.hxx".}
proc DynamicType*(this: IGESControl_ToolContainer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_ToolContainer.hxx".}