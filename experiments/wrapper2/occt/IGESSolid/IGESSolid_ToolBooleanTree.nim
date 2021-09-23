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
discard "forward decl of IGESSolid_BooleanTree"
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
  IGESSolid_ToolBooleanTree* {.importcpp: "IGESSolid_ToolBooleanTree",
                              header: "IGESSolid_ToolBooleanTree.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## ToolBooleanTree,
                                                                                    ## ready
                                                                                    ## to
                                                                                    ## work


proc constructIGESSolid_ToolBooleanTree*(): IGESSolid_ToolBooleanTree {.
    constructor, importcpp: "IGESSolid_ToolBooleanTree(@)",
    header: "IGESSolid_ToolBooleanTree.hxx".}
proc ReadOwnParams*(this: IGESSolid_ToolBooleanTree;
                   ent: handle[IGESSolid_BooleanTree];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESSolid_ToolBooleanTree.hxx".}
proc WriteOwnParams*(this: IGESSolid_ToolBooleanTree;
                    ent: handle[IGESSolid_BooleanTree];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolBooleanTree.hxx".}
proc OwnShared*(this: IGESSolid_ToolBooleanTree;
               ent: handle[IGESSolid_BooleanTree];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolBooleanTree.hxx".}
proc DirChecker*(this: IGESSolid_ToolBooleanTree;
                ent: handle[IGESSolid_BooleanTree]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolBooleanTree.hxx".}
proc OwnCheck*(this: IGESSolid_ToolBooleanTree; ent: handle[IGESSolid_BooleanTree];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolBooleanTree.hxx".}
proc OwnCopy*(this: IGESSolid_ToolBooleanTree;
             entfrom: handle[IGESSolid_BooleanTree];
             entto: handle[IGESSolid_BooleanTree]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolBooleanTree.hxx".}
proc OwnDump*(this: IGESSolid_ToolBooleanTree; ent: handle[IGESSolid_BooleanTree];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESSolid_ToolBooleanTree.hxx".}