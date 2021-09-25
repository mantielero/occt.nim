##  Created on: 1998-06-30
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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
discard "forward decl of StepBasic_Effectivity"
discard "forward decl of StepBasic_Effectivity"
type
  HandleStepBasicEffectivity* = Handle[StepBasicEffectivity]
  StepBasicEffectivity* {.importcpp: "StepBasic_Effectivity",
                         header: "StepBasic_Effectivity.hxx", bycopy.} = object of StandardTransient


proc constructStepBasicEffectivity*(): StepBasicEffectivity {.constructor,
    importcpp: "StepBasic_Effectivity(@)", header: "StepBasic_Effectivity.hxx".}
proc init*(this: var StepBasicEffectivity; aid: Handle[TCollectionHAsciiString]) {.
    importcpp: "Init", header: "StepBasic_Effectivity.hxx".}
proc id*(this: StepBasicEffectivity): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "Id", header: "StepBasic_Effectivity.hxx".}
proc setId*(this: var StepBasicEffectivity; aid: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetId", header: "StepBasic_Effectivity.hxx".}
type
  StepBasicEffectivitybaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_Effectivity::get_type_name(@)",
                            header: "StepBasic_Effectivity.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_Effectivity::get_type_descriptor(@)",
    header: "StepBasic_Effectivity.hxx".}
proc dynamicType*(this: StepBasicEffectivity): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_Effectivity.hxx".}
