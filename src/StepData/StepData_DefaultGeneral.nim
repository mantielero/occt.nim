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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepData_DefaultGeneral"
discard "forward decl of StepData_DefaultGeneral"
type
  HandleC1C1* = Handle[StepDataDefaultGeneral]

## ! DefaultGeneral defines a GeneralModule which processes
## ! Unknown Entity from StepData  only

type
  StepDataDefaultGeneral* {.importcpp: "StepData_DefaultGeneral",
                           header: "StepData_DefaultGeneral.hxx", bycopy.} = object of StepDataGeneralModule ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## Default
                                                                                                      ## General
                                                                                                      ## Module


proc constructStepDataDefaultGeneral*(): StepDataDefaultGeneral {.constructor,
    importcpp: "StepData_DefaultGeneral(@)", header: "StepData_DefaultGeneral.hxx".}
proc fillSharedCase*(this: StepDataDefaultGeneral; casenum: cint;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "StepData_DefaultGeneral.hxx".}
proc checkCase*(this: StepDataDefaultGeneral; casenum: cint;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "CheckCase", header: "StepData_DefaultGeneral.hxx".}
proc newVoid*(this: StepDataDefaultGeneral; cn: cint;
             entto: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "StepData_DefaultGeneral.hxx".}
proc copyCase*(this: StepDataDefaultGeneral; casenum: cint;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "StepData_DefaultGeneral.hxx".}
type
  StepDataDefaultGeneralbaseType* = StepDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "StepData_DefaultGeneral::get_type_name(@)",
                            header: "StepData_DefaultGeneral.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_DefaultGeneral::get_type_descriptor(@)",
    header: "StepData_DefaultGeneral.hxx".}
proc dynamicType*(this: StepDataDefaultGeneral): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepData_DefaultGeneral.hxx".}

























