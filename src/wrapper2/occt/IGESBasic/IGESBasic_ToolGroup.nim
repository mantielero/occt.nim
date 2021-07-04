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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

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
  IGESBasic_ToolGroup* {.importcpp: "IGESBasic_ToolGroup",
                        header: "IGESBasic_ToolGroup.hxx", bycopy.} = object ## ! Returns a
                                                                        ## ToolGroup, ready to work


proc constructIGESBasic_ToolGroup*(): IGESBasic_ToolGroup {.constructor,
    importcpp: "IGESBasic_ToolGroup(@)", header: "IGESBasic_ToolGroup.hxx".}
proc ReadOwnParams*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESBasic_ToolGroup.hxx".}
proc WriteOwnParams*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolGroup.hxx".}
proc OwnShared*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolGroup.hxx".}
proc OwnCorrect*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESBasic_ToolGroup.hxx".}
proc DirChecker*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolGroup.hxx".}
proc OwnCheck*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESBasic_ToolGroup.hxx".}
proc OwnCopy*(this: IGESBasic_ToolGroup; entfrom: handle[IGESBasic_Group];
             entto: handle[IGESBasic_Group]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolGroup.hxx".}
proc OwnDump*(this: IGESBasic_ToolGroup; ent: handle[IGESBasic_Group];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESBasic_ToolGroup.hxx".}