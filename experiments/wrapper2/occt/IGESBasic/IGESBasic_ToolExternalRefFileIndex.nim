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
discard "forward decl of IGESBasic_ExternalRefFileIndex"
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
  IGESBasicToolExternalRefFileIndex* {.importcpp: "IGESBasic_ToolExternalRefFileIndex", header: "IGESBasic_ToolExternalRefFileIndex.hxx",
                                      bycopy.} = object ## ! Returns a ToolExternalRefFileIndex, ready to work


proc constructIGESBasicToolExternalRefFileIndex*(): IGESBasicToolExternalRefFileIndex {.
    constructor, importcpp: "IGESBasic_ToolExternalRefFileIndex(@)",
    header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc readOwnParams*(this: IGESBasicToolExternalRefFileIndex;
                   ent: Handle[IGESBasicExternalRefFileIndex];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc writeOwnParams*(this: IGESBasicToolExternalRefFileIndex;
                    ent: Handle[IGESBasicExternalRefFileIndex];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc ownShared*(this: IGESBasicToolExternalRefFileIndex;
               ent: Handle[IGESBasicExternalRefFileIndex];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc dirChecker*(this: IGESBasicToolExternalRefFileIndex;
                ent: Handle[IGESBasicExternalRefFileIndex]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc ownCheck*(this: IGESBasicToolExternalRefFileIndex;
              ent: Handle[IGESBasicExternalRefFileIndex];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc ownCopy*(this: IGESBasicToolExternalRefFileIndex;
             entfrom: Handle[IGESBasicExternalRefFileIndex];
             entto: Handle[IGESBasicExternalRefFileIndex];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
proc ownDump*(this: IGESBasicToolExternalRefFileIndex;
             ent: Handle[IGESBasicExternalRefFileIndex];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESBasic_ToolExternalRefFileIndex.hxx".}
