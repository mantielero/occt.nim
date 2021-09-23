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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Transient

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepRepr_RepresentationContext"
type
  Handle_StepRepr_RepresentationContext* = handle[StepRepr_RepresentationContext]
  StepRepr_RepresentationContext* {.importcpp: "StepRepr_RepresentationContext", header: "StepRepr_RepresentationContext.hxx",
                                   bycopy.} = object of Standard_Transient ## ! Returns a
                                                                      ## RepresentationContext


proc constructStepRepr_RepresentationContext*(): StepRepr_RepresentationContext {.
    constructor, importcpp: "StepRepr_RepresentationContext(@)",
    header: "StepRepr_RepresentationContext.hxx".}
proc Init*(this: var StepRepr_RepresentationContext;
          aContextIdentifier: handle[TCollection_HAsciiString];
          aContextType: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepRepr_RepresentationContext.hxx".}
proc SetContextIdentifier*(this: var StepRepr_RepresentationContext;
                          aContextIdentifier: handle[TCollection_HAsciiString]) {.
    importcpp: "SetContextIdentifier",
    header: "StepRepr_RepresentationContext.hxx".}
proc ContextIdentifier*(this: StepRepr_RepresentationContext): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ContextIdentifier",
                               header: "StepRepr_RepresentationContext.hxx".}
proc SetContextType*(this: var StepRepr_RepresentationContext;
                    aContextType: handle[TCollection_HAsciiString]) {.
    importcpp: "SetContextType", header: "StepRepr_RepresentationContext.hxx".}
proc ContextType*(this: StepRepr_RepresentationContext): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "ContextType",
                               header: "StepRepr_RepresentationContext.hxx".}
type
  StepRepr_RepresentationContextbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_RepresentationContext::get_type_name(@)",
                              header: "StepRepr_RepresentationContext.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_RepresentationContext::get_type_descriptor(@)",
    header: "StepRepr_RepresentationContext.hxx".}
proc DynamicType*(this: StepRepr_RepresentationContext): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationContext.hxx".}