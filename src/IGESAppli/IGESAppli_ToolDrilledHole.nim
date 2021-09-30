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
discard "forward decl of IGESAppli_DrilledHole"
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
  IGESAppliToolDrilledHole* {.importcpp: "IGESAppli_ToolDrilledHole",
                             header: "IGESAppli_ToolDrilledHole.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolDrilledHole,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESAppliToolDrilledHole*(): IGESAppliToolDrilledHole {.constructor,
    importcpp: "IGESAppli_ToolDrilledHole(@)",
    header: "IGESAppli_ToolDrilledHole.hxx".}
proc readOwnParams*(this: IGESAppliToolDrilledHole;
                   ent: Handle[IGESAppliDrilledHole];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolDrilledHole.hxx".}
proc writeOwnParams*(this: IGESAppliToolDrilledHole;
                    ent: Handle[IGESAppliDrilledHole]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESAppli_ToolDrilledHole.hxx".}
proc ownShared*(this: IGESAppliToolDrilledHole; ent: Handle[IGESAppliDrilledHole];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolDrilledHole.hxx".}
proc ownCorrect*(this: IGESAppliToolDrilledHole; ent: Handle[IGESAppliDrilledHole]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESAppli_ToolDrilledHole.hxx".}
proc dirChecker*(this: IGESAppliToolDrilledHole; ent: Handle[IGESAppliDrilledHole]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESAppli_ToolDrilledHole.hxx".}
proc ownCheck*(this: IGESAppliToolDrilledHole; ent: Handle[IGESAppliDrilledHole];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESAppli_ToolDrilledHole.hxx".}
proc ownCopy*(this: IGESAppliToolDrilledHole;
             entfrom: Handle[IGESAppliDrilledHole];
             entto: Handle[IGESAppliDrilledHole]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolDrilledHole.hxx".}
proc ownDump*(this: IGESAppliToolDrilledHole; ent: Handle[IGESAppliDrilledHole];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESAppli_ToolDrilledHole.hxx".}

























