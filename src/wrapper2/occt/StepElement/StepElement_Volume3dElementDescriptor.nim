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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepElement_HArray1OfVolumeElementPurposeMember,
  StepElement_Volume3dElementShape, StepElement_ElementDescriptor,
  StepElement_ElementOrder

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepElement_Volume3dElementDescriptor"
discard "forward decl of StepElement_Volume3dElementDescriptor"
type
  Handle_StepElement_Volume3dElementDescriptor* = handle[
      StepElement_Volume3dElementDescriptor]

## ! Representation of STEP entity Volume3dElementDescriptor

type
  StepElement_Volume3dElementDescriptor* {.
      importcpp: "StepElement_Volume3dElementDescriptor",
      header: "StepElement_Volume3dElementDescriptor.hxx", bycopy.} = object of StepElement_ElementDescriptor ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepElement_Volume3dElementDescriptor*(): StepElement_Volume3dElementDescriptor {.
    constructor, importcpp: "StepElement_Volume3dElementDescriptor(@)",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc Init*(this: var StepElement_Volume3dElementDescriptor;
          aElementDescriptor_TopologyOrder: StepElement_ElementOrder;
          aElementDescriptor_Description: handle[TCollection_HAsciiString];
          aPurpose: handle[StepElement_HArray1OfVolumeElementPurposeMember];
          aShape: StepElement_Volume3dElementShape) {.importcpp: "Init",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc Purpose*(this: StepElement_Volume3dElementDescriptor): handle[
    StepElement_HArray1OfVolumeElementPurposeMember] {.noSideEffect,
    importcpp: "Purpose", header: "StepElement_Volume3dElementDescriptor.hxx".}
proc SetPurpose*(this: var StepElement_Volume3dElementDescriptor; Purpose: handle[
    StepElement_HArray1OfVolumeElementPurposeMember]) {.importcpp: "SetPurpose",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc Shape*(this: StepElement_Volume3dElementDescriptor): StepElement_Volume3dElementShape {.
    noSideEffect, importcpp: "Shape",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc SetShape*(this: var StepElement_Volume3dElementDescriptor;
              Shape: StepElement_Volume3dElementShape) {.importcpp: "SetShape",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
type
  StepElement_Volume3dElementDescriptorbase_type* = StepElement_ElementDescriptor

proc get_type_name*(): cstring {.importcpp: "StepElement_Volume3dElementDescriptor::get_type_name(@)", header: "StepElement_Volume3dElementDescriptor.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepElement_Volume3dElementDescriptor::get_type_descriptor(@)",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc DynamicType*(this: StepElement_Volume3dElementDescriptor): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepElement_Volume3dElementDescriptor.hxx".}