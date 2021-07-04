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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESGraph_DefinitionLevel"
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
  IGESGraph_ToolDefinitionLevel* {.importcpp: "IGESGraph_ToolDefinitionLevel",
                                  header: "IGESGraph_ToolDefinitionLevel.hxx",
                                  bycopy.} = object ## ! Returns a ToolDefinitionLevel, ready to work


proc constructIGESGraph_ToolDefinitionLevel*(): IGESGraph_ToolDefinitionLevel {.
    constructor, importcpp: "IGESGraph_ToolDefinitionLevel(@)",
    header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc ReadOwnParams*(this: IGESGraph_ToolDefinitionLevel;
                   ent: handle[IGESGraph_DefinitionLevel];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc WriteOwnParams*(this: IGESGraph_ToolDefinitionLevel;
                    ent: handle[IGESGraph_DefinitionLevel];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc OwnShared*(this: IGESGraph_ToolDefinitionLevel;
               ent: handle[IGESGraph_DefinitionLevel];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc DirChecker*(this: IGESGraph_ToolDefinitionLevel;
                ent: handle[IGESGraph_DefinitionLevel]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc OwnCheck*(this: IGESGraph_ToolDefinitionLevel;
              ent: handle[IGESGraph_DefinitionLevel]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc OwnCopy*(this: IGESGraph_ToolDefinitionLevel;
             entfrom: handle[IGESGraph_DefinitionLevel];
             entto: handle[IGESGraph_DefinitionLevel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolDefinitionLevel.hxx".}
proc OwnDump*(this: IGESGraph_ToolDefinitionLevel;
             ent: handle[IGESGraph_DefinitionLevel]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESGraph_ToolDefinitionLevel.hxx".}