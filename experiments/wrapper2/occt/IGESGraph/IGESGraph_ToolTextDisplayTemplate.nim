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
discard "forward decl of IGESGraph_TextDisplayTemplate"
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
  IGESGraphToolTextDisplayTemplate* {.importcpp: "IGESGraph_ToolTextDisplayTemplate", header: "IGESGraph_ToolTextDisplayTemplate.hxx",
                                     bycopy.} = object ## ! Returns a ToolTextDisplayTemplate, ready to work


proc constructIGESGraphToolTextDisplayTemplate*(): IGESGraphToolTextDisplayTemplate {.
    constructor, importcpp: "IGESGraph_ToolTextDisplayTemplate(@)",
    header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc readOwnParams*(this: IGESGraphToolTextDisplayTemplate;
                   ent: Handle[IGESGraphTextDisplayTemplate];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc writeOwnParams*(this: IGESGraphToolTextDisplayTemplate;
                    ent: Handle[IGESGraphTextDisplayTemplate];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc ownShared*(this: IGESGraphToolTextDisplayTemplate;
               ent: Handle[IGESGraphTextDisplayTemplate];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc dirChecker*(this: IGESGraphToolTextDisplayTemplate;
                ent: Handle[IGESGraphTextDisplayTemplate]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc ownCheck*(this: IGESGraphToolTextDisplayTemplate;
              ent: Handle[IGESGraphTextDisplayTemplate];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc ownCopy*(this: IGESGraphToolTextDisplayTemplate;
             entfrom: Handle[IGESGraphTextDisplayTemplate];
             entto: Handle[IGESGraphTextDisplayTemplate];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
proc ownDump*(this: IGESGraphToolTextDisplayTemplate;
             ent: Handle[IGESGraphTextDisplayTemplate];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESGraph_ToolTextDisplayTemplate.hxx".}
