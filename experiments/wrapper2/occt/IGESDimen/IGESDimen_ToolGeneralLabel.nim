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
discard "forward decl of IGESDimen_GeneralLabel"
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
  IGESDimenToolGeneralLabel* {.importcpp: "IGESDimen_ToolGeneralLabel",
                              header: "IGESDimen_ToolGeneralLabel.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## ToolGeneralLabel,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## work


proc constructIGESDimenToolGeneralLabel*(): IGESDimenToolGeneralLabel {.
    constructor, importcpp: "IGESDimen_ToolGeneralLabel(@)",
    header: "IGESDimen_ToolGeneralLabel.hxx".}
proc readOwnParams*(this: IGESDimenToolGeneralLabel;
                   ent: Handle[IGESDimenGeneralLabel];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolGeneralLabel.hxx".}
proc writeOwnParams*(this: IGESDimenToolGeneralLabel;
                    ent: Handle[IGESDimenGeneralLabel]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDimen_ToolGeneralLabel.hxx".}
proc ownShared*(this: IGESDimenToolGeneralLabel;
               ent: Handle[IGESDimenGeneralLabel];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolGeneralLabel.hxx".}
proc dirChecker*(this: IGESDimenToolGeneralLabel;
                ent: Handle[IGESDimenGeneralLabel]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolGeneralLabel.hxx".}
proc ownCheck*(this: IGESDimenToolGeneralLabel; ent: Handle[IGESDimenGeneralLabel];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolGeneralLabel.hxx".}
proc ownCopy*(this: IGESDimenToolGeneralLabel;
             entfrom: Handle[IGESDimenGeneralLabel];
             entto: Handle[IGESDimenGeneralLabel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolGeneralLabel.hxx".}
proc ownDump*(this: IGESDimenToolGeneralLabel; ent: Handle[IGESDimenGeneralLabel];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDimen_ToolGeneralLabel.hxx".}
