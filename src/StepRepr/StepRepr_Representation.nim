##  Created on: 1995-12-01
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_Representation"
type
  HandleC1C1* = Handle[StepReprRepresentation]
  StepReprRepresentation* {.importcpp: "StepRepr_Representation",
                           header: "StepRepr_Representation.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## Representation


proc constructStepReprRepresentation*(): StepReprRepresentation {.constructor,
    importcpp: "StepRepr_Representation(@)", header: "StepRepr_Representation.hxx".}
proc init*(this: var StepReprRepresentation; aName: Handle[TCollectionHAsciiString];
          aItems: Handle[StepReprHArray1OfRepresentationItem];
          aContextOfItems: Handle[StepReprRepresentationContext]) {.
    importcpp: "Init", header: "StepRepr_Representation.hxx".}
proc setName*(this: var StepReprRepresentation;
             aName: Handle[TCollectionHAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_Representation.hxx".}
proc name*(this: StepReprRepresentation): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_Representation.hxx".}
proc setItems*(this: var StepReprRepresentation;
              aItems: Handle[StepReprHArray1OfRepresentationItem]) {.
    importcpp: "SetItems", header: "StepRepr_Representation.hxx".}
proc items*(this: StepReprRepresentation): Handle[
    StepReprHArray1OfRepresentationItem] {.noSideEffect, importcpp: "Items",
    header: "StepRepr_Representation.hxx".}
proc itemsValue*(this: StepReprRepresentation; num: int): Handle[
    StepReprRepresentationItem] {.noSideEffect, importcpp: "ItemsValue",
                                 header: "StepRepr_Representation.hxx".}
proc nbItems*(this: StepReprRepresentation): int {.noSideEffect,
    importcpp: "NbItems", header: "StepRepr_Representation.hxx".}
proc setContextOfItems*(this: var StepReprRepresentation;
                       aContextOfItems: Handle[StepReprRepresentationContext]) {.
    importcpp: "SetContextOfItems", header: "StepRepr_Representation.hxx".}
proc contextOfItems*(this: StepReprRepresentation): Handle[
    StepReprRepresentationContext] {.noSideEffect, importcpp: "ContextOfItems",
                                    header: "StepRepr_Representation.hxx".}
type
  StepReprRepresentationbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_Representation::get_type_name(@)",
                            header: "StepRepr_Representation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_Representation::get_type_descriptor(@)",
    header: "StepRepr_Representation.hxx".}
proc dynamicType*(this: StepReprRepresentation): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_Representation.hxx".}