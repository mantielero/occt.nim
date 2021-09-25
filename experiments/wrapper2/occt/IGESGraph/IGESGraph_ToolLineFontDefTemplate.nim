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
discard "forward decl of IGESGraph_LineFontDefTemplate"
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
  IGESGraphToolLineFontDefTemplate* {.importcpp: "IGESGraph_ToolLineFontDefTemplate", header: "IGESGraph_ToolLineFontDefTemplate.hxx",
                                     bycopy.} = object ## ! Returns a ToolLineFontDefTemplate, ready to work


proc constructIGESGraphToolLineFontDefTemplate*(): IGESGraphToolLineFontDefTemplate {.
    constructor, importcpp: "IGESGraph_ToolLineFontDefTemplate(@)",
    header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc readOwnParams*(this: IGESGraphToolLineFontDefTemplate;
                   ent: Handle[IGESGraphLineFontDefTemplate];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc writeOwnParams*(this: IGESGraphToolLineFontDefTemplate;
                    ent: Handle[IGESGraphLineFontDefTemplate];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc ownShared*(this: IGESGraphToolLineFontDefTemplate;
               ent: Handle[IGESGraphLineFontDefTemplate];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc dirChecker*(this: IGESGraphToolLineFontDefTemplate;
                ent: Handle[IGESGraphLineFontDefTemplate]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc ownCheck*(this: IGESGraphToolLineFontDefTemplate;
              ent: Handle[IGESGraphLineFontDefTemplate];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc ownCopy*(this: IGESGraphToolLineFontDefTemplate;
             entfrom: Handle[IGESGraphLineFontDefTemplate];
             entto: Handle[IGESGraphLineFontDefTemplate];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
proc ownDump*(this: IGESGraphToolLineFontDefTemplate;
             ent: Handle[IGESGraphLineFontDefTemplate];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESGraph_ToolLineFontDefTemplate.hxx".}
