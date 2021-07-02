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
discard "forward decl of IGESBasic_GeneralModule"
discard "forward decl of IGESBasic_GeneralModule"
type
  HandleIGESBasicGeneralModule* = Handle[IGESBasicGeneralModule]

## ! Definition of General Services for IGESBasic (specific part)
## ! This Services comprise : Shared & Implied Lists, Copy, Check

type
  IGESBasicGeneralModule* {.importcpp: "IGESBasic_GeneralModule",
                           header: "IGESBasic_GeneralModule.hxx", bycopy.} = object of IGESDataGeneralModule ##
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


proc constructIGESBasicGeneralModule*(): IGESBasicGeneralModule {.constructor,
    importcpp: "IGESBasic_GeneralModule(@)", header: "IGESBasic_GeneralModule.hxx".}
proc ownSharedCase*(this: IGESBasicGeneralModule; cn: StandardInteger;
                   ent: Handle[IGESDataIGESEntity];
                   iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESBasic_GeneralModule.hxx".}
proc dirChecker*(this: IGESBasicGeneralModule; cn: StandardInteger;
                ent: Handle[IGESDataIGESEntity]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_GeneralModule.hxx".}
proc ownCheckCase*(this: IGESBasicGeneralModule; cn: StandardInteger;
                  ent: Handle[IGESDataIGESEntity]; shares: InterfaceShareTool;
                  ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESBasic_GeneralModule.hxx".}
proc newVoid*(this: IGESBasicGeneralModule; cn: StandardInteger;
             entto: var Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "NewVoid", header: "IGESBasic_GeneralModule.hxx".}
proc ownCopyCase*(this: IGESBasicGeneralModule; cn: StandardInteger;
                 entfrom: Handle[IGESDataIGESEntity];
                 entto: Handle[IGESDataIGESEntity]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESBasic_GeneralModule.hxx".}
proc categoryNumber*(this: IGESBasicGeneralModule; cn: StandardInteger;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): StandardInteger {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "IGESBasic_GeneralModule.hxx".}
type
  IGESBasicGeneralModulebaseType* = IGESDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "IGESBasic_GeneralModule::get_type_name(@)",
                            header: "IGESBasic_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESBasic_GeneralModule::get_type_descriptor(@)",
    header: "IGESBasic_GeneralModule.hxx".}
proc dynamicType*(this: IGESBasicGeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESBasic_GeneralModule.hxx".}

