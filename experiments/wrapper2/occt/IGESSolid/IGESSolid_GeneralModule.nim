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

discard "forward decl of IGESData_IGESEntity"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESSolid_GeneralModule"
discard "forward decl of IGESSolid_GeneralModule"
type
  HandleIGESSolidGeneralModule* = Handle[IGESSolidGeneralModule]

## ! Definition of General Services for IGESSolid (specific part)
## ! This Services comprise : Shared & Implied Lists, Copy, Check

type
  IGESSolidGeneralModule* {.importcpp: "IGESSolid_GeneralModule",
                           header: "IGESSolid_GeneralModule.hxx", bycopy.} = object of IGESDataGeneralModule ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## GeneralModule
                                                                                                      ## from
                                                                                                      ## IGESSolid
                                                                                                      ## and
                                                                                                      ## puts
                                                                                                      ## it
                                                                                                      ## into
                                                                                                      ## GeneralLib


proc constructIGESSolidGeneralModule*(): IGESSolidGeneralModule {.constructor,
    importcpp: "IGESSolid_GeneralModule(@)", header: "IGESSolid_GeneralModule.hxx".}
proc ownSharedCase*(this: IGESSolidGeneralModule; cn: int;
                   ent: Handle[IGESDataIGESEntity];
                   iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESSolid_GeneralModule.hxx".}
proc dirChecker*(this: IGESSolidGeneralModule; cn: int;
                ent: Handle[IGESDataIGESEntity]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_GeneralModule.hxx".}
proc ownCheckCase*(this: IGESSolidGeneralModule; cn: int;
                  ent: Handle[IGESDataIGESEntity]; shares: InterfaceShareTool;
                  ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESSolid_GeneralModule.hxx".}
proc newVoid*(this: IGESSolidGeneralModule; cn: int;
             entto: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "IGESSolid_GeneralModule.hxx".}
proc ownCopyCase*(this: IGESSolidGeneralModule; cn: int;
                 entfrom: Handle[IGESDataIGESEntity];
                 entto: Handle[IGESDataIGESEntity]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESSolid_GeneralModule.hxx".}
proc categoryNumber*(this: IGESSolidGeneralModule; cn: int;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): int {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "IGESSolid_GeneralModule.hxx".}
type
  IGESSolidGeneralModulebaseType* = IGESDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "IGESSolid_GeneralModule::get_type_name(@)",
                            header: "IGESSolid_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_GeneralModule::get_type_descriptor(@)",
    header: "IGESSolid_GeneralModule.hxx".}
proc dynamicType*(this: IGESSolidGeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESSolid_GeneralModule.hxx".}
