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
discard "forward decl of StepElement_Volume3dElementDescriptor"
discard "forward decl of StepElement_Volume3dElementDescriptor"
type
  HandleC1C1* = Handle[StepElementVolume3dElementDescriptor]

## ! Representation of STEP entity Volume3dElementDescriptor

type
  StepElementVolume3dElementDescriptor* {.
      importcpp: "StepElement_Volume3dElementDescriptor",
      header: "StepElement_Volume3dElementDescriptor.hxx", bycopy.} = object of StepElementElementDescriptor ##
                                                                                                      ## !
                                                                                                      ## Empty
                                                                                                      ## constructor


proc constructStepElementVolume3dElementDescriptor*(): StepElementVolume3dElementDescriptor {.
    constructor, importcpp: "StepElement_Volume3dElementDescriptor(@)",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc init*(this: var StepElementVolume3dElementDescriptor;
          aElementDescriptorTopologyOrder: StepElementElementOrder;
          aElementDescriptorDescription: Handle[TCollectionHAsciiString];
          aPurpose: Handle[StepElementHArray1OfVolumeElementPurposeMember];
          aShape: StepElementVolume3dElementShape) {.importcpp: "Init",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc purpose*(this: StepElementVolume3dElementDescriptor): Handle[
    StepElementHArray1OfVolumeElementPurposeMember] {.noSideEffect,
    importcpp: "Purpose", header: "StepElement_Volume3dElementDescriptor.hxx".}
proc setPurpose*(this: var StepElementVolume3dElementDescriptor;
                purpose: Handle[StepElementHArray1OfVolumeElementPurposeMember]) {.
    importcpp: "SetPurpose", header: "StepElement_Volume3dElementDescriptor.hxx".}
proc shape*(this: StepElementVolume3dElementDescriptor): StepElementVolume3dElementShape {.
    noSideEffect, importcpp: "Shape",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc setShape*(this: var StepElementVolume3dElementDescriptor;
              shape: StepElementVolume3dElementShape) {.importcpp: "SetShape",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
type
  StepElementVolume3dElementDescriptorbaseType* = StepElementElementDescriptor

proc getTypeName*(): cstring {.importcpp: "StepElement_Volume3dElementDescriptor::get_type_name(@)",
                            header: "StepElement_Volume3dElementDescriptor.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepElement_Volume3dElementDescriptor::get_type_descriptor(@)",
    header: "StepElement_Volume3dElementDescriptor.hxx".}
proc dynamicType*(this: StepElementVolume3dElementDescriptor): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepElement_Volume3dElementDescriptor.hxx".}

























