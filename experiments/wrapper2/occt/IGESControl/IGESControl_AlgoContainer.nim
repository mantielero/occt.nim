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

discard "forward decl of IGESControl_AlgoContainer"
discard "forward decl of IGESControl_AlgoContainer"
type
  HandleIGESControlAlgoContainer* = Handle[IGESControlAlgoContainer]
  IGESControlAlgoContainer* {.importcpp: "IGESControl_AlgoContainer",
                             header: "IGESControl_AlgoContainer.hxx", bycopy.} = object of IGESToBRepAlgoContainer ##
                                                                                                            ## !
                                                                                                            ## Empty
                                                                                                            ## constructor


proc constructIGESControlAlgoContainer*(): IGESControlAlgoContainer {.constructor,
    importcpp: "IGESControl_AlgoContainer(@)",
    header: "IGESControl_AlgoContainer.hxx".}
type
  IGESControlAlgoContainerbaseType* = IGESToBRepAlgoContainer

proc getTypeName*(): cstring {.importcpp: "IGESControl_AlgoContainer::get_type_name(@)",
                            header: "IGESControl_AlgoContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESControl_AlgoContainer::get_type_descriptor(@)",
    header: "IGESControl_AlgoContainer.hxx".}
proc dynamicType*(this: IGESControlAlgoContainer): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_AlgoContainer.hxx".}
