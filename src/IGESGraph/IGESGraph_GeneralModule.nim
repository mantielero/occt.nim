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
discard "forward decl of IGESGraph_GeneralModule"
discard "forward decl of IGESGraph_GeneralModule"
type
  HandleC1C1* = Handle[IGESGraphGeneralModule]

## ! Definition of General Services for IGESGraph (specific part)
## ! This Services comprise : Shared & Implied Lists, Copy, Check

type
  IGESGraphGeneralModule* {.importcpp: "IGESGraph_GeneralModule",
                           header: "IGESGraph_GeneralModule.hxx", bycopy.} = object of IGESDataGeneralModule ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## GeneralModule
                                                                                                      ## from
                                                                                                      ## IGESGraph
                                                                                                      ## and
                                                                                                      ## puts
                                                                                                      ## it
                                                                                                      ## into
                                                                                                      ## GeneralLib


proc constructIGESGraphGeneralModule*(): IGESGraphGeneralModule {.constructor,
    importcpp: "IGESGraph_GeneralModule(@)", header: "IGESGraph_GeneralModule.hxx".}
proc ownSharedCase*(this: IGESGraphGeneralModule; cn: cint;
                   ent: Handle[IGESDataIGESEntity];
                   iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESGraph_GeneralModule.hxx".}
proc dirChecker*(this: IGESGraphGeneralModule; cn: cint;
                ent: Handle[IGESDataIGESEntity]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGraph_GeneralModule.hxx".}
proc ownCheckCase*(this: IGESGraphGeneralModule; cn: cint;
                  ent: Handle[IGESDataIGESEntity]; shares: InterfaceShareTool;
                  ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESGraph_GeneralModule.hxx".}
proc newVoid*(this: IGESGraphGeneralModule; cn: cint;
             entto: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "IGESGraph_GeneralModule.hxx".}
proc ownCopyCase*(this: IGESGraphGeneralModule; cn: cint;
                 entfrom: Handle[IGESDataIGESEntity];
                 entto: Handle[IGESDataIGESEntity]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESGraph_GeneralModule.hxx".}
proc categoryNumber*(this: IGESGraphGeneralModule; cn: cint;
                    ent: Handle[StandardTransient]; shares: InterfaceShareTool): cint {.
    noSideEffect, importcpp: "CategoryNumber",
    header: "IGESGraph_GeneralModule.hxx".}
type
  IGESGraphGeneralModulebaseType* = IGESDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "IGESGraph_GeneralModule::get_type_name(@)",
                            header: "IGESGraph_GeneralModule.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESGraph_GeneralModule::get_type_descriptor(@)",
    header: "IGESGraph_GeneralModule.hxx".}
proc dynamicType*(this: IGESGraphGeneralModule): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESGraph_GeneralModule.hxx".}

























