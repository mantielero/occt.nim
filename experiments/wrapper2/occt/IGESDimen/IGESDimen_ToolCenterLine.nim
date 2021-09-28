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
discard "forward decl of IGESDimen_CenterLine"
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
  IGESDimenToolCenterLine* {.importcpp: "IGESDimen_ToolCenterLine",
                            header: "IGESDimen_ToolCenterLine.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ToolCenterLine,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## work


proc constructIGESDimenToolCenterLine*(): IGESDimenToolCenterLine {.constructor,
    importcpp: "IGESDimen_ToolCenterLine(@)",
    header: "IGESDimen_ToolCenterLine.hxx".}
proc readOwnParams*(this: IGESDimenToolCenterLine;
                   ent: Handle[IGESDimenCenterLine];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolCenterLine.hxx".}
proc writeOwnParams*(this: IGESDimenToolCenterLine;
                    ent: Handle[IGESDimenCenterLine]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDimen_ToolCenterLine.hxx".}
proc ownShared*(this: IGESDimenToolCenterLine; ent: Handle[IGESDimenCenterLine];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolCenterLine.hxx".}
proc ownCorrect*(this: IGESDimenToolCenterLine; ent: Handle[IGESDimenCenterLine]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDimen_ToolCenterLine.hxx".}
proc dirChecker*(this: IGESDimenToolCenterLine; ent: Handle[IGESDimenCenterLine]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolCenterLine.hxx".}
proc ownCheck*(this: IGESDimenToolCenterLine; ent: Handle[IGESDimenCenterLine];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolCenterLine.hxx".}
proc ownCopy*(this: IGESDimenToolCenterLine; entfrom: Handle[IGESDimenCenterLine];
             entto: Handle[IGESDimenCenterLine]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolCenterLine.hxx".}
proc ownDump*(this: IGESDimenToolCenterLine; ent: Handle[IGESDimenCenterLine];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDimen_ToolCenterLine.hxx".}

























