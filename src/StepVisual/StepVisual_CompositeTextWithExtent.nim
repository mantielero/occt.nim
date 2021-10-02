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

discard "forward decl of StepVisual_PlanarExtent"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepVisual_CompositeTextWithExtent"
discard "forward decl of StepVisual_CompositeTextWithExtent"
type
  HandleC1C1* = Handle[StepVisualCompositeTextWithExtent]
  StepVisualCompositeTextWithExtent* {.importcpp: "StepVisual_CompositeTextWithExtent", header: "StepVisual_CompositeTextWithExtent.hxx",
                                      bycopy.} = object of StepVisualCompositeText ## !
                                                                              ## Returns a
                                                                              ## CompositeTextWithExtent


proc constructStepVisualCompositeTextWithExtent*(): StepVisualCompositeTextWithExtent {.
    constructor, importcpp: "StepVisual_CompositeTextWithExtent(@)",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc init*(this: var StepVisualCompositeTextWithExtent;
          aName: Handle[TCollectionHAsciiString];
          aCollectedText: Handle[StepVisualHArray1OfTextOrCharacter];
          aExtent: Handle[StepVisualPlanarExtent]) {.importcpp: "Init",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc setExtent*(this: var StepVisualCompositeTextWithExtent;
               aExtent: Handle[StepVisualPlanarExtent]) {.importcpp: "SetExtent",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc extent*(this: StepVisualCompositeTextWithExtent): Handle[
    StepVisualPlanarExtent] {.noSideEffect, importcpp: "Extent",
                             header: "StepVisual_CompositeTextWithExtent.hxx".}
type
  StepVisualCompositeTextWithExtentbaseType* = StepVisualCompositeText

proc getTypeName*(): cstring {.importcpp: "StepVisual_CompositeTextWithExtent::get_type_name(@)",
                            header: "StepVisual_CompositeTextWithExtent.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_CompositeTextWithExtent::get_type_descriptor(@)",
    header: "StepVisual_CompositeTextWithExtent.hxx".}
proc dynamicType*(this: StepVisualCompositeTextWithExtent): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepVisual_CompositeTextWithExtent.hxx".}