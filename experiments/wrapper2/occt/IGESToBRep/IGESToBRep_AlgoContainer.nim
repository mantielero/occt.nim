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

discard "forward decl of IGESToBRep_ToolContainer"
discard "forward decl of IGESToBRep_AlgoContainer"
discard "forward decl of IGESToBRep_AlgoContainer"
type
  HandleIGESToBRepAlgoContainer* = Handle[IGESToBRepAlgoContainer]
  IGESToBRepAlgoContainer* {.importcpp: "IGESToBRep_AlgoContainer",
                            header: "IGESToBRep_AlgoContainer.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructIGESToBRepAlgoContainer*(): IGESToBRepAlgoContainer {.constructor,
    importcpp: "IGESToBRep_AlgoContainer(@)",
    header: "IGESToBRep_AlgoContainer.hxx".}
proc setToolContainer*(this: var IGESToBRepAlgoContainer;
                      tc: Handle[IGESToBRepToolContainer]) {.
    importcpp: "SetToolContainer", header: "IGESToBRep_AlgoContainer.hxx".}
proc toolContainer*(this: IGESToBRepAlgoContainer): Handle[IGESToBRepToolContainer] {.
    noSideEffect, importcpp: "ToolContainer",
    header: "IGESToBRep_AlgoContainer.hxx".}
type
  IGESToBRepAlgoContainerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "IGESToBRep_AlgoContainer::get_type_name(@)",
                            header: "IGESToBRep_AlgoContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESToBRep_AlgoContainer::get_type_descriptor(@)",
    header: "IGESToBRep_AlgoContainer.hxx".}
proc dynamicType*(this: IGESToBRepAlgoContainer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESToBRep_AlgoContainer.hxx".}
