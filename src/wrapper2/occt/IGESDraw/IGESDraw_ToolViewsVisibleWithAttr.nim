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
discard "forward decl of IGESDraw_ViewsVisibleWithAttr"
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
  IGESDrawToolViewsVisibleWithAttr* {.importcpp: "IGESDraw_ToolViewsVisibleWithAttr", header: "IGESDraw_ToolViewsVisibleWithAttr.hxx",
                                     bycopy.} = object ## ! Returns a ToolViewsVisibleWithAttr, ready to work


proc constructIGESDrawToolViewsVisibleWithAttr*(): IGESDrawToolViewsVisibleWithAttr {.
    constructor, importcpp: "IGESDraw_ToolViewsVisibleWithAttr(@)",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc readOwnParams*(this: IGESDrawToolViewsVisibleWithAttr;
                   ent: Handle[IGESDrawViewsVisibleWithAttr];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc writeOwnParams*(this: IGESDrawToolViewsVisibleWithAttr;
                    ent: Handle[IGESDrawViewsVisibleWithAttr];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownShared*(this: IGESDrawToolViewsVisibleWithAttr;
               ent: Handle[IGESDrawViewsVisibleWithAttr];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownImplied*(this: IGESDrawToolViewsVisibleWithAttr;
                ent: Handle[IGESDrawViewsVisibleWithAttr];
                iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnImplied", header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc dirChecker*(this: IGESDrawToolViewsVisibleWithAttr;
                ent: Handle[IGESDrawViewsVisibleWithAttr]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownCheck*(this: IGESDrawToolViewsVisibleWithAttr;
              ent: Handle[IGESDrawViewsVisibleWithAttr];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownCopy*(this: IGESDrawToolViewsVisibleWithAttr;
             entfrom: Handle[IGESDrawViewsVisibleWithAttr];
             entto: Handle[IGESDrawViewsVisibleWithAttr];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownRenew*(this: IGESDrawToolViewsVisibleWithAttr;
              entfrom: Handle[IGESDrawViewsVisibleWithAttr];
              entto: Handle[IGESDrawViewsVisibleWithAttr]; tc: InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnRenew",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownWhenDelete*(this: IGESDrawToolViewsVisibleWithAttr;
                   ent: Handle[IGESDrawViewsVisibleWithAttr]) {.noSideEffect,
    importcpp: "OwnWhenDelete", header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownDump*(this: IGESDrawToolViewsVisibleWithAttr;
             ent: Handle[IGESDrawViewsVisibleWithAttr];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}
proc ownCorrect*(this: IGESDrawToolViewsVisibleWithAttr;
                ent: Handle[IGESDrawViewsVisibleWithAttr]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESDraw_ToolViewsVisibleWithAttr.hxx".}

