##  Created on: 1993-09-08
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
discard "forward decl of IGESData_DefaultGeneral"
discard "forward decl of IGESData_DefaultGeneral"
type
  HandleIGESDataDefaultGeneral* = Handle[IGESDataDefaultGeneral]

## ! Processes the specific case of UndefinedEntity from IGESData
## ! (Case Number 1)

type
  IGESDataDefaultGeneral* {.importcpp: "IGESData_DefaultGeneral",
                           header: "IGESData_DefaultGeneral.hxx", bycopy.} = object of IGESDataGeneralModule ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## DefaultGeneral
                                                                                                      ## and
                                                                                                      ## puts
                                                                                                      ## it
                                                                                                      ## into
                                                                                                      ## GeneralLib,
                                                                                                      ##
                                                                                                      ## !
                                                                                                      ## bound
                                                                                                      ## with
                                                                                                      ## a
                                                                                                      ## Protocol
                                                                                                      ## from
                                                                                                      ## IGESData


proc constructIGESDataDefaultGeneral*(): IGESDataDefaultGeneral {.constructor,
    importcpp: "IGESData_DefaultGeneral(@)", header: "IGESData_DefaultGeneral.hxx".}
proc ownSharedCase*(this: IGESDataDefaultGeneral; cn: int;
                   ent: Handle[IGESDataIGESEntity];
                   iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnSharedCase", header: "IGESData_DefaultGeneral.hxx".}
proc dirChecker*(this: IGESDataDefaultGeneral; cn: int;
                ent: Handle[IGESDataIGESEntity]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESData_DefaultGeneral.hxx".}
proc ownCheckCase*(this: IGESDataDefaultGeneral; cn: int;
                  ent: Handle[IGESDataIGESEntity]; shares: InterfaceShareTool;
                  ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheckCase", header: "IGESData_DefaultGeneral.hxx".}
proc newVoid*(this: IGESDataDefaultGeneral; cn: int;
             entto: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "NewVoid", header: "IGESData_DefaultGeneral.hxx".}
proc ownCopyCase*(this: IGESDataDefaultGeneral; cn: int;
                 entfrom: Handle[IGESDataIGESEntity];
                 entto: Handle[IGESDataIGESEntity]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopyCase", header: "IGESData_DefaultGeneral.hxx".}
type
  IGESDataDefaultGeneralbaseType* = IGESDataGeneralModule

proc getTypeName*(): cstring {.importcpp: "IGESData_DefaultGeneral::get_type_name(@)",
                            header: "IGESData_DefaultGeneral.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESData_DefaultGeneral::get_type_descriptor(@)",
    header: "IGESData_DefaultGeneral.hxx".}
proc dynamicType*(this: IGESDataDefaultGeneral): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESData_DefaultGeneral.hxx".}
