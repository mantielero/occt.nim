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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../StepData/StepData_SelectType,
  ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of StepVisual_FillAreaStyleColour"
type
  StepVisual_FillStyleSelect* {.importcpp: "StepVisual_FillStyleSelect",
                               header: "StepVisual_FillStyleSelect.hxx", bycopy.} = object of StepData_SelectType ##
                                                                                                           ## !
                                                                                                           ## Returns
                                                                                                           ## a
                                                                                                           ## FillStyleSelect
                                                                                                           ## SelectType


proc constructStepVisual_FillStyleSelect*(): StepVisual_FillStyleSelect {.
    constructor, importcpp: "StepVisual_FillStyleSelect(@)",
    header: "StepVisual_FillStyleSelect.hxx".}
proc CaseNum*(this: StepVisual_FillStyleSelect; ent: handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "CaseNum", header: "StepVisual_FillStyleSelect.hxx".}
proc FillAreaStyleColour*(this: StepVisual_FillStyleSelect): handle[
    StepVisual_FillAreaStyleColour] {.noSideEffect,
                                     importcpp: "FillAreaStyleColour",
                                     header: "StepVisual_FillStyleSelect.hxx".}