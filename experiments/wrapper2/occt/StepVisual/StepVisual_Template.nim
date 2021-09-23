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
  ../StepRepr/StepRepr_Representation

discard "forward decl of StepVisual_Template"
discard "forward decl of StepVisual_Template"
type
  Handle_StepVisual_Template* = handle[StepVisual_Template]
  StepVisual_Template* {.importcpp: "StepVisual_Template",
                        header: "StepVisual_Template.hxx", bycopy.} = object of StepRepr_Representation ##
                                                                                                 ## !
                                                                                                 ## Returns
                                                                                                 ## a
                                                                                                 ## Template


proc constructStepVisual_Template*(): StepVisual_Template {.constructor,
    importcpp: "StepVisual_Template(@)", header: "StepVisual_Template.hxx".}
type
  StepVisual_Templatebase_type* = StepRepr_Representation

proc get_type_name*(): cstring {.importcpp: "StepVisual_Template::get_type_name(@)",
                              header: "StepVisual_Template.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepVisual_Template::get_type_descriptor(@)",
    header: "StepVisual_Template.hxx".}
proc DynamicType*(this: StepVisual_Template): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepVisual_Template.hxx".}