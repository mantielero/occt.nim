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
discard "forward decl of IGESSolid_BooleanTree"
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
  IGESSolidToolBooleanTree* {.importcpp: "IGESSolid_ToolBooleanTree",
                             header: "IGESSolid_ToolBooleanTree.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolBooleanTree,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESSolidToolBooleanTree*(): IGESSolidToolBooleanTree {.constructor,
    importcpp: "IGESSolid_ToolBooleanTree(@)",
    header: "IGESSolid_ToolBooleanTree.hxx".}
proc readOwnParams*(this: IGESSolidToolBooleanTree;
                   ent: Handle[IGESSolidBooleanTree];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESSolid_ToolBooleanTree.hxx".}
proc writeOwnParams*(this: IGESSolidToolBooleanTree;
                    ent: Handle[IGESSolidBooleanTree]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESSolid_ToolBooleanTree.hxx".}
proc ownShared*(this: IGESSolidToolBooleanTree; ent: Handle[IGESSolidBooleanTree];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolBooleanTree.hxx".}
proc dirChecker*(this: IGESSolidToolBooleanTree; ent: Handle[IGESSolidBooleanTree]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolBooleanTree.hxx".}
proc ownCheck*(this: IGESSolidToolBooleanTree; ent: Handle[IGESSolidBooleanTree];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolBooleanTree.hxx".}
proc ownCopy*(this: IGESSolidToolBooleanTree;
             entfrom: Handle[IGESSolidBooleanTree];
             entto: Handle[IGESSolidBooleanTree]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolBooleanTree.hxx".}
proc ownDump*(this: IGESSolidToolBooleanTree; ent: Handle[IGESSolidBooleanTree];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESSolid_ToolBooleanTree.hxx".}
