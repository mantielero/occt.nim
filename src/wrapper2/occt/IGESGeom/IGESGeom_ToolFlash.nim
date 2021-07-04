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
  IGESGeom_ToolFlash* {.importcpp: "IGESGeom_ToolFlash",
                       header: "IGESGeom_ToolFlash.hxx", bycopy.} = object ## ! Returns a ToolFlash, ready to work


proc constructIGESGeom_ToolFlash*(): IGESGeom_ToolFlash {.constructor,
    importcpp: "IGESGeom_ToolFlash(@)", header: "IGESGeom_ToolFlash.hxx".}
proc ReadOwnParams*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESGeom_ToolFlash.hxx".}
proc WriteOwnParams*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolFlash.hxx".}
proc OwnShared*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolFlash.hxx".}
proc OwnCorrect*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGeom_ToolFlash.hxx".}
proc DirChecker*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolFlash.hxx".}
proc OwnCheck*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolFlash.hxx".}
proc OwnCopy*(this: IGESGeom_ToolFlash; entfrom: handle[IGESGeom_Flash];
             entto: handle[IGESGeom_Flash]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolFlash.hxx".}
proc OwnDump*(this: IGESGeom_ToolFlash; ent: handle[IGESGeom_Flash];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESGeom_ToolFlash.hxx".}