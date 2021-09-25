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
discard "forward decl of IGESGraph_Color"
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
  IGESGraphToolColor* {.importcpp: "IGESGraph_ToolColor",
                       header: "IGESGraph_ToolColor.hxx", bycopy.} = object ## ! Returns a
                                                                       ## ToolColor, ready to work


proc constructIGESGraphToolColor*(): IGESGraphToolColor {.constructor,
    importcpp: "IGESGraph_ToolColor(@)", header: "IGESGraph_ToolColor.hxx".}
proc readOwnParams*(this: IGESGraphToolColor; ent: Handle[IGESGraphColor];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESGraph_ToolColor.hxx".}
proc writeOwnParams*(this: IGESGraphToolColor; ent: Handle[IGESGraphColor];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolColor.hxx".}
proc ownShared*(this: IGESGraphToolColor; ent: Handle[IGESGraphColor];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolColor.hxx".}
proc dirChecker*(this: IGESGraphToolColor; ent: Handle[IGESGraphColor]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGraph_ToolColor.hxx".}
proc ownCheck*(this: IGESGraphToolColor; ent: Handle[IGESGraphColor];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGraph_ToolColor.hxx".}
proc ownCopy*(this: IGESGraphToolColor; entfrom: Handle[IGESGraphColor];
             entto: Handle[IGESGraphColor]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolColor.hxx".}
proc ownDump*(this: IGESGraphToolColor; ent: Handle[IGESGraphColor];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGraph_ToolColor.hxx".}
