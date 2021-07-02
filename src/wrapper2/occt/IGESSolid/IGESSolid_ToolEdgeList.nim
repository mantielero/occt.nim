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
discard "forward decl of IGESSolid_EdgeList"
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
  IGESSolidToolEdgeList* {.importcpp: "IGESSolid_ToolEdgeList",
                          header: "IGESSolid_ToolEdgeList.hxx", bycopy.} = object ## !
                                                                             ## Returns a
                                                                             ## ToolEdgeList,
                                                                             ## ready to
                                                                             ## work


proc constructIGESSolidToolEdgeList*(): IGESSolidToolEdgeList {.constructor,
    importcpp: "IGESSolid_ToolEdgeList(@)", header: "IGESSolid_ToolEdgeList.hxx".}
proc readOwnParams*(this: IGESSolidToolEdgeList; ent: Handle[IGESSolidEdgeList];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESSolid_ToolEdgeList.hxx".}
proc writeOwnParams*(this: IGESSolidToolEdgeList; ent: Handle[IGESSolidEdgeList];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolEdgeList.hxx".}
proc ownShared*(this: IGESSolidToolEdgeList; ent: Handle[IGESSolidEdgeList];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolEdgeList.hxx".}
proc dirChecker*(this: IGESSolidToolEdgeList; ent: Handle[IGESSolidEdgeList]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolEdgeList.hxx".}
proc ownCheck*(this: IGESSolidToolEdgeList; ent: Handle[IGESSolidEdgeList];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolEdgeList.hxx".}
proc ownCopy*(this: IGESSolidToolEdgeList; entfrom: Handle[IGESSolidEdgeList];
             entto: Handle[IGESSolidEdgeList]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolEdgeList.hxx".}
proc ownDump*(this: IGESSolidToolEdgeList; ent: Handle[IGESSolidEdgeList];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESSolid_ToolEdgeList.hxx".}

