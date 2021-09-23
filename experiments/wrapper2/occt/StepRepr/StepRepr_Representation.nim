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
  StepRepr_HArray1OfRepresentationItem, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_RepresentationContext"
discard "forward decl of StepRepr_RepresentationItem"
discard "forward decl of StepRepr_Representation"
discard "forward decl of StepRepr_Representation"
type
  Handle_StepRepr_Representation* = handle[StepRepr_Representation]
  StepRepr_Representation* {.importcpp: "StepRepr_Representation",
                            header: "StepRepr_Representation.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## Representation


proc constructStepRepr_Representation*(): StepRepr_Representation {.constructor,
    importcpp: "StepRepr_Representation(@)", header: "StepRepr_Representation.hxx".}
proc Init*(this: var StepRepr_Representation;
          aName: handle[TCollection_HAsciiString];
          aItems: handle[StepRepr_HArray1OfRepresentationItem];
          aContextOfItems: handle[StepRepr_RepresentationContext]) {.
    importcpp: "Init", header: "StepRepr_Representation.hxx".}
proc SetName*(this: var StepRepr_Representation;
             aName: handle[TCollection_HAsciiString]) {.importcpp: "SetName",
    header: "StepRepr_Representation.hxx".}
proc Name*(this: StepRepr_Representation): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "Name", header: "StepRepr_Representation.hxx".}
proc SetItems*(this: var StepRepr_Representation;
              aItems: handle[StepRepr_HArray1OfRepresentationItem]) {.
    importcpp: "SetItems", header: "StepRepr_Representation.hxx".}
proc Items*(this: StepRepr_Representation): handle[
    StepRepr_HArray1OfRepresentationItem] {.noSideEffect, importcpp: "Items",
    header: "StepRepr_Representation.hxx".}
proc ItemsValue*(this: StepRepr_Representation; num: Standard_Integer): handle[
    StepRepr_RepresentationItem] {.noSideEffect, importcpp: "ItemsValue",
                                  header: "StepRepr_Representation.hxx".}
proc NbItems*(this: StepRepr_Representation): Standard_Integer {.noSideEffect,
    importcpp: "NbItems", header: "StepRepr_Representation.hxx".}
proc SetContextOfItems*(this: var StepRepr_Representation;
                       aContextOfItems: handle[StepRepr_RepresentationContext]) {.
    importcpp: "SetContextOfItems", header: "StepRepr_Representation.hxx".}
proc ContextOfItems*(this: StepRepr_Representation): handle[
    StepRepr_RepresentationContext] {.noSideEffect, importcpp: "ContextOfItems",
                                     header: "StepRepr_Representation.hxx".}
type
  StepRepr_Representationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepRepr_Representation::get_type_name(@)",
                              header: "StepRepr_Representation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepRepr_Representation::get_type_descriptor(@)",
    header: "StepRepr_Representation.hxx".}
proc DynamicType*(this: StepRepr_Representation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepRepr_Representation.hxx".}