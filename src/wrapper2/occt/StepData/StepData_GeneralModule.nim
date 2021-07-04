##  Created on: 1993-02-02
##  Created by: Christian CAILLET
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Interface/Interface_GeneralModule, ../Standard/Standard_Integer

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepData_GeneralModule"
discard "forward decl of StepData_GeneralModule"
type
  Handle_StepData_GeneralModule* = handle[StepData_GeneralModule]

## ! Specific features for General Services adapted to STEP

type
  StepData_GeneralModule* {.importcpp: "StepData_GeneralModule",
                           header: "StepData_GeneralModule.hxx", bycopy.} = object of Interface_GeneralModule ##
                                                                                                       ## !
                                                                                                       ## Specific
                                                                                                       ## filling
                                                                                                       ## of
                                                                                                       ## the
                                                                                                       ## list
                                                                                                       ## of
                                                                                                       ## Entities
                                                                                                       ## shared
                                                                                                       ## by
                                                                                                       ## an
                                                                                                       ## Entity
                                                                                                       ##
                                                                                                       ## !
                                                                                                       ## <ent>.
                                                                                                       ## Can
                                                                                                       ## use
                                                                                                       ## the
                                                                                                       ## internal
                                                                                                       ## utility
                                                                                                       ## method
                                                                                                       ## Share,
                                                                                                       ## below


proc FillSharedCase*(this: StepData_GeneralModule; casenum: Standard_Integer;
                    ent: handle[Standard_Transient];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "StepData_GeneralModule.hxx".}
proc CheckCase*(this: StepData_GeneralModule; casenum: Standard_Integer;
               ent: handle[Standard_Transient]; shares: Interface_ShareTool;
               ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "CheckCase", header: "StepData_GeneralModule.hxx".}
proc CopyCase*(this: StepData_GeneralModule; casenum: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: handle[Standard_Transient]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "StepData_GeneralModule.hxx".}
type
  StepData_GeneralModulebase_type* = Interface_GeneralModule

proc get_type_name*(): cstring {.importcpp: "StepData_GeneralModule::get_type_name(@)",
                              header: "StepData_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_GeneralModule::get_type_descriptor(@)",
    header: "StepData_GeneralModule.hxx".}
proc DynamicType*(this: StepData_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_GeneralModule.hxx".}