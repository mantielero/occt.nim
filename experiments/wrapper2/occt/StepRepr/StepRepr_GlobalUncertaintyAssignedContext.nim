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
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
type
  HandleStepReprGlobalUncertaintyAssignedContext* = Handle[
      StepReprGlobalUncertaintyAssignedContext]
  StepReprGlobalUncertaintyAssignedContext* {.
      importcpp: "StepRepr_GlobalUncertaintyAssignedContext",
      header: "StepRepr_GlobalUncertaintyAssignedContext.hxx", bycopy.} = object of StepReprRepresentationContext ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## GlobalUncertaintyAssignedContext


proc constructStepReprGlobalUncertaintyAssignedContext*(): StepReprGlobalUncertaintyAssignedContext {.
    constructor, importcpp: "StepRepr_GlobalUncertaintyAssignedContext(@)",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc init*(this: var StepReprGlobalUncertaintyAssignedContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
          aUncertainty: Handle[StepBasicHArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "Init", header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc setUncertainty*(this: var StepReprGlobalUncertaintyAssignedContext;
    aUncertainty: Handle[StepBasicHArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "SetUncertainty",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc uncertainty*(this: StepReprGlobalUncertaintyAssignedContext): Handle[
    StepBasicHArray1OfUncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "Uncertainty",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc uncertaintyValue*(this: StepReprGlobalUncertaintyAssignedContext; num: int): Handle[
    StepBasicUncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "UncertaintyValue",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc nbUncertainty*(this: StepReprGlobalUncertaintyAssignedContext): int {.
    noSideEffect, importcpp: "NbUncertainty",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
type
  StepReprGlobalUncertaintyAssignedContextbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepRepr_GlobalUncertaintyAssignedContext::get_type_name(@)", header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.importcpp: "StepRepr_GlobalUncertaintyAssignedContext::get_type_descriptor(@)",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc dynamicType*(this: StepReprGlobalUncertaintyAssignedContext): Handle[
    StandardType] {.noSideEffect, importcpp: "DynamicType",
                   header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
