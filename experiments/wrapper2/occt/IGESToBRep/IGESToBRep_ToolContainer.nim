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

discard "forward decl of IGESToBRep_IGESBoundary"
discard "forward decl of IGESToBRep_ToolContainer"
discard "forward decl of IGESToBRep_ToolContainer"
type
  HandleC1C1* = Handle[IGESToBRepToolContainer]
  IGESToBRepToolContainer* {.importcpp: "IGESToBRep_ToolContainer",
                            header: "IGESToBRep_ToolContainer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructIGESToBRepToolContainer*(): IGESToBRepToolContainer {.constructor,
    importcpp: "IGESToBRep_ToolContainer(@)",
    header: "IGESToBRep_ToolContainer.hxx".}
proc iGESBoundary*(this: IGESToBRepToolContainer): Handle[IGESToBRepIGESBoundary] {.
    noSideEffect, importcpp: "IGESBoundary", header: "IGESToBRep_ToolContainer.hxx".}
type
  IGESToBRepToolContainerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESToBRep_ToolContainer::get_type_name(@)",
                            header: "IGESToBRep_ToolContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESToBRep_ToolContainer::get_type_descriptor(@)",
    header: "IGESToBRep_ToolContainer.hxx".}
proc dynamicType*(this: IGESToBRepToolContainer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESToBRep_ToolContainer.hxx".}

























