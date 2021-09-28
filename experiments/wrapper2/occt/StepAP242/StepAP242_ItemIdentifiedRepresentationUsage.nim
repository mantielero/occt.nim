##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsageDefinition"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsage"
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsage"
type
  HandleC1C1* = Handle[StepAP242ItemIdentifiedRepresentationUsage]
  StepAP242ItemIdentifiedRepresentationUsage* {.
      importcpp: "StepAP242_ItemIdentifiedRepresentationUsage",
      header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx", bycopy.} = object of StandardTransient ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## ItemIdentifiedRepresentationUsage


proc constructStepAP242ItemIdentifiedRepresentationUsage*(): StepAP242ItemIdentifiedRepresentationUsage {.
    constructor, importcpp: "StepAP242_ItemIdentifiedRepresentationUsage(@)",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc init*(this: var StepAP242ItemIdentifiedRepresentationUsage;
          theName: Handle[TCollectionHAsciiString];
          theDescription: Handle[TCollectionHAsciiString];
          theDefinition: StepAP242ItemIdentifiedRepresentationUsageDefinition;
          theUsedRepresentation: Handle[StepReprRepresentation];
          theIdentifiedItem: Handle[StepReprHArray1OfRepresentationItem]) {.
    importcpp: "Init", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc setName*(this: var StepAP242ItemIdentifiedRepresentationUsage;
             theName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc name*(this: StepAP242ItemIdentifiedRepresentationUsage): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc setDescription*(this: var StepAP242ItemIdentifiedRepresentationUsage;
                    theDescription: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc description*(this: StepAP242ItemIdentifiedRepresentationUsage): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Description", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc setDefinition*(this: var StepAP242ItemIdentifiedRepresentationUsage;
    theDefinition: StepAP242ItemIdentifiedRepresentationUsageDefinition) {.
    importcpp: "SetDefinition",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc definition*(this: StepAP242ItemIdentifiedRepresentationUsage): StepAP242ItemIdentifiedRepresentationUsageDefinition {.
    noSideEffect, importcpp: "Definition",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc setUsedRepresentation*(this: var StepAP242ItemIdentifiedRepresentationUsage;
    theUsedRepresentation: Handle[StepReprRepresentation]) {.
    importcpp: "SetUsedRepresentation",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc usedRepresentation*(this: StepAP242ItemIdentifiedRepresentationUsage): Handle[
    StepReprRepresentation] {.noSideEffect, importcpp: "UsedRepresentation", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc identifiedItem*(this: StepAP242ItemIdentifiedRepresentationUsage): Handle[
    StepReprHArray1OfRepresentationItem] {.noSideEffect,
    importcpp: "IdentifiedItem",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc nbIdentifiedItem*(this: StepAP242ItemIdentifiedRepresentationUsage): cint {.
    noSideEffect, importcpp: "NbIdentifiedItem",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc setIdentifiedItem*(this: var StepAP242ItemIdentifiedRepresentationUsage;
    theIdentifiedItem: Handle[StepReprHArray1OfRepresentationItem]) {.
    importcpp: "SetIdentifiedItem",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc identifiedItemValue*(this: StepAP242ItemIdentifiedRepresentationUsage;
                         num: cint): Handle[StepReprRepresentationItem] {.
    noSideEffect, importcpp: "IdentifiedItemValue",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc setIdentifiedItemValue*(this: var StepAP242ItemIdentifiedRepresentationUsage;
                            num: cint; theItem: Handle[StepReprRepresentationItem]) {.
    importcpp: "SetIdentifiedItemValue",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
type
  StepAP242ItemIdentifiedRepresentationUsagebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepAP242_ItemIdentifiedRepresentationUsage::get_type_name(@)", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepAP242_ItemIdentifiedRepresentationUsage::get_type_descriptor(@)",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc dynamicType*(this: StepAP242ItemIdentifiedRepresentationUsage): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}

























