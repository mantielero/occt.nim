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
discard "forward decl of IGESGraph_LineFontDefPattern"
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
  IGESGraphToolLineFontDefPattern* {.importcpp: "IGESGraph_ToolLineFontDefPattern", header: "IGESGraph_ToolLineFontDefPattern.hxx",
                                    bycopy.} = object ## ! Returns a ToolLineFontDefPattern, ready to work


proc constructIGESGraphToolLineFontDefPattern*(): IGESGraphToolLineFontDefPattern {.
    constructor, importcpp: "IGESGraph_ToolLineFontDefPattern(@)",
    header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc readOwnParams*(this: IGESGraphToolLineFontDefPattern;
                   ent: Handle[IGESGraphLineFontDefPattern];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc writeOwnParams*(this: IGESGraphToolLineFontDefPattern;
                    ent: Handle[IGESGraphLineFontDefPattern];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc ownShared*(this: IGESGraphToolLineFontDefPattern;
               ent: Handle[IGESGraphLineFontDefPattern];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc dirChecker*(this: IGESGraphToolLineFontDefPattern;
                ent: Handle[IGESGraphLineFontDefPattern]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc ownCheck*(this: IGESGraphToolLineFontDefPattern;
              ent: Handle[IGESGraphLineFontDefPattern];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc ownCopy*(this: IGESGraphToolLineFontDefPattern;
             entfrom: Handle[IGESGraphLineFontDefPattern];
             entto: Handle[IGESGraphLineFontDefPattern]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESGraph_ToolLineFontDefPattern.hxx".}
proc ownDump*(this: IGESGraphToolLineFontDefPattern;
             ent: Handle[IGESGraphLineFontDefPattern]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESGraph_ToolLineFontDefPattern.hxx".}

