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
discard "forward decl of IGESDefs_AttributeTable"
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
  IGESDefsToolAttributeTable* {.importcpp: "IGESDefs_ToolAttributeTable",
                               header: "IGESDefs_ToolAttributeTable.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolAttributeTable,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESDefsToolAttributeTable*(): IGESDefsToolAttributeTable {.
    constructor, importcpp: "IGESDefs_ToolAttributeTable(@)",
    header: "IGESDefs_ToolAttributeTable.hxx".}
proc readOwnParams*(this: IGESDefsToolAttributeTable;
                   ent: Handle[IGESDefsAttributeTable];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDefs_ToolAttributeTable.hxx".}
proc writeOwnParams*(this: IGESDefsToolAttributeTable;
                    ent: Handle[IGESDefsAttributeTable];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDefs_ToolAttributeTable.hxx".}
proc ownShared*(this: IGESDefsToolAttributeTable;
               ent: Handle[IGESDefsAttributeTable];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDefs_ToolAttributeTable.hxx".}
proc dirChecker*(this: IGESDefsToolAttributeTable;
                ent: Handle[IGESDefsAttributeTable]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDefs_ToolAttributeTable.hxx".}
proc ownCheck*(this: IGESDefsToolAttributeTable;
              ent: Handle[IGESDefsAttributeTable]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDefs_ToolAttributeTable.hxx".}
proc ownCopy*(this: IGESDefsToolAttributeTable;
             entfrom: Handle[IGESDefsAttributeTable];
             entto: Handle[IGESDefsAttributeTable]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDefs_ToolAttributeTable.hxx".}
proc ownDump*(this: IGESDefsToolAttributeTable;
             ent: Handle[IGESDefsAttributeTable]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDefs_ToolAttributeTable.hxx".}

























