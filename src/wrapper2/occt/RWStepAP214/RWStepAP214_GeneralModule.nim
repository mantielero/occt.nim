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

discard "forward decl of Standard_Transient"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of TCollection_HAsciiString"
discard "forward decl of RWStepAP214_GeneralModule"
discard "forward decl of RWStepAP214_GeneralModule"
type
  HandleRWStepAP214GeneralModule* = Handle[RWStepAP214GeneralModule]

## ! Defines General Services for StepAP214 Entities
## ! (Share,Check,Copy; Trace already inherited)
## ! Depends (for case numbers) of Protocol from StepAP214

type
  RWStepAP214GeneralModule* {.importcpp: "RWStepAP214_GeneralModule",
                             header: "RWStepAP214_GeneralModule.hxx", bycopy.} = object of StepDataGeneralModule ##
                                                                                                          ## !
                                                                                                          ## Creates
                                                                                                          ## a
                                                                                                          ## GeneralModule


proc constructRWStepAP214GeneralModule*(): RWStepAP214GeneralModule {.constructor,
    importcpp: "RWStepAP214_GeneralModule(@)",
    header: "RWStepAP214_GeneralModule.hxx".}
proc fillSharedCase*(this: RWStepAP214GeneralModule; cn: StandardInteger;
                    ent: Handle[StandardTransient];
                    iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "RWStepAP214_GeneralModule.hxx".}
proc checkCase*(this: RWStepAP214GeneralModule; cn: StandardInteger;
               ent: Handle[StandardTransient]; shares: InterfaceShareTool;
               ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "CheckCase", header: "RWStepAP214_GeneralModule.hxx".}
proc copyCase*(this: RWStepAP214GeneralModule; cn: StandardInteger;
              entfrom: Handle[StandardTransient];
              entto: Handle[StandardTransient]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "CopyCase", header: "RWStepAP214_GeneralModule.hxx".}
proc newVoid*(this: RWStepAP214GeneralModule; cn: StandardInteger;
             ent: var Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "NewVoid", header: "RWStepAP214_GeneralModule.hxx".}
proc categoryNumber*(this: RWStepAP214GeneralModule; cn: StandardInteger;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): StandardInteger {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "RWStepAP214_GeneralModule.hxx".}
proc name*(this: RWStepAP214GeneralModule; cn: StandardInteger;
          ent: Handle[StandardTransient]; shares: InterfaceShareTool): Handle[
    TCollectionHAsciiString] {.noSideEffect, importcpp: "Name",
                              header: "RWStepAP214_GeneralModule.hxx".}
type
  RWStepAP214GeneralModulebaseType* = StepDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "RWStepAP214_GeneralModule::get_type_name(@)",
                            header: "RWStepAP214_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "RWStepAP214_GeneralModule::get_type_descriptor(@)",
    header: "RWStepAP214_GeneralModule.hxx".}
proc dynamicType*(this: RWStepAP214GeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "RWStepAP214_GeneralModule.hxx".}

