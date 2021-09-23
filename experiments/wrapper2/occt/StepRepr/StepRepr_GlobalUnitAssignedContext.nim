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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../StepBasic/StepBasic_HArray1OfNamedUnit, StepRepr_RepresentationContext,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
type
  Handle_StepRepr_GlobalUnitAssignedContext* = handle[
      StepRepr_GlobalUnitAssignedContext]
  StepRepr_GlobalUnitAssignedContext* {.importcpp: "StepRepr_GlobalUnitAssignedContext", header: "StepRepr_GlobalUnitAssignedContext.hxx",
                                       bycopy.} = object of StepRepr_RepresentationContext ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## GlobalUnitAssignedContext


proc constructStepRepr_GlobalUnitAssignedContext*(): StepRepr_GlobalUnitAssignedContext {.
    constructor, importcpp: "StepRepr_GlobalUnitAssignedContext(@)",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc Init*(this: var StepRepr_GlobalUnitAssignedContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
          aUnits: handle[StepBasic_HArray1OfNamedUnit]) {.importcpp: "Init",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc SetUnits*(this: var StepRepr_GlobalUnitAssignedContext;
              aUnits: handle[StepBasic_HArray1OfNamedUnit]) {.
    importcpp: "SetUnits", header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc Units*(this: StepRepr_GlobalUnitAssignedContext): handle[
    StepBasic_HArray1OfNamedUnit] {.noSideEffect, importcpp: "Units", header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc UnitsValue*(this: StepRepr_GlobalUnitAssignedContext; num: Standard_Integer): handle[
    StepBasic_NamedUnit] {.noSideEffect, importcpp: "UnitsValue",
                          header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc NbUnits*(this: StepRepr_GlobalUnitAssignedContext): Standard_Integer {.
    noSideEffect, importcpp: "NbUnits",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
type
  StepRepr_GlobalUnitAssignedContextbase_type* = StepRepr_RepresentationContext

proc get_type_name*(): cstring {.importcpp: "StepRepr_GlobalUnitAssignedContext::get_type_name(@)",
                              header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_GlobalUnitAssignedContext::get_type_descriptor(@)",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}
proc DynamicType*(this: StepRepr_GlobalUnitAssignedContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_GlobalUnitAssignedContext.hxx".}