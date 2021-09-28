##  Created on: 2000-05-10
##  Created by: Andrey BETENEV
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

discard "forward decl of StepBasic_ExternallyDefinedItem"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_SourceItem"
discard "forward decl of StepBasic_ExternalSource"
discard "forward decl of StepAP214_ExternallyDefinedClass"
discard "forward decl of StepAP214_ExternallyDefinedClass"
type
  HandleC1C1* = Handle[StepAP214ExternallyDefinedClass]

## ! Representation of STEP entity ExternallyDefinedClass

type
  StepAP214ExternallyDefinedClass* {.importcpp: "StepAP214_ExternallyDefinedClass", header: "StepAP214_ExternallyDefinedClass.hxx",
                                    bycopy.} = object of StepAP214Class ## ! Empty constructor


proc constructStepAP214ExternallyDefinedClass*(): StepAP214ExternallyDefinedClass {.
    constructor, importcpp: "StepAP214_ExternallyDefinedClass(@)",
    header: "StepAP214_ExternallyDefinedClass.hxx".}
proc init*(this: var StepAP214ExternallyDefinedClass;
          aGroupName: Handle[TCollectionHAsciiString]; hasGroupDescription: bool;
          aGroupDescription: Handle[TCollectionHAsciiString];
          aExternallyDefinedItemItemId: StepBasicSourceItem;
          aExternallyDefinedItemSource: Handle[StepBasicExternalSource]) {.
    importcpp: "Init", header: "StepAP214_ExternallyDefinedClass.hxx".}
proc externallyDefinedItem*(this: StepAP214ExternallyDefinedClass): Handle[
    StepBasicExternallyDefinedItem] {.noSideEffect,
                                     importcpp: "ExternallyDefinedItem", header: "StepAP214_ExternallyDefinedClass.hxx".}
proc setExternallyDefinedItem*(this: var StepAP214ExternallyDefinedClass;
    externallyDefinedItem: Handle[StepBasicExternallyDefinedItem]) {.
    importcpp: "SetExternallyDefinedItem",
    header: "StepAP214_ExternallyDefinedClass.hxx".}
type
  StepAP214ExternallyDefinedClassbaseType* = StepAP214Class

proc getTypeName*(): cstring {.importcpp: "StepAP214_ExternallyDefinedClass::get_type_name(@)",
                            header: "StepAP214_ExternallyDefinedClass.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP214_ExternallyDefinedClass::get_type_descriptor(@)",
    header: "StepAP214_ExternallyDefinedClass.hxx".}
proc dynamicType*(this: StepAP214ExternallyDefinedClass): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP214_ExternallyDefinedClass.hxx".}

























