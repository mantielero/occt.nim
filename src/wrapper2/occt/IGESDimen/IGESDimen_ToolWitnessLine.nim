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
discard "forward decl of IGESDimen_WitnessLine"
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
  IGESDimenToolWitnessLine* {.importcpp: "IGESDimen_ToolWitnessLine",
                             header: "IGESDimen_ToolWitnessLine.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolWitnessLine,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESDimenToolWitnessLine*(): IGESDimenToolWitnessLine {.constructor,
    importcpp: "IGESDimen_ToolWitnessLine(@)",
    header: "IGESDimen_ToolWitnessLine.hxx".}
proc readOwnParams*(this: IGESDimenToolWitnessLine;
                   ent: Handle[IGESDimenWitnessLine];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolWitnessLine.hxx".}
proc writeOwnParams*(this: IGESDimenToolWitnessLine;
                    ent: Handle[IGESDimenWitnessLine]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDimen_ToolWitnessLine.hxx".}
proc ownShared*(this: IGESDimenToolWitnessLine; ent: Handle[IGESDimenWitnessLine];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolWitnessLine.hxx".}
proc ownCorrect*(this: IGESDimenToolWitnessLine; ent: Handle[IGESDimenWitnessLine]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDimen_ToolWitnessLine.hxx".}
proc dirChecker*(this: IGESDimenToolWitnessLine; ent: Handle[IGESDimenWitnessLine]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolWitnessLine.hxx".}
proc ownCheck*(this: IGESDimenToolWitnessLine; ent: Handle[IGESDimenWitnessLine];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolWitnessLine.hxx".}
proc ownCopy*(this: IGESDimenToolWitnessLine;
             entfrom: Handle[IGESDimenWitnessLine];
             entto: Handle[IGESDimenWitnessLine]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolWitnessLine.hxx".}
proc ownDump*(this: IGESDimenToolWitnessLine; ent: Handle[IGESDimenWitnessLine];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDimen_ToolWitnessLine.hxx".}

