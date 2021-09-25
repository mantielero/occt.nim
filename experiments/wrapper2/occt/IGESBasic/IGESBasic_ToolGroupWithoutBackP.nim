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
discard "forward decl of IGESBasic_GroupWithoutBackP"
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
  IGESBasicToolGroupWithoutBackP* {.importcpp: "IGESBasic_ToolGroupWithoutBackP", header: "IGESBasic_ToolGroupWithoutBackP.hxx",
                                   bycopy.} = object ## ! Returns a ToolGroupWithoutBackP, ready to work


proc constructIGESBasicToolGroupWithoutBackP*(): IGESBasicToolGroupWithoutBackP {.
    constructor, importcpp: "IGESBasic_ToolGroupWithoutBackP(@)",
    header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc readOwnParams*(this: IGESBasicToolGroupWithoutBackP;
                   ent: Handle[IGESBasicGroupWithoutBackP];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc writeOwnParams*(this: IGESBasicToolGroupWithoutBackP;
                    ent: Handle[IGESBasicGroupWithoutBackP];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc ownShared*(this: IGESBasicToolGroupWithoutBackP;
               ent: Handle[IGESBasicGroupWithoutBackP];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc ownCorrect*(this: IGESBasicToolGroupWithoutBackP;
                ent: Handle[IGESBasicGroupWithoutBackP]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc dirChecker*(this: IGESBasicToolGroupWithoutBackP;
                ent: Handle[IGESBasicGroupWithoutBackP]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc ownCheck*(this: IGESBasicToolGroupWithoutBackP;
              ent: Handle[IGESBasicGroupWithoutBackP]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc ownCopy*(this: IGESBasicToolGroupWithoutBackP;
             entfrom: Handle[IGESBasicGroupWithoutBackP];
             entto: Handle[IGESBasicGroupWithoutBackP]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
proc ownDump*(this: IGESBasicToolGroupWithoutBackP;
             ent: Handle[IGESBasicGroupWithoutBackP]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESBasic_ToolGroupWithoutBackP.hxx".}
