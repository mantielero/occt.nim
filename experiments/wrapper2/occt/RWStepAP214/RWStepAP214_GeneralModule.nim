##  Created on: 1995-12-07
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
  ../StepData/StepData_GeneralModule, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of RWStepAP214_GeneralModule"
discard "forward decl of RWStepAP214_GeneralModule"
type
  Handle_RWStepAP214_GeneralModule* = handle[RWStepAP214_GeneralModule]

## ! Defines General Services for StepAP214 Entities
## ! (Share,Check,Copy; Trace already inherited)
## ! Depends (for case numbers) of Protocol from StepAP214

type
  RWStepAP214_GeneralModule* {.importcpp: "RWStepAP214_GeneralModule",
                              header: "RWStepAP214_GeneralModule.hxx", bycopy.} = object of StepData_GeneralModule ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## GeneralModule


proc constructRWStepAP214_GeneralModule*(): RWStepAP214_GeneralModule {.
    constructor, importcpp: "RWStepAP214_GeneralModule(@)",
    header: "RWStepAP214_GeneralModule.hxx".}
proc FillSharedCase*(this: RWStepAP214_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "RWStepAP214_GeneralModule.hxx".}
proc CheckCase*(this: RWStepAP214_GeneralModule; CN: Standard_Integer;
               ent: handle[Standard_Transient]; shares: Interface_ShareTool;
               ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "CheckCase", header: "RWStepAP214_GeneralModule.hxx".}
proc CopyCase*(this: RWStepAP214_GeneralModule; CN: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: handle[Standard_Transient]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "RWStepAP214_GeneralModule.hxx".}
proc NewVoid*(this: RWStepAP214_GeneralModule; CN: Standard_Integer;
             ent: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "NewVoid", header: "RWStepAP214_GeneralModule.hxx".}
proc CategoryNumber*(this: RWStepAP214_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient]; shares: Interface_ShareTool): Standard_Integer {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "RWStepAP214_GeneralModule.hxx".}
proc Name*(this: RWStepAP214_GeneralModule; CN: Standard_Integer;
          ent: handle[Standard_Transient]; shares: Interface_ShareTool): handle[
    TCollection_HAsciiString] {.noSideEffect, importcpp: "Name",
                               header: "RWStepAP214_GeneralModule.hxx".}
type
  RWStepAP214_GeneralModulebase_type* = StepData_GeneralModule

proc get_type_name*(): cstring {.importcpp: "RWStepAP214_GeneralModule::get_type_name(@)",
                              header: "RWStepAP214_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWStepAP214_GeneralModule::get_type_descriptor(@)",
    header: "RWStepAP214_GeneralModule.hxx".}
proc DynamicType*(this: RWStepAP214_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "RWStepAP214_GeneralModule.hxx".}