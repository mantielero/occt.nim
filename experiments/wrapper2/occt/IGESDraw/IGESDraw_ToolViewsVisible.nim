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
discard "forward decl of IGESDraw_ViewsVisible"
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
  IGESDrawToolViewsVisible* {.importcpp: "IGESDraw_ToolViewsVisible",
                             header: "IGESDraw_ToolViewsVisible.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolViewsVisible,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESDrawToolViewsVisible*(): IGESDrawToolViewsVisible {.constructor,
    importcpp: "IGESDraw_ToolViewsVisible(@)",
    header: "IGESDraw_ToolViewsVisible.hxx".}
proc readOwnParams*(this: IGESDrawToolViewsVisible;
                   ent: Handle[IGESDrawViewsVisible];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDraw_ToolViewsVisible.hxx".}
proc writeOwnParams*(this: IGESDrawToolViewsVisible;
                    ent: Handle[IGESDrawViewsVisible]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownShared*(this: IGESDrawToolViewsVisible; ent: Handle[IGESDrawViewsVisible];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownImplied*(this: IGESDrawToolViewsVisible; ent: Handle[IGESDrawViewsVisible];
                iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnImplied", header: "IGESDraw_ToolViewsVisible.hxx".}
proc dirChecker*(this: IGESDrawToolViewsVisible; ent: Handle[IGESDrawViewsVisible]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownCheck*(this: IGESDrawToolViewsVisible; ent: Handle[IGESDrawViewsVisible];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownCopy*(this: IGESDrawToolViewsVisible;
             entfrom: Handle[IGESDrawViewsVisible];
             entto: Handle[IGESDrawViewsVisible]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownRenew*(this: IGESDrawToolViewsVisible;
              entfrom: Handle[IGESDrawViewsVisible];
              entto: Handle[IGESDrawViewsVisible]; tc: InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnRenew", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownWhenDelete*(this: IGESDrawToolViewsVisible;
                   ent: Handle[IGESDrawViewsVisible]) {.noSideEffect,
    importcpp: "OwnWhenDelete", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownDump*(this: IGESDrawToolViewsVisible; ent: Handle[IGESDrawViewsVisible];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDraw_ToolViewsVisible.hxx".}
proc ownCorrect*(this: IGESDrawToolViewsVisible; ent: Handle[IGESDrawViewsVisible]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDraw_ToolViewsVisible.hxx".}

























