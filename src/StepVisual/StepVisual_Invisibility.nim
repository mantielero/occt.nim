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

discard "forward decl of StepVisual_InvisibleItem"
discard "forward decl of StepVisual_Invisibility"
discard "forward decl of StepVisual_Invisibility"
type
  HandleC1C1* = Handle[StepVisualInvisibility]
  StepVisualInvisibility* {.importcpp: "StepVisual_Invisibility",
                           header: "StepVisual_Invisibility.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## Returns
                                                                                                  ## a
                                                                                                  ## Invisibility


proc constructStepVisualInvisibility*(): StepVisualInvisibility {.constructor,
    importcpp: "StepVisual_Invisibility(@)", header: "StepVisual_Invisibility.hxx".}
proc init*(this: var StepVisualInvisibility;
          aInvisibleItems: Handle[StepVisualHArray1OfInvisibleItem]) {.
    importcpp: "Init", header: "StepVisual_Invisibility.hxx".}
proc setInvisibleItems*(this: var StepVisualInvisibility; aInvisibleItems: Handle[
    StepVisualHArray1OfInvisibleItem]) {.importcpp: "SetInvisibleItems",
                                        header: "StepVisual_Invisibility.hxx".}
proc invisibleItems*(this: StepVisualInvisibility): Handle[
    StepVisualHArray1OfInvisibleItem] {.noSideEffect, importcpp: "InvisibleItems",
                                       header: "StepVisual_Invisibility.hxx".}
proc invisibleItemsValue*(this: StepVisualInvisibility; num: cint): StepVisualInvisibleItem {.
    noSideEffect, importcpp: "InvisibleItemsValue",
    header: "StepVisual_Invisibility.hxx".}
proc nbInvisibleItems*(this: StepVisualInvisibility): cint {.noSideEffect,
    importcpp: "NbInvisibleItems", header: "StepVisual_Invisibility.hxx".}
type
  StepVisualInvisibilitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_Invisibility::get_type_name(@)",
                            header: "StepVisual_Invisibility.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_Invisibility::get_type_descriptor(@)",
    header: "StepVisual_Invisibility.hxx".}
proc dynamicType*(this: StepVisualInvisibility): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_Invisibility.hxx".}

























