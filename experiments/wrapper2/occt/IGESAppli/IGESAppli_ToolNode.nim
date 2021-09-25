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
discard "forward decl of IGESAppli_Node"
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
  IGESAppliToolNode* {.importcpp: "IGESAppli_ToolNode",
                      header: "IGESAppli_ToolNode.hxx", bycopy.} = object ## ! Returns a ToolNode, ready to work


proc constructIGESAppliToolNode*(): IGESAppliToolNode {.constructor,
    importcpp: "IGESAppli_ToolNode(@)", header: "IGESAppli_ToolNode.hxx".}
proc readOwnParams*(this: IGESAppliToolNode; ent: Handle[IGESAppliNode];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESAppli_ToolNode.hxx".}
proc writeOwnParams*(this: IGESAppliToolNode; ent: Handle[IGESAppliNode];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolNode.hxx".}
proc ownShared*(this: IGESAppliToolNode; ent: Handle[IGESAppliNode];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolNode.hxx".}
proc dirChecker*(this: IGESAppliToolNode; ent: Handle[IGESAppliNode]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESAppli_ToolNode.hxx".}
proc ownCheck*(this: IGESAppliToolNode; ent: Handle[IGESAppliNode];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESAppli_ToolNode.hxx".}
proc ownCopy*(this: IGESAppliToolNode; entfrom: Handle[IGESAppliNode];
             entto: Handle[IGESAppliNode]; tc: var InterfaceCopyTool) {.noSideEffect,
    importcpp: "OwnCopy", header: "IGESAppli_ToolNode.hxx".}
proc ownDump*(this: IGESAppliToolNode; ent: Handle[IGESAppliNode];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESAppli_ToolNode.hxx".}
