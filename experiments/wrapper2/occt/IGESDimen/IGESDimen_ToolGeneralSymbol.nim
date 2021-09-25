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
discard "forward decl of IGESDimen_GeneralSymbol"
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
  IGESDimenToolGeneralSymbol* {.importcpp: "IGESDimen_ToolGeneralSymbol",
                               header: "IGESDimen_ToolGeneralSymbol.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolGeneralSymbol,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESDimenToolGeneralSymbol*(): IGESDimenToolGeneralSymbol {.
    constructor, importcpp: "IGESDimen_ToolGeneralSymbol(@)",
    header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc readOwnParams*(this: IGESDimenToolGeneralSymbol;
                   ent: Handle[IGESDimenGeneralSymbol];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc writeOwnParams*(this: IGESDimenToolGeneralSymbol;
                    ent: Handle[IGESDimenGeneralSymbol];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc ownShared*(this: IGESDimenToolGeneralSymbol;
               ent: Handle[IGESDimenGeneralSymbol];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc dirChecker*(this: IGESDimenToolGeneralSymbol;
                ent: Handle[IGESDimenGeneralSymbol]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc ownCheck*(this: IGESDimenToolGeneralSymbol;
              ent: Handle[IGESDimenGeneralSymbol]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc ownCopy*(this: IGESDimenToolGeneralSymbol;
             entfrom: Handle[IGESDimenGeneralSymbol];
             entto: Handle[IGESDimenGeneralSymbol]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolGeneralSymbol.hxx".}
proc ownDump*(this: IGESDimenToolGeneralSymbol;
             ent: Handle[IGESDimenGeneralSymbol]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDimen_ToolGeneralSymbol.hxx".}
