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
discard "forward decl of IGESAppli_PWBArtworkStackup"
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
  IGESAppliToolPWBArtworkStackup* {.importcpp: "IGESAppli_ToolPWBArtworkStackup", header: "IGESAppli_ToolPWBArtworkStackup.hxx",
                                   bycopy.} = object ## ! Returns a ToolPWBArtworkStackup, ready to work


proc constructIGESAppliToolPWBArtworkStackup*(): IGESAppliToolPWBArtworkStackup {.
    constructor, importcpp: "IGESAppli_ToolPWBArtworkStackup(@)",
    header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc readOwnParams*(this: IGESAppliToolPWBArtworkStackup;
                   ent: Handle[IGESAppliPWBArtworkStackup];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc writeOwnParams*(this: IGESAppliToolPWBArtworkStackup;
                    ent: Handle[IGESAppliPWBArtworkStackup];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc ownShared*(this: IGESAppliToolPWBArtworkStackup;
               ent: Handle[IGESAppliPWBArtworkStackup];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc dirChecker*(this: IGESAppliToolPWBArtworkStackup;
                ent: Handle[IGESAppliPWBArtworkStackup]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc ownCheck*(this: IGESAppliToolPWBArtworkStackup;
              ent: Handle[IGESAppliPWBArtworkStackup]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc ownCopy*(this: IGESAppliToolPWBArtworkStackup;
             entfrom: Handle[IGESAppliPWBArtworkStackup];
             entto: Handle[IGESAppliPWBArtworkStackup]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
proc ownDump*(this: IGESAppliToolPWBArtworkStackup;
             ent: Handle[IGESAppliPWBArtworkStackup]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolPWBArtworkStackup.hxx".}
