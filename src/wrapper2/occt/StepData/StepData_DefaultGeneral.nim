##  Created on: 1993-03-26
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
  ../Standard/Standard, ../Standard/Standard_Type, StepData_GeneralModule,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepData_DefaultGeneral"
discard "forward decl of StepData_DefaultGeneral"
type
  Handle_StepData_DefaultGeneral* = handle[StepData_DefaultGeneral]

## ! DefaultGeneral defines a GeneralModule which processes
## ! Unknown Entity from StepData  only

type
  StepData_DefaultGeneral* {.importcpp: "StepData_DefaultGeneral",
                            header: "StepData_DefaultGeneral.hxx", bycopy.} = object of StepData_GeneralModule ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## Default
                                                                                                        ## General
                                                                                                        ## Module


proc constructStepData_DefaultGeneral*(): StepData_DefaultGeneral {.constructor,
    importcpp: "StepData_DefaultGeneral(@)", header: "StepData_DefaultGeneral.hxx".}
proc FillSharedCase*(this: StepData_DefaultGeneral; casenum: Standard_Integer;
                    ent: handle[Standard_Transient];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "StepData_DefaultGeneral.hxx".}
proc CheckCase*(this: StepData_DefaultGeneral; casenum: Standard_Integer;
               ent: handle[Standard_Transient]; shares: Interface_ShareTool;
               ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "CheckCase", header: "StepData_DefaultGeneral.hxx".}
proc NewVoid*(this: StepData_DefaultGeneral; CN: Standard_Integer;
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewVoid", header: "StepData_DefaultGeneral.hxx".}
proc CopyCase*(this: StepData_DefaultGeneral; casenum: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: handle[Standard_Transient]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "StepData_DefaultGeneral.hxx".}
type
  StepData_DefaultGeneralbase_type* = StepData_GeneralModule

proc get_type_name*(): cstring {.importcpp: "StepData_DefaultGeneral::get_type_name(@)",
                              header: "StepData_DefaultGeneral.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepData_DefaultGeneral::get_type_descriptor(@)",
    header: "StepData_DefaultGeneral.hxx".}
proc DynamicType*(this: StepData_DefaultGeneral): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_DefaultGeneral.hxx".}