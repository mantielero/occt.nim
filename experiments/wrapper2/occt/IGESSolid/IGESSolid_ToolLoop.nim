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
discard "forward decl of IGESSolid_Loop"
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
  IGESSolidToolLoop* {.importcpp: "IGESSolid_ToolLoop",
                      header: "IGESSolid_ToolLoop.hxx", bycopy.} = object ## ! Returns a ToolLoop, ready to work


proc constructIGESSolidToolLoop*(): IGESSolidToolLoop {.constructor,
    importcpp: "IGESSolid_ToolLoop(@)", header: "IGESSolid_ToolLoop.hxx".}
proc readOwnParams*(this: IGESSolidToolLoop; ent: Handle[IGESSolidLoop];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESSolid_ToolLoop.hxx".}
proc writeOwnParams*(this: IGESSolidToolLoop; ent: Handle[IGESSolidLoop];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolLoop.hxx".}
proc ownShared*(this: IGESSolidToolLoop; ent: Handle[IGESSolidLoop];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolLoop.hxx".}
proc dirChecker*(this: IGESSolidToolLoop; ent: Handle[IGESSolidLoop]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolLoop.hxx".}
proc ownCheck*(this: IGESSolidToolLoop; ent: Handle[IGESSolidLoop];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolLoop.hxx".}
proc ownCopy*(this: IGESSolidToolLoop; entfrom: Handle[IGESSolidLoop];
             entto: Handle[IGESSolidLoop]; tc: var InterfaceCopyTool) {.noSideEffect,
    importcpp: "OwnCopy", header: "IGESSolid_ToolLoop.hxx".}
proc ownDump*(this: IGESSolidToolLoop; ent: Handle[IGESSolidLoop];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESSolid_ToolLoop.hxx".}
