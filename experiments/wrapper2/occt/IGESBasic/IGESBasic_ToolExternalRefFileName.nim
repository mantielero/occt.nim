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
discard "forward decl of IGESBasic_ExternalRefFileName"
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
  IGESBasicToolExternalRefFileName* {.importcpp: "IGESBasic_ToolExternalRefFileName", header: "IGESBasic_ToolExternalRefFileName.hxx",
                                     bycopy.} = object ## ! Returns a ToolExternalRefFileName, ready to work


proc constructIGESBasicToolExternalRefFileName*(): IGESBasicToolExternalRefFileName {.
    constructor, importcpp: "IGESBasic_ToolExternalRefFileName(@)",
    header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc readOwnParams*(this: IGESBasicToolExternalRefFileName;
                   ent: Handle[IGESBasicExternalRefFileName];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc writeOwnParams*(this: IGESBasicToolExternalRefFileName;
                    ent: Handle[IGESBasicExternalRefFileName];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc ownShared*(this: IGESBasicToolExternalRefFileName;
               ent: Handle[IGESBasicExternalRefFileName];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc dirChecker*(this: IGESBasicToolExternalRefFileName;
                ent: Handle[IGESBasicExternalRefFileName]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc ownCheck*(this: IGESBasicToolExternalRefFileName;
              ent: Handle[IGESBasicExternalRefFileName];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc ownCopy*(this: IGESBasicToolExternalRefFileName;
             entfrom: Handle[IGESBasicExternalRefFileName];
             entto: Handle[IGESBasicExternalRefFileName];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolExternalRefFileName.hxx".}
proc ownDump*(this: IGESBasicToolExternalRefFileName;
             ent: Handle[IGESBasicExternalRefFileName];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESBasic_ToolExternalRefFileName.hxx".}

























