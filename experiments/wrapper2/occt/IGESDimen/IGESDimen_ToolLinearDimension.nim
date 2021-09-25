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
  IGESDimenToolLinearDimension* {.importcpp: "IGESDimen_ToolLinearDimension",
                                 header: "IGESDimen_ToolLinearDimension.hxx",
                                 bycopy.} = object ## ! Returns a ToolLinearDimension, ready to work


proc constructIGESDimenToolLinearDimension*(): IGESDimenToolLinearDimension {.
    constructor, importcpp: "IGESDimen_ToolLinearDimension(@)",
    header: "IGESDimen_ToolLinearDimension.hxx".}
proc readOwnParams*(this: IGESDimenToolLinearDimension;
                   ent: Handle[IGESDimenLinearDimension];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolLinearDimension.hxx".}
proc writeOwnParams*(this: IGESDimenToolLinearDimension;
                    ent: Handle[IGESDimenLinearDimension];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolLinearDimension.hxx".}
proc ownShared*(this: IGESDimenToolLinearDimension;
               ent: Handle[IGESDimenLinearDimension];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolLinearDimension.hxx".}
proc dirChecker*(this: IGESDimenToolLinearDimension;
                ent: Handle[IGESDimenLinearDimension]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolLinearDimension.hxx".}
proc ownCheck*(this: IGESDimenToolLinearDimension;
              ent: Handle[IGESDimenLinearDimension]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDimen_ToolLinearDimension.hxx".}
proc ownCopy*(this: IGESDimenToolLinearDimension;
             entfrom: Handle[IGESDimenLinearDimension];
             entto: Handle[IGESDimenLinearDimension]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolLinearDimension.hxx".}
proc ownDump*(this: IGESDimenToolLinearDimension;
             ent: Handle[IGESDimenLinearDimension]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDimen_ToolLinearDimension.hxx".}
