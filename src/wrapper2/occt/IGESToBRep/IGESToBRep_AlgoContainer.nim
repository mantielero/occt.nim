##  Created on: 2000-02-07
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of IGESToBRep_ToolContainer"
discard "forward decl of IGESToBRep_AlgoContainer"
discard "forward decl of IGESToBRep_AlgoContainer"
type
  Handle_IGESToBRep_AlgoContainer* = handle[IGESToBRep_AlgoContainer]
  IGESToBRep_AlgoContainer* {.importcpp: "IGESToBRep_AlgoContainer",
                             header: "IGESToBRep_AlgoContainer.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructIGESToBRep_AlgoContainer*(): IGESToBRep_AlgoContainer {.constructor,
    importcpp: "IGESToBRep_AlgoContainer(@)",
    header: "IGESToBRep_AlgoContainer.hxx".}
proc SetToolContainer*(this: var IGESToBRep_AlgoContainer;
                      TC: handle[IGESToBRep_ToolContainer]) {.
    importcpp: "SetToolContainer", header: "IGESToBRep_AlgoContainer.hxx".}
proc ToolContainer*(this: IGESToBRep_AlgoContainer): handle[
    IGESToBRep_ToolContainer] {.noSideEffect, importcpp: "ToolContainer",
                               header: "IGESToBRep_AlgoContainer.hxx".}
type
  IGESToBRep_AlgoContainerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "IGESToBRep_AlgoContainer::get_type_name(@)",
                              header: "IGESToBRep_AlgoContainer.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESToBRep_AlgoContainer::get_type_descriptor(@)",
    header: "IGESToBRep_AlgoContainer.hxx".}
proc DynamicType*(this: IGESToBRep_AlgoContainer): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESToBRep_AlgoContainer.hxx".}