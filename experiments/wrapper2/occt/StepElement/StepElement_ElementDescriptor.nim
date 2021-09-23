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

import
  ../Standard/Standard, ../Standard/Standard_Type, StepElement_ElementOrder,
  ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_ElementDescriptor"
discard "forward decl of StepElement_ElementDescriptor"
type
  Handle_StepElement_ElementDescriptor* = handle[StepElement_ElementDescriptor]

## ! Representation of STEP entity ElementDescriptor

type
  StepElement_ElementDescriptor* {.importcpp: "StepElement_ElementDescriptor",
                                  header: "StepElement_ElementDescriptor.hxx",
                                  bycopy.} = object of Standard_Transient ## ! Empty constructor


proc constructStepElement_ElementDescriptor*(): StepElement_ElementDescriptor {.
    constructor, importcpp: "StepElement_ElementDescriptor(@)",
    header: "StepElement_ElementDescriptor.hxx".}
proc Init*(this: var StepElement_ElementDescriptor;
          aTopologyOrder: StepElement_ElementOrder;
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepElement_ElementDescriptor.hxx".}
proc TopologyOrder*(this: StepElement_ElementDescriptor): StepElement_ElementOrder {.
    noSideEffect, importcpp: "TopologyOrder",
    header: "StepElement_ElementDescriptor.hxx".}
proc SetTopologyOrder*(this: var StepElement_ElementDescriptor;
                      TopologyOrder: StepElement_ElementOrder) {.
    importcpp: "SetTopologyOrder", header: "StepElement_ElementDescriptor.hxx".}
proc Description*(this: StepElement_ElementDescriptor): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description",
                               header: "StepElement_ElementDescriptor.hxx".}
proc SetDescription*(this: var StepElement_ElementDescriptor;
                    Description: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription", header: "StepElement_ElementDescriptor.hxx".}
type
  StepElement_ElementDescriptorbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepElement_ElementDescriptor::get_type_name(@)",
                              header: "StepElement_ElementDescriptor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_ElementDescriptor::get_type_descriptor(@)",
    header: "StepElement_ElementDescriptor.hxx".}
proc DynamicType*(this: StepElement_ElementDescriptor): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_ElementDescriptor.hxx".}