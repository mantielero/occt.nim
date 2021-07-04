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
discard "forward decl of IGESSolid_ManifoldSolid"
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
  IGESSolid_ToolManifoldSolid* {.importcpp: "IGESSolid_ToolManifoldSolid",
                                header: "IGESSolid_ToolManifoldSolid.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## ToolManifoldSolid,
                                                                                        ## ready
                                                                                        ## to
                                                                                        ## work


proc constructIGESSolid_ToolManifoldSolid*(): IGESSolid_ToolManifoldSolid {.
    constructor, importcpp: "IGESSolid_ToolManifoldSolid(@)",
    header: "IGESSolid_ToolManifoldSolid.hxx".}
proc ReadOwnParams*(this: IGESSolid_ToolManifoldSolid;
                   ent: handle[IGESSolid_ManifoldSolid];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc WriteOwnParams*(this: IGESSolid_ToolManifoldSolid;
                    ent: handle[IGESSolid_ManifoldSolid];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc OwnShared*(this: IGESSolid_ToolManifoldSolid;
               ent: handle[IGESSolid_ManifoldSolid];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc DirChecker*(this: IGESSolid_ToolManifoldSolid;
                ent: handle[IGESSolid_ManifoldSolid]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESSolid_ToolManifoldSolid.hxx".}
proc OwnCheck*(this: IGESSolid_ToolManifoldSolid;
              ent: handle[IGESSolid_ManifoldSolid]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc OwnCopy*(this: IGESSolid_ToolManifoldSolid;
             entfrom: handle[IGESSolid_ManifoldSolid];
             entto: handle[IGESSolid_ManifoldSolid]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc OwnDump*(this: IGESSolid_ToolManifoldSolid;
             ent: handle[IGESSolid_ManifoldSolid]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESSolid_ToolManifoldSolid.hxx".}