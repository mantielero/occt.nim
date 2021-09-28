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
discard "forward decl of IGESGeom_Flash"
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
  IGESGeomToolFlash* {.importcpp: "IGESGeom_ToolFlash",
                      header: "IGESGeom_ToolFlash.hxx", bycopy.} = object ## ! Returns a ToolFlash, ready to work


proc constructIGESGeomToolFlash*(): IGESGeomToolFlash {.constructor,
    importcpp: "IGESGeom_ToolFlash(@)", header: "IGESGeom_ToolFlash.hxx".}
proc readOwnParams*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESGeom_ToolFlash.hxx".}
proc writeOwnParams*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolFlash.hxx".}
proc ownShared*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolFlash.hxx".}
proc ownCorrect*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGeom_ToolFlash.hxx".}
proc dirChecker*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolFlash.hxx".}
proc ownCheck*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolFlash.hxx".}
proc ownCopy*(this: IGESGeomToolFlash; entfrom: Handle[IGESGeomFlash];
             entto: Handle[IGESGeomFlash]; tc: var InterfaceCopyTool) {.noSideEffect,
    importcpp: "OwnCopy", header: "IGESGeom_ToolFlash.hxx".}
proc ownDump*(this: IGESGeomToolFlash; ent: Handle[IGESGeomFlash];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolFlash.hxx".}

























