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
  StepVisual_HArray1OfInvisibleItem, ../Standard/Standard_Transient,
  ../Standard/Standard_Integer

discard "forward decl of StepVisual_InvisibleItem"
discard "forward decl of StepVisual_Invisibility"
discard "forward decl of StepVisual_Invisibility"
type
  Handle_StepVisual_Invisibility* = handle[StepVisual_Invisibility]
  StepVisual_Invisibility* {.importcpp: "StepVisual_Invisibility",
                            header: "StepVisual_Invisibility.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                    ## !
                                                                                                    ## Returns
                                                                                                    ## a
                                                                                                    ## Invisibility


proc constructStepVisual_Invisibility*(): StepVisual_Invisibility {.constructor,
    importcpp: "StepVisual_Invisibility(@)", header: "StepVisual_Invisibility.hxx".}
proc Init*(this: var StepVisual_Invisibility;
          aInvisibleItems: handle[StepVisual_HArray1OfInvisibleItem]) {.
    importcpp: "Init", header: "StepVisual_Invisibility.hxx".}
proc SetInvisibleItems*(this: var StepVisual_Invisibility; aInvisibleItems: handle[
    StepVisual_HArray1OfInvisibleItem]) {.importcpp: "SetInvisibleItems",
    header: "StepVisual_Invisibility.hxx".}
proc InvisibleItems*(this: StepVisual_Invisibility): handle[
    StepVisual_HArray1OfInvisibleItem] {.noSideEffect,
                                        importcpp: "InvisibleItems",
                                        header: "StepVisual_Invisibility.hxx".}
proc InvisibleItemsValue*(this: StepVisual_Invisibility; num: Standard_Integer): StepVisual_InvisibleItem {.
    noSideEffect, importcpp: "InvisibleItemsValue",
    header: "StepVisual_Invisibility.hxx".}
proc NbInvisibleItems*(this: StepVisual_Invisibility): Standard_Integer {.
    noSideEffect, importcpp: "NbInvisibleItems",
    header: "StepVisual_Invisibility.hxx".}
type
  StepVisual_Invisibilitybase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_Invisibility::get_type_name(@)",
                              header: "StepVisual_Invisibility.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_Invisibility::get_type_descriptor(@)",
    header: "StepVisual_Invisibility.hxx".}
proc DynamicType*(this: StepVisual_Invisibility): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepVisual_Invisibility.hxx".}