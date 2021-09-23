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
  ../Standard/Standard, ../Standard/Standard_Type, StepRepr_RepresentationItem

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
discard "forward decl of StepRepr_DescriptiveRepresentationItem"
type
  Handle_StepRepr_DescriptiveRepresentationItem* = handle[
      StepRepr_DescriptiveRepresentationItem]
  StepRepr_DescriptiveRepresentationItem* {.
      importcpp: "StepRepr_DescriptiveRepresentationItem",
      header: "StepRepr_DescriptiveRepresentationItem.hxx", bycopy.} = object of StepRepr_RepresentationItem ##
                                                                                                      ## !
                                                                                                      ## Returns
                                                                                                      ## a
                                                                                                      ## DescriptiveRepresentationItem


proc constructStepRepr_DescriptiveRepresentationItem*(): StepRepr_DescriptiveRepresentationItem {.
    constructor, importcpp: "StepRepr_DescriptiveRepresentationItem(@)",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc Init*(this: var StepRepr_DescriptiveRepresentationItem;
          aName: handle[TCollection_HAsciiString];
          aDescription: handle[TCollection_HAsciiString]) {.importcpp: "Init",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc SetDescription*(this: var StepRepr_DescriptiveRepresentationItem;
                    aDescription: handle[TCollection_HAsciiString]) {.
    importcpp: "SetDescription",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc Description*(this: StepRepr_DescriptiveRepresentationItem): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Description", header: "StepRepr_DescriptiveRepresentationItem.hxx".}
type
  StepRepr_DescriptiveRepresentationItembase_type* = StepRepr_RepresentationItem

proc get_type_name*(): cstring {.importcpp: "StepRepr_DescriptiveRepresentationItem::get_type_name(@)", header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepRepr_DescriptiveRepresentationItem::get_type_descriptor(@)",
    header: "StepRepr_DescriptiveRepresentationItem.hxx".}
proc DynamicType*(this: StepRepr_DescriptiveRepresentationItem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepRepr_DescriptiveRepresentationItem.hxx".}