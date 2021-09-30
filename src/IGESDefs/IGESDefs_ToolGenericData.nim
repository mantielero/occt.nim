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
discard "forward decl of IGESDefs_GenericData"
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
  IGESDefsToolGenericData* {.importcpp: "IGESDefs_ToolGenericData",
                            header: "IGESDefs_ToolGenericData.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ToolGenericData,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## work


proc constructIGESDefsToolGenericData*(): IGESDefsToolGenericData {.constructor,
    importcpp: "IGESDefs_ToolGenericData(@)",
    header: "IGESDefs_ToolGenericData.hxx".}
proc readOwnParams*(this: IGESDefsToolGenericData;
                   ent: Handle[IGESDefsGenericData];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDefs_ToolGenericData.hxx".}
proc writeOwnParams*(this: IGESDefsToolGenericData;
                    ent: Handle[IGESDefsGenericData]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDefs_ToolGenericData.hxx".}
proc ownShared*(this: IGESDefsToolGenericData; ent: Handle[IGESDefsGenericData];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDefs_ToolGenericData.hxx".}
proc dirChecker*(this: IGESDefsToolGenericData; ent: Handle[IGESDefsGenericData]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDefs_ToolGenericData.hxx".}
proc ownCheck*(this: IGESDefsToolGenericData; ent: Handle[IGESDefsGenericData];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDefs_ToolGenericData.hxx".}
proc ownCopy*(this: IGESDefsToolGenericData; entfrom: Handle[IGESDefsGenericData];
             entto: Handle[IGESDefsGenericData]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDefs_ToolGenericData.hxx".}
proc ownDump*(this: IGESDefsToolGenericData; ent: Handle[IGESDefsGenericData];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDefs_ToolGenericData.hxx".}

























