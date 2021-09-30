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
discard "forward decl of IGESDefs_UnitsData"
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
  IGESDefsToolUnitsData* {.importcpp: "IGESDefs_ToolUnitsData",
                          header: "IGESDefs_ToolUnitsData.hxx", bycopy.} = object ## !
                                                                             ## Returns a
                                                                             ## ToolUnitsData,
                                                                             ## ready to
                                                                             ## work


proc constructIGESDefsToolUnitsData*(): IGESDefsToolUnitsData {.constructor,
    importcpp: "IGESDefs_ToolUnitsData(@)", header: "IGESDefs_ToolUnitsData.hxx".}
proc readOwnParams*(this: IGESDefsToolUnitsData; ent: Handle[IGESDefsUnitsData];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESDefs_ToolUnitsData.hxx".}
proc writeOwnParams*(this: IGESDefsToolUnitsData; ent: Handle[IGESDefsUnitsData];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDefs_ToolUnitsData.hxx".}
proc ownShared*(this: IGESDefsToolUnitsData; ent: Handle[IGESDefsUnitsData];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDefs_ToolUnitsData.hxx".}
proc dirChecker*(this: IGESDefsToolUnitsData; ent: Handle[IGESDefsUnitsData]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDefs_ToolUnitsData.hxx".}
proc ownCheck*(this: IGESDefsToolUnitsData; ent: Handle[IGESDefsUnitsData];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDefs_ToolUnitsData.hxx".}
proc ownCopy*(this: IGESDefsToolUnitsData; entfrom: Handle[IGESDefsUnitsData];
             entto: Handle[IGESDefsUnitsData]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDefs_ToolUnitsData.hxx".}
proc ownDump*(this: IGESDefsToolUnitsData; ent: Handle[IGESDefsUnitsData];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDefs_ToolUnitsData.hxx".}

























