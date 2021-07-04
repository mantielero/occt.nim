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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

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
  IGESBasic_ToolExternalReferenceFile* {.importcpp: "IGESBasic_ToolExternalReferenceFile", header: "IGESBasic_ToolExternalReferenceFile.hxx",
                                        bycopy.} = object ## ! Returns a
                                                       ## ToolExternalReferenceFile, ready to work


proc constructIGESBasic_ToolExternalReferenceFile*(): IGESBasic_ToolExternalReferenceFile {.
    constructor, importcpp: "IGESBasic_ToolExternalReferenceFile(@)",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc ReadOwnParams*(this: IGESBasic_ToolExternalReferenceFile;
                   ent: handle[IGESBasic_ExternalReferenceFile];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc WriteOwnParams*(this: IGESBasic_ToolExternalReferenceFile;
                    ent: handle[IGESBasic_ExternalReferenceFile];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc OwnShared*(this: IGESBasic_ToolExternalReferenceFile;
               ent: handle[IGESBasic_ExternalReferenceFile];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc DirChecker*(this: IGESBasic_ToolExternalReferenceFile;
                ent: handle[IGESBasic_ExternalReferenceFile]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc OwnCheck*(this: IGESBasic_ToolExternalReferenceFile;
              ent: handle[IGESBasic_ExternalReferenceFile];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc OwnCopy*(this: IGESBasic_ToolExternalReferenceFile;
             entfrom: handle[IGESBasic_ExternalReferenceFile];
             entto: handle[IGESBasic_ExternalReferenceFile];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolExternalReferenceFile.hxx".}
proc OwnDump*(this: IGESBasic_ToolExternalReferenceFile;
             ent: handle[IGESBasic_ExternalReferenceFile];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolExternalReferenceFile.hxx".}