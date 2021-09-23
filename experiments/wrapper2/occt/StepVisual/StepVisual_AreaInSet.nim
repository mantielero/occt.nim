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

discard "forward decl of StepVisual_PresentationArea"
discard "forward decl of StepVisual_PresentationSet"
discard "forward decl of StepVisual_AreaInSet"
discard "forward decl of StepVisual_AreaInSet"
type
  Handle_StepVisual_AreaInSet* = handle[StepVisual_AreaInSet]
  StepVisual_AreaInSet* {.importcpp: "StepVisual_AreaInSet",
                         header: "StepVisual_AreaInSet.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Returns
                                                                                              ## a
                                                                                              ## AreaInSet


proc constructStepVisual_AreaInSet*(): StepVisual_AreaInSet {.constructor,
    importcpp: "StepVisual_AreaInSet(@)", header: "StepVisual_AreaInSet.hxx".}
proc Init*(this: var StepVisual_AreaInSet;
          aArea: handle[StepVisual_PresentationArea];
          aInSet: handle[StepVisual_PresentationSet]) {.importcpp: "Init",
    header: "StepVisual_AreaInSet.hxx".}
proc SetArea*(this: var StepVisual_AreaInSet;
             aArea: handle[StepVisual_PresentationArea]) {.importcpp: "SetArea",
    header: "StepVisual_AreaInSet.hxx".}
proc Area*(this: StepVisual_AreaInSet): handle[StepVisual_PresentationArea] {.
    noSideEffect, importcpp: "Area", header: "StepVisual_AreaInSet.hxx".}
proc SetInSet*(this: var StepVisual_AreaInSet;
              aInSet: handle[StepVisual_PresentationSet]) {.importcpp: "SetInSet",
    header: "StepVisual_AreaInSet.hxx".}
proc InSet*(this: StepVisual_AreaInSet): handle[StepVisual_PresentationSet] {.
    noSideEffect, importcpp: "InSet", header: "StepVisual_AreaInSet.hxx".}
type
  StepVisual_AreaInSetbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepVisual_AreaInSet::get_type_name(@)",
                              header: "StepVisual_AreaInSet.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_AreaInSet::get_type_descriptor(@)",
    header: "StepVisual_AreaInSet.hxx".}
proc DynamicType*(this: StepVisual_AreaInSet): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_AreaInSet.hxx".}