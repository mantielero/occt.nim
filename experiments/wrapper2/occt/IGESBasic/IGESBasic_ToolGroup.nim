##  Created on: 1993-10-14
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

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESBasic_Group"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESData_IGESDumper"
discard "forward decl of Message_Messenger"
type
  IGESBasicToolGroup* {.importcpp: "IGESBasic_ToolGroup",
                       header: "IGESBasic_ToolGroup.hxx", bycopy.} = object ## ! Returns a
                                                                       ## ToolGroup, ready to work


proc constructIGESBasicToolGroup*(): IGESBasicToolGroup {.constructor,
    importcpp: "IGESBasic_ToolGroup(@)", header: "IGESBasic_ToolGroup.hxx".}
proc readOwnParams*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESBasic_ToolGroup.hxx".}
proc writeOwnParams*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolGroup.hxx".}
proc ownShared*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolGroup.hxx".}
proc ownCorrect*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESBasic_ToolGroup.hxx".}
proc dirChecker*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolGroup.hxx".}
proc ownCheck*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESBasic_ToolGroup.hxx".}
proc ownCopy*(this: IGESBasicToolGroup; entfrom: Handle[IGESBasicGroup];
             entto: Handle[IGESBasicGroup]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolGroup.hxx".}
proc ownDump*(this: IGESBasicToolGroup; ent: Handle[IGESBasicGroup];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolGroup.hxx".}

























