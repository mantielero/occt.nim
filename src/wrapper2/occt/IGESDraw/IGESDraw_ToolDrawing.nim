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
discard "forward decl of IGESDraw_Drawing"
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
  IGESDrawToolDrawing* {.importcpp: "IGESDraw_ToolDrawing",
                        header: "IGESDraw_ToolDrawing.hxx", bycopy.} = object ## ! Returns a
                                                                         ## ToolDrawing, ready to work


proc constructIGESDrawToolDrawing*(): IGESDrawToolDrawing {.constructor,
    importcpp: "IGESDraw_ToolDrawing(@)", header: "IGESDraw_ToolDrawing.hxx".}
proc readOwnParams*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESDraw_ToolDrawing.hxx".}
proc writeOwnParams*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolDrawing.hxx".}
proc ownShared*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolDrawing.hxx".}
proc ownCorrect*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESDraw_ToolDrawing.hxx".}
proc dirChecker*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDraw_ToolDrawing.hxx".}
proc ownCheck*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDraw_ToolDrawing.hxx".}
proc ownCopy*(this: IGESDrawToolDrawing; entfrom: Handle[IGESDrawDrawing];
             entto: Handle[IGESDrawDrawing]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolDrawing.hxx".}
proc ownDump*(this: IGESDrawToolDrawing; ent: Handle[IGESDrawDrawing];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDraw_ToolDrawing.hxx".}

