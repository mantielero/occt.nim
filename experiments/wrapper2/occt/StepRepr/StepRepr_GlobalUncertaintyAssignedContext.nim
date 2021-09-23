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
  ../StepBasic/StepBasic_HArray1OfUncertaintyMeasureWithUnit,
  StepRepr_RepresentationContext, ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepBasic_UncertaintyMeasureWithUnit"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
type
  Handle_StepRepr_GlobalUncertaintyAssignedContext* = handle[
      StepRepr_GlobalUncertaintyAssignedContext]
  StepRepr_GlobalUncertaintyAssignedContext* {.
      importcpp: "StepRepr_GlobalUncertaintyAssignedContext",
      header: "StepRepr_GlobalUncertaintyAssignedContext.hxx", bycopy.} = object of StepRepr_RepresentationContext ##
                                                                                                            ## !
                                                                                                            ## Returns
                                                                                                            ## a
                                                                                                            ## GlobalUncertaintyAssignedContext


proc constructStepRepr_GlobalUncertaintyAssignedContext*(): StepRepr_GlobalUncertaintyAssignedContext {.
    constructor, importcpp: "StepRepr_GlobalUncertaintyAssignedContext(@)",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc Init*(this: var StepRepr_GlobalUncertaintyAssignedContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString];
          aUncertainty: handle[StepBasic_HArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "Init", header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc SetUncertainty*(this: var StepRepr_GlobalUncertaintyAssignedContext;
    aUncertainty: handle[StepBasic_HArray1OfUncertaintyMeasureWithUnit]) {.
    importcpp: "SetUncertainty",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc Uncertainty*(this: StepRepr_GlobalUncertaintyAssignedContext): handle[
    StepBasic_HArray1OfUncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "Uncertainty",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc UncertaintyValue*(this: StepRepr_GlobalUncertaintyAssignedContext;
                      num: Standard_Integer): handle[
    StepBasic_UncertaintyMeasureWithUnit] {.noSideEffect,
    importcpp: "UncertaintyValue",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc NbUncertainty*(this: StepRepr_GlobalUncertaintyAssignedContext): Standard_Integer {.
    noSideEffect, importcpp: "NbUncertainty",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
type
  StepRepr_GlobalUncertaintyAssignedContextbase_type* = StepRepr_RepresentationContext

proc get_type_name*(): cstring {.importcpp: "StepRepr_GlobalUncertaintyAssignedContext::get_type_name(@)", header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_GlobalUncertaintyAssignedContext::get_type_descriptor(@)",
    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}
proc DynamicType*(this: StepRepr_GlobalUncertaintyAssignedContext): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_GlobalUncertaintyAssignedContext.hxx".}