##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_ElementDescriptor"
discard "forward decl of StepElement_ElementDescriptor"
type
  HandleC1C1* = Handle[StepElementElementDescriptor]

## ! Representation of STEP entity ElementDescriptor

type
  StepElementElementDescriptor* {.importcpp: "StepElement_ElementDescriptor",
                                 header: "StepElement_ElementDescriptor.hxx",
                                 bycopy.} = object of StandardTransient ## ! Empty constructor


proc constructStepElementElementDescriptor*(): StepElementElementDescriptor {.
    constructor, importcpp: "StepElement_ElementDescriptor(@)",
    header: "StepElement_ElementDescriptor.hxx".}
proc init*(this: var StepElementElementDescriptor;
          aTopologyOrder: StepElementElementOrder;
          aDescription: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepElement_ElementDescriptor.hxx".}
proc topologyOrder*(this: StepElementElementDescriptor): StepElementElementOrder {.
    noSideEffect, importcpp: "TopologyOrder",
    header: "StepElement_ElementDescriptor.hxx".}
proc setTopologyOrder*(this: var StepElementElementDescriptor;
                      topologyOrder: StepElementElementOrder) {.
    importcpp: "SetTopologyOrder", header: "StepElement_ElementDescriptor.hxx".}
proc description*(this: StepElementElementDescriptor): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description",
                              header: "StepElement_ElementDescriptor.hxx".}
proc setDescription*(this: var StepElementElementDescriptor;
                    description: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription", header: "StepElement_ElementDescriptor.hxx".}
type
  StepElementElementDescriptorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepElement_ElementDescriptor::get_type_name(@)",
                            header: "StepElement_ElementDescriptor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_ElementDescriptor::get_type_descriptor(@)",
    header: "StepElement_ElementDescriptor.hxx".}
proc dynamicType*(this: StepElementElementDescriptor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_ElementDescriptor.hxx".}