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

discard "forward decl of StepVisual_PresentationArea"
discard "forward decl of StepVisual_PresentationSet"
discard "forward decl of StepVisual_AreaInSet"
discard "forward decl of StepVisual_AreaInSet"
type
  HandleC1C1* = Handle[StepVisualAreaInSet]
  StepVisualAreaInSet* {.importcpp: "StepVisual_AreaInSet",
                        header: "StepVisual_AreaInSet.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## a
                                                                                            ## AreaInSet


proc constructStepVisualAreaInSet*(): StepVisualAreaInSet {.constructor,
    importcpp: "StepVisual_AreaInSet(@)", header: "StepVisual_AreaInSet.hxx".}
proc init*(this: var StepVisualAreaInSet; aArea: Handle[StepVisualPresentationArea];
          aInSet: Handle[StepVisualPresentationSet]) {.importcpp: "Init",
    header: "StepVisual_AreaInSet.hxx".}
proc setArea*(this: var StepVisualAreaInSet;
             aArea: Handle[StepVisualPresentationArea]) {.importcpp: "SetArea",
    header: "StepVisual_AreaInSet.hxx".}
proc area*(this: StepVisualAreaInSet): Handle[StepVisualPresentationArea] {.
    noSideEffect, importcpp: "Area", header: "StepVisual_AreaInSet.hxx".}
proc setInSet*(this: var StepVisualAreaInSet;
              aInSet: Handle[StepVisualPresentationSet]) {.importcpp: "SetInSet",
    header: "StepVisual_AreaInSet.hxx".}
proc inSet*(this: StepVisualAreaInSet): Handle[StepVisualPresentationSet] {.
    noSideEffect, importcpp: "InSet", header: "StepVisual_AreaInSet.hxx".}
type
  StepVisualAreaInSetbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepVisual_AreaInSet::get_type_name(@)",
                            header: "StepVisual_AreaInSet.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepVisual_AreaInSet::get_type_descriptor(@)",
    header: "StepVisual_AreaInSet.hxx".}
proc dynamicType*(this: StepVisualAreaInSet): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_AreaInSet.hxx".}