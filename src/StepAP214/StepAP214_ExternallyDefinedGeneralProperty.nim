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
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
discard "forward decl of StepAP214_ExternallyDefinedGeneralProperty"
type
  HandleC1C1* = Handle[StepAP214ExternallyDefinedGeneralProperty]

## ! Representation of STEP entity ExternallyDefinedGeneralProperty

type
  StepAP214ExternallyDefinedGeneralProperty* {.
      importcpp: "StepAP214_ExternallyDefinedGeneralProperty",
      header: "StepAP214_ExternallyDefinedGeneralProperty.hxx", bycopy.} = object of StepBasicGeneralProperty ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepAP214ExternallyDefinedGeneralProperty*(): StepAP214ExternallyDefinedGeneralProperty {.
    constructor, importcpp: "StepAP214_ExternallyDefinedGeneralProperty(@)",
    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc init*(this: var StepAP214ExternallyDefinedGeneralProperty;
          aGeneralPropertyId: Handle[TCollectionHAsciiString];
          aGeneralPropertyName: Handle[TCollectionHAsciiString];
          hasGeneralPropertyDescription: bool;
          aGeneralPropertyDescription: Handle[TCollectionHAsciiString];
          aExternallyDefinedItemItemId: StepBasicSourceItem;
          aExternallyDefinedItemSource: Handle[StepBasicExternalSource]) {.
    importcpp: "Init", header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc externallyDefinedItem*(this: StepAP214ExternallyDefinedGeneralProperty): Handle[
    StepBasicExternallyDefinedItem] {.noSideEffect,
                                     importcpp: "ExternallyDefinedItem", header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc setExternallyDefinedItem*(this: var StepAP214ExternallyDefinedGeneralProperty;
    externallyDefinedItem: Handle[StepBasicExternallyDefinedItem]) {.
    importcpp: "SetExternallyDefinedItem",
    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
type
  StepAP214ExternallyDefinedGeneralPropertybaseType* = StepBasicGeneralProperty

proc getTypeName*(): cstring {.importcpp: "StepAP214_ExternallyDefinedGeneralProperty::get_type_name(@)", header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP214_ExternallyDefinedGeneralProperty::get_type_descriptor(@)",
    header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}
proc dynamicType*(this: StepAP214ExternallyDefinedGeneralProperty): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP214_ExternallyDefinedGeneralProperty.hxx".}

























