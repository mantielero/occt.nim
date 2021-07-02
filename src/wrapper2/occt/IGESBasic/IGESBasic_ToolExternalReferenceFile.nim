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
discard "forward decl of IGESBasic_ExternalReferenceFile"
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
  IGESBasicToolExternalReferenceFile* {.importcpp: "IGESBasic_ToolExternalReferenceFile", header: "IGESBasic_ToolExternalReferenceFile.hxx",
                                       bycopy.} = object ## ! Returns a ToolExternalReferenceFile, ready to work


proc constructIGESBasicToolExternalReferenceFile*(): IGESBasicToolExternalReferenceFile {.
    constructor, importcpp: "IGESBasic_ToolExternalReferenceFile(@)",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc readOwnParams*(this: IGESBasicToolExternalReferenceFile;
                   ent: Handle[IGESBasicExternalReferenceFile];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc writeOwnParams*(this: IGESBasicToolExternalReferenceFile;
                    ent: Handle[IGESBasicExternalReferenceFile];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc ownShared*(this: IGESBasicToolExternalReferenceFile;
               ent: Handle[IGESBasicExternalReferenceFile];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc dirChecker*(this: IGESBasicToolExternalReferenceFile;
                ent: Handle[IGESBasicExternalReferenceFile]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc ownCheck*(this: IGESBasicToolExternalReferenceFile;
              ent: Handle[IGESBasicExternalReferenceFile];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc ownCopy*(this: IGESBasicToolExternalReferenceFile;
             entfrom: Handle[IGESBasicExternalReferenceFile];
             entto: Handle[IGESBasicExternalReferenceFile];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc ownDump*(this: IGESBasicToolExternalReferenceFile;
             ent: Handle[IGESBasicExternalReferenceFile];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}

