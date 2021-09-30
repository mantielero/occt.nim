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
discard "forward decl of IGESDefs_AttributeDef"
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
  IGESDefsToolAttributeDef* {.importcpp: "IGESDefs_ToolAttributeDef",
                             header: "IGESDefs_ToolAttributeDef.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolAttributeDef,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESDefsToolAttributeDef*(): IGESDefsToolAttributeDef {.constructor,
    importcpp: "IGESDefs_ToolAttributeDef(@)",
    header: "IGESDefs_ToolAttributeDef.hxx".}
proc readOwnParams*(this: IGESDefsToolAttributeDef;
                   ent: Handle[IGESDefsAttributeDef];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDefs_ToolAttributeDef.hxx".}
proc writeOwnParams*(this: IGESDefsToolAttributeDef;
                    ent: Handle[IGESDefsAttributeDef]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDefs_ToolAttributeDef.hxx".}
proc ownShared*(this: IGESDefsToolAttributeDef; ent: Handle[IGESDefsAttributeDef];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDefs_ToolAttributeDef.hxx".}
proc dirChecker*(this: IGESDefsToolAttributeDef; ent: Handle[IGESDefsAttributeDef]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDefs_ToolAttributeDef.hxx".}
proc ownCheck*(this: IGESDefsToolAttributeDef; ent: Handle[IGESDefsAttributeDef];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDefs_ToolAttributeDef.hxx".}
proc ownCopy*(this: IGESDefsToolAttributeDef;
             entfrom: Handle[IGESDefsAttributeDef];
             entto: Handle[IGESDefsAttributeDef]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDefs_ToolAttributeDef.hxx".}
proc ownDump*(this: IGESDefsToolAttributeDef; ent: Handle[IGESDefsAttributeDef];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDefs_ToolAttributeDef.hxx".}

























