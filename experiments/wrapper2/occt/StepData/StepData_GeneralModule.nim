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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepData_GeneralModule"
discard "forward decl of StepData_GeneralModule"
type
  HandleC1C1* = Handle[StepDataGeneralModule]

## ! Specific features for General Services adapted to STEP

type
  StepDataGeneralModule* {.importcpp: "StepData_GeneralModule",
                          header: "StepData_GeneralModule.hxx", bycopy.} = object of InterfaceGeneralModule ##
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


proc fillSharedCase*(this: StepDataGeneralModule; casenum: cint;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "StepData_GeneralModule.hxx".}
proc checkCase*(this: StepDataGeneralModule; casenum: cint;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "CheckCase", header: "StepData_GeneralModule.hxx".}
proc copyCase*(this: StepDataGeneralModule; casenum: cint;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "StepData_GeneralModule.hxx".}
type
  StepDataGeneralModulebaseType* = InterfaceGeneralModule

proc getTypeName*(): cstring {.importcpp: "StepData_GeneralModule::get_type_name(@)",
                            header: "StepData_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepData_GeneralModule::get_type_descriptor(@)",
    header: "StepData_GeneralModule.hxx".}
proc dynamicType*(this: StepDataGeneralModule): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepData_GeneralModule.hxx".}

























