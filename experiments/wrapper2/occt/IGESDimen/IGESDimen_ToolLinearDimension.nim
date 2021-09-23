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
discard "forward decl of IGESDimen_LinearDimension"
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
  IGESDimen_ToolLinearDimension* {.importcpp: "IGESDimen_ToolLinearDimension",
                                  header: "IGESDimen_ToolLinearDimension.hxx",
                                  bycopy.} = object ## ! Returns a ToolLinearDimension, ready to work


proc constructIGESDimen_ToolLinearDimension*(): IGESDimen_ToolLinearDimension {.
    constructor, importcpp: "IGESDimen_ToolLinearDimension(@)",
    header: "IGESDimen_ToolLinearDimension.hxx".}
proc ReadOwnParams*(this: IGESDimen_ToolLinearDimension;
                   ent: handle[IGESDimen_LinearDimension];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDimen_ToolLinearDimension.hxx".}
proc WriteOwnParams*(this: IGESDimen_ToolLinearDimension;
                    ent: handle[IGESDimen_LinearDimension];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolLinearDimension.hxx".}
proc OwnShared*(this: IGESDimen_ToolLinearDimension;
               ent: handle[IGESDimen_LinearDimension];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolLinearDimension.hxx".}
proc DirChecker*(this: IGESDimen_ToolLinearDimension;
                ent: handle[IGESDimen_LinearDimension]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolLinearDimension.hxx".}
proc OwnCheck*(this: IGESDimen_ToolLinearDimension;
              ent: handle[IGESDimen_LinearDimension]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDimen_ToolLinearDimension.hxx".}
proc OwnCopy*(this: IGESDimen_ToolLinearDimension;
             entfrom: handle[IGESDimen_LinearDimension];
             entto: handle[IGESDimen_LinearDimension]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolLinearDimension.hxx".}
proc OwnDump*(this: IGESDimen_ToolLinearDimension;
             ent: handle[IGESDimen_LinearDimension]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESDimen_ToolLinearDimension.hxx".}