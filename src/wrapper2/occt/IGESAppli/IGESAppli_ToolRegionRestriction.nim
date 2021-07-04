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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

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
  IGESAppli_ToolRegionRestriction* {.importcpp: "IGESAppli_ToolRegionRestriction", header: "IGESAppli_ToolRegionRestriction.hxx",
                                    bycopy.} = object ## ! Returns a ToolRegionRestriction, ready to work


proc constructIGESAppli_ToolRegionRestriction*(): IGESAppli_ToolRegionRestriction {.
    constructor, importcpp: "IGESAppli_ToolRegionRestriction(@)",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc ReadOwnParams*(this: IGESAppli_ToolRegionRestriction;
                   ent: handle[IGESAppli_RegionRestriction];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc WriteOwnParams*(this: IGESAppli_ToolRegionRestriction;
                    ent: handle[IGESAppli_RegionRestriction];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc OwnShared*(this: IGESAppli_ToolRegionRestriction;
               ent: handle[IGESAppli_RegionRestriction];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc OwnCorrect*(this: IGESAppli_ToolRegionRestriction;
                ent: handle[IGESAppli_RegionRestriction]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc DirChecker*(this: IGESAppli_ToolRegionRestriction;
                ent: handle[IGESAppli_RegionRestriction]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc OwnCheck*(this: IGESAppli_ToolRegionRestriction;
              ent: handle[IGESAppli_RegionRestriction];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESAppli_ToolRegionRestriction.hxx".}
proc OwnCopy*(this: IGESAppli_ToolRegionRestriction;
             entfrom: handle[IGESAppli_RegionRestriction];
             entto: handle[IGESAppli_RegionRestriction];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolRegionRestriction.hxx".}
proc OwnDump*(this: IGESAppli_ToolRegionRestriction;
             ent: handle[IGESAppli_RegionRestriction];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESAppli_ToolRegionRestriction.hxx".}