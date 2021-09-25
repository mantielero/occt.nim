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
discard "forward decl of StepRepr_RepresentationContext"
type
  HandleStepReprRepresentationContext* = Handle[StepReprRepresentationContext]
  StepReprRepresentationContext* {.importcpp: "StepRepr_RepresentationContext",
                                  header: "StepRepr_RepresentationContext.hxx",
                                  bycopy.} = object of StandardTransient ## ! Returns a
                                                                    ## RepresentationContext


proc constructStepReprRepresentationContext*(): StepReprRepresentationContext {.
    constructor, importcpp: "StepRepr_RepresentationContext(@)",
    header: "StepRepr_RepresentationContext.hxx".}
proc init*(this: var StepReprRepresentationContext;
          aContextIdentifier: Handle[TCollectionHAsciiString];
          aContextType: Handle[TCollectionHAsciiString]) {.importcpp: "Init",
    header: "StepRepr_RepresentationContext.hxx".}
proc setContextIdentifier*(this: var StepReprRepresentationContext;
                          aContextIdentifier: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetContextIdentifier",
    header: "StepRepr_RepresentationContext.hxx".}
proc contextIdentifier*(this: StepReprRepresentationContext): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ContextIdentifier",
                              header: "StepRepr_RepresentationContext.hxx".}
proc setContextType*(this: var StepReprRepresentationContext;
                    aContextType: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetContextType", header: "StepRepr_RepresentationContext.hxx".}
proc contextType*(this: StepReprRepresentationContext): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "ContextType",
                              header: "StepRepr_RepresentationContext.hxx".}
type
  StepReprRepresentationContextbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepRepr_RepresentationContext::get_type_name(@)",
                            header: "StepRepr_RepresentationContext.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepRepr_RepresentationContext::get_type_descriptor(@)",
    header: "StepRepr_RepresentationContext.hxx".}
proc dynamicType*(this: StepReprRepresentationContext): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepRepr_RepresentationContext.hxx".}
