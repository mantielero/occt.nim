##  Created on: 1994-06-16
##  Created by: EXPRESS->CDL V0.2 Translator
##  Copyright (c) 1994-1999 Matra Datavision
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
discard "forward decl of RWHeaderSection_GeneralModule"
discard "forward decl of RWHeaderSection_GeneralModule"
type
  Handle_RWHeaderSection_GeneralModule* = handle[RWHeaderSection_GeneralModule]

## ! Defines General Services for HeaderSection Entities
## ! (Share,Check,Copy; Trace already inherited)
## ! Depends (for case numbers) of Protocol from HeaderSection

type
  RWHeaderSection_GeneralModule* {.importcpp: "RWHeaderSection_GeneralModule",
                                  header: "RWHeaderSection_GeneralModule.hxx",
                                  bycopy.} = object of StepData_GeneralModule ## ! Creates a
                                                                         ## GeneralModule


proc constructRWHeaderSection_GeneralModule*(): RWHeaderSection_GeneralModule {.
    constructor, importcpp: "RWHeaderSection_GeneralModule(@)",
    header: "RWHeaderSection_GeneralModule.hxx".}
proc FillSharedCase*(this: RWHeaderSection_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient];
                    iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "FillSharedCase", header: "RWHeaderSection_GeneralModule.hxx".}
proc CheckCase*(this: RWHeaderSection_GeneralModule; CN: Standard_Integer;
               ent: handle[Standard_Transient]; shares: Interface_ShareTool;
               ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "CheckCase", header: "RWHeaderSection_GeneralModule.hxx".}
proc CopyCase*(this: RWHeaderSection_GeneralModule; CN: Standard_Integer;
              entfrom: handle[Standard_Transient];
              entto: handle[Standard_Transient]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "CopyCase",
    header: "RWHeaderSection_GeneralModule.hxx".}
proc NewVoid*(this: RWHeaderSection_GeneralModule; CN: Standard_Integer;
             ent: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "NewVoid", header: "RWHeaderSection_GeneralModule.hxx".}
type
  RWHeaderSection_GeneralModulebase_type* = StepData_GeneralModule

proc get_type_name*(): cstring {.importcpp: "RWHeaderSection_GeneralModule::get_type_name(@)",
                              header: "RWHeaderSection_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "RWHeaderSection_GeneralModule::get_type_descriptor(@)",
    header: "RWHeaderSection_GeneralModule.hxx".}
proc DynamicType*(this: RWHeaderSection_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "RWHeaderSection_GeneralModule.hxx".}