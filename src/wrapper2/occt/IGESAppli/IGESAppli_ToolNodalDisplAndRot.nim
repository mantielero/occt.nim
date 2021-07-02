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
discard "forward decl of IGESAppli_NodalDisplAndRot"
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
  IGESAppliToolNodalDisplAndRot* {.importcpp: "IGESAppli_ToolNodalDisplAndRot",
                                  header: "IGESAppli_ToolNodalDisplAndRot.hxx",
                                  bycopy.} = object ## ! Returns a ToolNodalDisplAndRot, ready to work


proc constructIGESAppliToolNodalDisplAndRot*(): IGESAppliToolNodalDisplAndRot {.
    constructor, importcpp: "IGESAppli_ToolNodalDisplAndRot(@)",
    header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc readOwnParams*(this: IGESAppliToolNodalDisplAndRot;
                   ent: Handle[IGESAppliNodalDisplAndRot];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc writeOwnParams*(this: IGESAppliToolNodalDisplAndRot;
                    ent: Handle[IGESAppliNodalDisplAndRot];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc ownShared*(this: IGESAppliToolNodalDisplAndRot;
               ent: Handle[IGESAppliNodalDisplAndRot];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc dirChecker*(this: IGESAppliToolNodalDisplAndRot;
                ent: Handle[IGESAppliNodalDisplAndRot]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc ownCheck*(this: IGESAppliToolNodalDisplAndRot;
              ent: Handle[IGESAppliNodalDisplAndRot]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc ownCopy*(this: IGESAppliToolNodalDisplAndRot;
             entfrom: Handle[IGESAppliNodalDisplAndRot];
             entto: Handle[IGESAppliNodalDisplAndRot]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESAppli_ToolNodalDisplAndRot.hxx".}
proc ownDump*(this: IGESAppliToolNodalDisplAndRot;
             ent: Handle[IGESAppliNodalDisplAndRot]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESAppli_ToolNodalDisplAndRot.hxx".}

