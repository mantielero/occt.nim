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
discard "forward decl of IGESBasic_Name"
discard "forward decl of IGESData_IGESReaderData"
discard "forward decl of IGESData_ParamReader"
discard "forward decl of IGESData_IGESWriter"
discard "forward decl of Interface_EntityIterator"
discard "forward decl of IGESData_DirChecker"
discard "forward decl of Interface_ShareTool"
discard "forward decl of Interface_Check"
discard "forward decl of Interface_CopyTool"
discard "forward decl of IGESData_IGESDumper"
type
  IGESBasicToolName* {.importcpp: "IGESBasic_ToolName",
                      header: "IGESBasic_ToolName.hxx", bycopy.} = object ## ! Returns a ToolName, ready to work


proc constructIGESBasicToolName*(): IGESBasicToolName {.constructor,
    importcpp: "IGESBasic_ToolName(@)", header: "IGESBasic_ToolName.hxx".}
proc readOwnParams*(this: IGESBasicToolName; ent: Handle[IGESBasicName];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESBasic_ToolName.hxx".}
proc writeOwnParams*(this: IGESBasicToolName; ent: Handle[IGESBasicName];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolName.hxx".}
proc ownShared*(this: IGESBasicToolName; ent: Handle[IGESBasicName];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolName.hxx".}
proc ownCorrect*(this: IGESBasicToolName; ent: Handle[IGESBasicName]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESBasic_ToolName.hxx".}
proc dirChecker*(this: IGESBasicToolName; ent: Handle[IGESBasicName]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolName.hxx".}
proc ownCheck*(this: IGESBasicToolName; ent: Handle[IGESBasicName];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESBasic_ToolName.hxx".}
proc ownCopy*(this: IGESBasicToolName; entfrom: Handle[IGESBasicName];
             entto: Handle[IGESBasicName]; tc: var InterfaceCopyTool) {.noSideEffect,
    importcpp: "OwnCopy", header: "IGESBasic_ToolName.hxx".}
proc ownDump*(this: IGESBasicToolName; ent: Handle[IGESBasicName];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolName.hxx".}
