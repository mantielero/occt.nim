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
  IGESSolidToolManifoldSolid* {.importcpp: "IGESSolid_ToolManifoldSolid",
                               header: "IGESSolid_ToolManifoldSolid.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolManifoldSolid,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESSolidToolManifoldSolid*(): IGESSolidToolManifoldSolid {.
    constructor, importcpp: "IGESSolid_ToolManifoldSolid(@)",
    header: "IGESSolid_ToolManifoldSolid.hxx".}
proc readOwnParams*(this: IGESSolidToolManifoldSolid;
                   ent: Handle[IGESSolidManifoldSolid];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESSolid_ToolManifoldSolid.hxx".}
proc writeOwnParams*(this: IGESSolidToolManifoldSolid;
                    ent: Handle[IGESSolidManifoldSolid];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc ownShared*(this: IGESSolidToolManifoldSolid;
               ent: Handle[IGESSolidManifoldSolid];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc dirChecker*(this: IGESSolidToolManifoldSolid;
                ent: Handle[IGESSolidManifoldSolid]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESSolid_ToolManifoldSolid.hxx".}
proc ownCheck*(this: IGESSolidToolManifoldSolid;
              ent: Handle[IGESSolidManifoldSolid]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc ownCopy*(this: IGESSolidToolManifoldSolid;
             entfrom: Handle[IGESSolidManifoldSolid];
             entto: Handle[IGESSolidManifoldSolid]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolManifoldSolid.hxx".}
proc ownDump*(this: IGESSolidToolManifoldSolid;
             ent: Handle[IGESSolidManifoldSolid]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESSolid_ToolManifoldSolid.hxx".}
