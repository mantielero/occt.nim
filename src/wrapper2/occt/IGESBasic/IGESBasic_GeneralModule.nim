##  Created on: 1993-05-10
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
  ../IGESData/IGESData_GeneralModule, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESBasic_GeneralModule"
discard "forward decl of IGESBasic_GeneralModule"
type
  Handle_IGESBasic_GeneralModule* = handle[IGESBasic_GeneralModule]

## ! Definition of General Services for IGESBasic (specific part)
## ! This Services comprise : Shared & Implied Lists, Copy, Check

type
  IGESBasic_GeneralModule* {.importcpp: "IGESBasic_GeneralModule",
                            header: "IGESBasic_GeneralModule.hxx", bycopy.} = object of IGESData_GeneralModule ##
                                                                                                        ## !
                                                                                                        ## Creates
                                                                                                        ## a
                                                                                                        ## GeneralModule
                                                                                                        ## from
                                                                                                        ## IGESBasic
                                                                                                        ## and
                                                                                                        ## puts
                                                                                                        ## it
                                                                                                        ## into
                                                                                                        ## GeneralLib


proc constructIGESBasic_GeneralModule*(): IGESBasic_GeneralModule {.constructor,
    importcpp: "IGESBasic_GeneralModule(@)", header: "IGESBasic_GeneralModule.hxx".}
proc OwnSharedCase*(this: IGESBasic_GeneralModule; CN: Standard_Integer;
                   ent: handle[IGESData_IGESEntity];
                   iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESBasic_GeneralModule.hxx".}
proc DirChecker*(this: IGESBasic_GeneralModule; CN: Standard_Integer;
                ent: handle[IGESData_IGESEntity]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_GeneralModule.hxx".}
proc OwnCheckCase*(this: IGESBasic_GeneralModule; CN: Standard_Integer;
                  ent: handle[IGESData_IGESEntity]; shares: Interface_ShareTool;
                  ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESBasic_GeneralModule.hxx".}
proc NewVoid*(this: IGESBasic_GeneralModule; CN: Standard_Integer;
             entto: var handle[Standard_Transient]): Standard_Boolean {.
    noSideEffect, importcpp: "NewVoid", header: "IGESBasic_GeneralModule.hxx".}
proc OwnCopyCase*(this: IGESBasic_GeneralModule; CN: Standard_Integer;
                 entfrom: handle[IGESData_IGESEntity];
                 entto: handle[IGESData_IGESEntity]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESBasic_GeneralModule.hxx".}
proc CategoryNumber*(this: IGESBasic_GeneralModule; CN: Standard_Integer;
                    ent: handle[Standard_Transient]; shares: Interface_ShareTool): Standard_Integer {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "IGESBasic_GeneralModule.hxx".}
type
  IGESBasic_GeneralModulebase_type* = IGESData_GeneralModule

proc get_type_name*(): cstring {.importcpp: "IGESBasic_GeneralModule::get_type_name(@)",
                              header: "IGESBasic_GeneralModule.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESBasic_GeneralModule::get_type_descriptor(@)",
    header: "IGESBasic_GeneralModule.hxx".}
proc DynamicType*(this: IGESBasic_GeneralModule): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_GeneralModule.hxx".}