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
discard "forward decl of IGESBasic_SingleParent"
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
  IGESBasic_ToolSingleParent* {.importcpp: "IGESBasic_ToolSingleParent",
                               header: "IGESBasic_ToolSingleParent.hxx", bycopy.} = object ##
                                                                                      ## !
                                                                                      ## Returns
                                                                                      ## a
                                                                                      ## ToolSingleParent,
                                                                                      ## ready
                                                                                      ## to
                                                                                      ## work


proc constructIGESBasic_ToolSingleParent*(): IGESBasic_ToolSingleParent {.
    constructor, importcpp: "IGESBasic_ToolSingleParent(@)",
    header: "IGESBasic_ToolSingleParent.hxx".}
proc ReadOwnParams*(this: IGESBasic_ToolSingleParent;
                   ent: handle[IGESBasic_SingleParent];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESBasic_ToolSingleParent.hxx".}
proc WriteOwnParams*(this: IGESBasic_ToolSingleParent;
                    ent: handle[IGESBasic_SingleParent];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolSingleParent.hxx".}
proc OwnShared*(this: IGESBasic_ToolSingleParent;
               ent: handle[IGESBasic_SingleParent];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolSingleParent.hxx".}
proc OwnCorrect*(this: IGESBasic_ToolSingleParent;
                ent: handle[IGESBasic_SingleParent]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESBasic_ToolSingleParent.hxx".}
proc DirChecker*(this: IGESBasic_ToolSingleParent;
                ent: handle[IGESBasic_SingleParent]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolSingleParent.hxx".}
proc OwnCheck*(this: IGESBasic_ToolSingleParent;
              ent: handle[IGESBasic_SingleParent]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESBasic_ToolSingleParent.hxx".}
proc OwnCopy*(this: IGESBasic_ToolSingleParent;
             entfrom: handle[IGESBasic_SingleParent];
             entto: handle[IGESBasic_SingleParent]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolSingleParent.hxx".}
proc OwnDump*(this: IGESBasic_ToolSingleParent;
             ent: handle[IGESBasic_SingleParent]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESBasic_ToolSingleParent.hxx".}