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
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
type
  HandleStepReprGlobalUnitAssignedContext* = Handle[
      StepReprGlobalUnitAssignedContext]
  StepReprGlobalUnitAssignedContext* {.importcpp: "StepRepr_GlobalUnitAssignedContext", header: "StepRepr_GlobalUnitAssignedContext.hxx",
                                      bycopy.} = object of StepReprRepresentationContext ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## GlobalUnitAssignedContext


proc constructStepReprGlobalUnitAssignedContext*(): StepReprGlobalUnitAssignedContext {.
    constructor, importcpp: "StepRepr_GlobalUnitAssignedContext(@)",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc init*(this: var StepReprGlobalUnitAssignedContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString];
          aUnits: Handle[StepBasicHArray1OfNamedUnit]) {.importcpp: "Init",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc setUnits*(this: var StepReprGlobalUnitAssignedContext;
              aUnits: Handle[StepBasicHArray1OfNamedUnit]) {.
    importcpp: "SetUnits", header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc units*(this: StepReprGlobalUnitAssignedContext): Handle[
    StepBasicHArray1OfNamedUnit] {.noSideEffect, importcpp: "Units", header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc unitsValue*(this: StepReprGlobalUnitAssignedContext; num: int): Handle[
    StepBasicNamedUnit] {.noSideEffect, importcpp: "UnitsValue",
                         header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc nbUnits*(this: StepReprGlobalUnitAssignedContext): int {.noSideEffect,
    importcpp: "NbUnits", header: "StepRepr_GlobalUnitAssignedContext.hxx".}
type
  StepReprGlobalUnitAssignedContextbaseType* = StepReprRepresentationContext

proc getTypeName*(): cstring {.importcpp: "StepRepr_GlobalUnitAssignedContext::get_type_name(@)",
                            header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_GlobalUnitAssignedContext::get_type_descriptor(@)",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc dynamicType*(this: StepReprGlobalUnitAssignedContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
