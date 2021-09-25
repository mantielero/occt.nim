##  Created on: 2000-01-19
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

discard "forward decl of XSAlgo_ToolContainer"
discard "forward decl of XSAlgo_ToolContainer"
type
  HandleXSAlgoToolContainer* = Handle[XSAlgoToolContainer]

## ! Returns tools used by AlgoContainer

type
  XSAlgoToolContainer* {.importcpp: "XSAlgo_ToolContainer",
                        header: "XSAlgo_ToolContainer.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructXSAlgoToolContainer*(): XSAlgoToolContainer {.constructor,
    importcpp: "XSAlgo_ToolContainer(@)", header: "XSAlgo_ToolContainer.hxx".}
type
  XSAlgoToolContainerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "XSAlgo_ToolContainer::get_type_name(@)",
                            header: "XSAlgo_ToolContainer.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "XSAlgo_ToolContainer::get_type_descriptor(@)",
    header: "XSAlgo_ToolContainer.hxx".}
proc dynamicType*(this: XSAlgoToolContainer): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "XSAlgo_ToolContainer.hxx".}
