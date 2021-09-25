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
discard "forward decl of IGESDraw_SegmentedViewsVisible"
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
  IGESDrawToolSegmentedViewsVisible* {.importcpp: "IGESDraw_ToolSegmentedViewsVisible", header: "IGESDraw_ToolSegmentedViewsVisible.hxx",
                                      bycopy.} = object ## ! Returns a ToolSegmentedViewsVisible, ready to work


proc constructIGESDrawToolSegmentedViewsVisible*(): IGESDrawToolSegmentedViewsVisible {.
    constructor, importcpp: "IGESDraw_ToolSegmentedViewsVisible(@)",
    header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc readOwnParams*(this: IGESDrawToolSegmentedViewsVisible;
                   ent: Handle[IGESDrawSegmentedViewsVisible];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc writeOwnParams*(this: IGESDrawToolSegmentedViewsVisible;
                    ent: Handle[IGESDrawSegmentedViewsVisible];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc ownShared*(this: IGESDrawToolSegmentedViewsVisible;
               ent: Handle[IGESDrawSegmentedViewsVisible];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc dirChecker*(this: IGESDrawToolSegmentedViewsVisible;
                ent: Handle[IGESDrawSegmentedViewsVisible]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc ownCheck*(this: IGESDrawToolSegmentedViewsVisible;
              ent: Handle[IGESDrawSegmentedViewsVisible];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc ownCopy*(this: IGESDrawToolSegmentedViewsVisible;
             entfrom: Handle[IGESDrawSegmentedViewsVisible];
             entto: Handle[IGESDrawSegmentedViewsVisible];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
proc ownDump*(this: IGESDrawToolSegmentedViewsVisible;
             ent: Handle[IGESDrawSegmentedViewsVisible];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESDraw_ToolSegmentedViewsVisible.hxx".}
