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
discard "forward decl of IGESBasic_ExternalRefFile"
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
  IGESBasicToolExternalRefFile* {.importcpp: "IGESBasic_ToolExternalRefFile",
                                 header: "IGESBasic_ToolExternalRefFile.hxx",
                                 bycopy.} = object ## ! Returns a ToolExternalRefFile, ready to work


proc constructIGESBasicToolExternalRefFile*(): IGESBasicToolExternalRefFile {.
    constructor, importcpp: "IGESBasic_ToolExternalRefFile(@)",
    header: "IGESBasic_ToolExternalRefFile.hxx".}
proc readOwnParams*(this: IGESBasicToolExternalRefFile;
                   ent: Handle[IGESBasicExternalRefFile];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolExternalRefFile.hxx".}
proc writeOwnParams*(this: IGESBasicToolExternalRefFile;
                    ent: Handle[IGESBasicExternalRefFile];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolExternalRefFile.hxx".}
proc ownShared*(this: IGESBasicToolExternalRefFile;
               ent: Handle[IGESBasicExternalRefFile];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolExternalRefFile.hxx".}
proc dirChecker*(this: IGESBasicToolExternalRefFile;
                ent: Handle[IGESBasicExternalRefFile]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolExternalRefFile.hxx".}
proc ownCheck*(this: IGESBasicToolExternalRefFile;
              ent: Handle[IGESBasicExternalRefFile]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESBasic_ToolExternalRefFile.hxx".}
proc ownCopy*(this: IGESBasicToolExternalRefFile;
             entfrom: Handle[IGESBasicExternalRefFile];
             entto: Handle[IGESBasicExternalRefFile]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolExternalRefFile.hxx".}
proc ownDump*(this: IGESBasicToolExternalRefFile;
             ent: Handle[IGESBasicExternalRefFile]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESBasic_ToolExternalRefFile.hxx".}

























