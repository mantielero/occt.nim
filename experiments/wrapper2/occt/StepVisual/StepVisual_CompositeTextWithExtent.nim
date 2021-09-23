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
  ../Standard/Standard, ../Standard/Standard_Type, StepVisual_CompositeText,
  StepVisual_HArray1OfTextOrCharacter

discard "forward decl of StepVisual_PlanarExtent"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CompositeTextWithExtent"
discard "forward decl of StepVisual_CompositeTextWithExtent"
type
  Handle_StepVisual_CompositeTextWithExtent* = handle[
      StepVisual_CompositeTextWithExtent]
  StepVisual_CompositeTextWithExtent* {.importcpp: "StepVisual_CompositeTextWithExtent", header: "StepVisual_CompositeTextWithExtent.hxx",
                                       bycopy.} = object of StepVisual_CompositeText ##
                                                                                ## !
                                                                                ## Returns
                                                                                ## a
                                                                                ## CompositeTextWithExtent


proc constructStepVisual_CompositeTextWithExtent*(): StepVisual_CompositeTextWithExtent {.
    constructor, importcpp: "StepVisual_CompositeTextWithExtent(@)",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc Init*(this: var StepVisual_CompositeTextWithExtent;
          aName: handle[TCollection_HAsciiString];
          aCollectedText: handle[StepVisual_HArray1OfTextOrCharacter];
          aExtent: handle[StepVisual_PlanarExtent]) {.importcpp: "Init",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc SetExtent*(this: var StepVisual_CompositeTextWithExtent;
               aExtent: handle[StepVisual_PlanarExtent]) {.importcpp: "SetExtent",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc Extent*(this: StepVisual_CompositeTextWithExtent): handle[
    StepVisual_PlanarExtent] {.noSideEffect, importcpp: "Extent",
                              header: "StepVisual_CompositeTextWithExtent.hxx".}
type
  StepVisual_CompositeTextWithExtentbase_type* = StepVisual_CompositeText

proc get_type_name*(): cstring {.importcpp: "StepVisual_CompositeTextWithExtent::get_type_name(@)",
                              header: "StepVisual_CompositeTextWithExtent.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_CompositeTextWithExtent::get_type_descriptor(@)",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc DynamicType*(this: StepVisual_CompositeTextWithExtent): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CompositeTextWithExtent.hxx".}