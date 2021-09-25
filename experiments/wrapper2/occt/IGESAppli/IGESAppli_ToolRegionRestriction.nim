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
discard "forward decl of IGESAppli_RegionRestriction"
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
  IGESAppliToolRegionRestriction* {.importcpp: "IGESAppli_ToolRegionRestriction", header: "IGESAppli_ToolRegionRestriction.hxx",
                                   bycopy.} = object ## ! Returns a ToolRegionRestriction, ready to work


proc constructIGESAppliToolRegionRestriction*(): IGESAppliToolRegionRestriction {.
    constructor, importcpp: "IGESAppli_ToolRegionRestriction(@)",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc readOwnParams*(this: IGESAppliToolRegionRestriction;
                   ent: Handle[IGESAppliRegionRestriction];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc writeOwnParams*(this: IGESAppliToolRegionRestriction;
                    ent: Handle[IGESAppliRegionRestriction];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc ownShared*(this: IGESAppliToolRegionRestriction;
               ent: Handle[IGESAppliRegionRestriction];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc ownCorrect*(this: IGESAppliToolRegionRestriction;
                ent: Handle[IGESAppliRegionRestriction]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc dirChecker*(this: IGESAppliToolRegionRestriction;
                ent: Handle[IGESAppliRegionRestriction]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc ownCheck*(this: IGESAppliToolRegionRestriction;
              ent: Handle[IGESAppliRegionRestriction]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc ownCopy*(this: IGESAppliToolRegionRestriction;
             entfrom: Handle[IGESAppliRegionRestriction];
             entto: Handle[IGESAppliRegionRestriction]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc ownDump*(this: IGESAppliToolRegionRestriction;
             ent: Handle[IGESAppliRegionRestriction]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
