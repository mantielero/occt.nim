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
discard "forward decl of IGESDimen_BasicDimension"
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
  IGESDimenToolBasicDimension* {.importcpp: "IGESDimen_ToolBasicDimension",
                                header: "IGESDimen_ToolBasicDimension.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## ToolBasicDimension,
                                                                                         ## ready
                                                                                         ## to
                                                                                         ## work


proc constructIGESDimenToolBasicDimension*(): IGESDimenToolBasicDimension {.
    constructor, importcpp: "IGESDimen_ToolBasicDimension(@)",
    header: "IGESDimen_ToolBasicDimension.hxx".}
proc readOwnParams*(this: IGESDimenToolBasicDimension;
                   ent: Handle[IGESDimenBasicDimension];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolBasicDimension.hxx".}
proc writeOwnParams*(this: IGESDimenToolBasicDimension;
                    ent: Handle[IGESDimenBasicDimension];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolBasicDimension.hxx".}
proc ownShared*(this: IGESDimenToolBasicDimension;
               ent: Handle[IGESDimenBasicDimension];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolBasicDimension.hxx".}
proc ownCorrect*(this: IGESDimenToolBasicDimension;
                ent: Handle[IGESDimenBasicDimension]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESDimen_ToolBasicDimension.hxx".}
proc dirChecker*(this: IGESDimenToolBasicDimension;
                ent: Handle[IGESDimenBasicDimension]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolBasicDimension.hxx".}
proc ownCheck*(this: IGESDimenToolBasicDimension;
              ent: Handle[IGESDimenBasicDimension]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDimen_ToolBasicDimension.hxx".}
proc ownCopy*(this: IGESDimenToolBasicDimension;
             entfrom: Handle[IGESDimenBasicDimension];
             entto: Handle[IGESDimenBasicDimension]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolBasicDimension.hxx".}
proc ownDump*(this: IGESDimenToolBasicDimension;
             ent: Handle[IGESDimenBasicDimension]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDimen_ToolBasicDimension.hxx".}
