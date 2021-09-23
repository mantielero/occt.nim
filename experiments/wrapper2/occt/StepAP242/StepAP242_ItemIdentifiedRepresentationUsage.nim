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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient,
  StepAP242_ItemIdentifiedRepresentationUsageDefinition,
  ../Standard/Standard_Integer, ../StepRepr/StepRepr_HArray1OfRepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsageDefinition"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsage"
discard "forward decl of StepAP242_ItemIdentifiedRepresentationUsage"
type
  Handle_StepAP242_ItemIdentifiedRepresentationUsage* = handle[
      StepAP242_ItemIdentifiedRepresentationUsage]
  StepAP242_ItemIdentifiedRepresentationUsage* {.
      importcpp: "StepAP242_ItemIdentifiedRepresentationUsage",
      header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## ItemIdentifiedRepresentationUsage


proc constructStepAP242_ItemIdentifiedRepresentationUsage*(): StepAP242_ItemIdentifiedRepresentationUsage {.
    constructor, importcpp: "StepAP242_ItemIdentifiedRepresentationUsage(@)",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc Init*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
          theName: handle[TCollection_HAsciiString];
          theDescription: handle[TCollection_HAsciiString];
          theDefinition: StepAP242_ItemIdentifiedRepresentationUsageDefinition;
          theUsedRepresentation: handle[StepRepr_Representation];
          theIdentifiedItem: handle[StepRepr_HArray1OfRepresentationItem]) {.
    importcpp: "Init", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc SetName*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
             theName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc Name*(this: StepAP242_ItemIdentifiedRepresentationUsage): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc SetDescription*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
                    theDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc Description*(this: StepAP242_ItemIdentifiedRepresentationUsage): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc SetDefinition*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
    theDefinition: StepAP242_ItemIdentifiedRepresentationUsageDefinition) {.
    importcpp: "SetDefinition",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc Definition*(this: StepAP242_ItemIdentifiedRepresentationUsage): StepAP242_ItemIdentifiedRepresentationUsageDefinition {.
    noSideEffect, importcpp: "Definition",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc SetUsedRepresentation*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
    theUsedRepresentation: handle[StepRepr_Representation]) {.
    importcpp: "SetUsedRepresentation",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc UsedRepresentation*(this: StepAP242_ItemIdentifiedRepresentationUsage): handle[
    StepRepr_Representation] {.noSideEffect, importcpp: "UsedRepresentation", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc IdentifiedItem*(this: StepAP242_ItemIdentifiedRepresentationUsage): handle[
    StepRepr_HArray1OfRepresentationItem] {.noSideEffect,
    importcpp: "IdentifiedItem",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc NbIdentifiedItem*(this: StepAP242_ItemIdentifiedRepresentationUsage): Standard_Integer {.
    noSideEffect, importcpp: "NbIdentifiedItem",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc SetIdentifiedItem*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
    theIdentifiedItem: handle[StepRepr_HArray1OfRepresentationItem]) {.
    importcpp: "SetIdentifiedItem",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc IdentifiedItemValue*(this: StepAP242_ItemIdentifiedRepresentationUsage;
                         num: Standard_Integer): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "IdentifiedItemValue", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc SetIdentifiedItemValue*(this: var StepAP242_ItemIdentifiedRepresentationUsage;
                            num: Standard_Integer;
                            theItem: handle[StepRepr_RepresentationItem]) {.
    importcpp: "SetIdentifiedItemValue",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
type
  StepAP242_ItemIdentifiedRepresentationUsagebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepAP242_ItemIdentifiedRepresentationUsage::get_type_name(@)", header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepAP242_ItemIdentifiedRepresentationUsage::get_type_descriptor(@)",
    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}
proc DynamicType*(this: StepAP242_ItemIdentifiedRepresentationUsage): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepAP242_ItemIdentifiedRepresentationUsage.hxx".}