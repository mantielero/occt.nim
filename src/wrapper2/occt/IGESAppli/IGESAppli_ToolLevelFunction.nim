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
discard "forward decl of IGESAppli_LevelFunction"
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
  IGESAppli_ToolLevelFunction* {.importcpp: "IGESAppli_ToolLevelFunction",
                                header: "IGESAppli_ToolLevelFunction.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## ToolLevelFunction,
                                                                                        ## ready
                                                                                        ## to
                                                                                        ## work


proc constructIGESAppli_ToolLevelFunction*(): IGESAppli_ToolLevelFunction {.
    constructor, importcpp: "IGESAppli_ToolLevelFunction(@)",
    header: "IGESAppli_ToolLevelFunction.hxx".}
proc ReadOwnParams*(this: IGESAppli_ToolLevelFunction;
                   ent: handle[IGESAppli_LevelFunction];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESAppli_ToolLevelFunction.hxx".}
proc WriteOwnParams*(this: IGESAppli_ToolLevelFunction;
                    ent: handle[IGESAppli_LevelFunction];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolLevelFunction.hxx".}
proc OwnShared*(this: IGESAppli_ToolLevelFunction;
               ent: handle[IGESAppli_LevelFunction];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolLevelFunction.hxx".}
proc OwnCorrect*(this: IGESAppli_ToolLevelFunction;
                ent: handle[IGESAppli_LevelFunction]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESAppli_ToolLevelFunction.hxx".}
proc DirChecker*(this: IGESAppli_ToolLevelFunction;
                ent: handle[IGESAppli_LevelFunction]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolLevelFunction.hxx".}
proc OwnCheck*(this: IGESAppli_ToolLevelFunction;
              ent: handle[IGESAppli_LevelFunction]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolLevelFunction.hxx".}
proc OwnCopy*(this: IGESAppli_ToolLevelFunction;
             entfrom: handle[IGESAppli_LevelFunction];
             entto: handle[IGESAppli_LevelFunction]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolLevelFunction.hxx".}
proc OwnDump*(this: IGESAppli_ToolLevelFunction;
             ent: handle[IGESAppli_LevelFunction]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESAppli_ToolLevelFunction.hxx".}