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
discard "forward decl of IGESGraph_NominalSize"
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
  IGESGraphToolNominalSize* {.importcpp: "IGESGraph_ToolNominalSize",
                             header: "IGESGraph_ToolNominalSize.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolNominalSize,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESGraphToolNominalSize*(): IGESGraphToolNominalSize {.constructor,
    importcpp: "IGESGraph_ToolNominalSize(@)",
    header: "IGESGraph_ToolNominalSize.hxx".}
proc readOwnParams*(this: IGESGraphToolNominalSize;
                   ent: Handle[IGESGraphNominalSize];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolNominalSize.hxx".}
proc writeOwnParams*(this: IGESGraphToolNominalSize;
                    ent: Handle[IGESGraphNominalSize]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGraph_ToolNominalSize.hxx".}
proc ownShared*(this: IGESGraphToolNominalSize; ent: Handle[IGESGraphNominalSize];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolNominalSize.hxx".}
proc ownCorrect*(this: IGESGraphToolNominalSize; ent: Handle[IGESGraphNominalSize]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGraph_ToolNominalSize.hxx".}
proc dirChecker*(this: IGESGraphToolNominalSize; ent: Handle[IGESGraphNominalSize]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGraph_ToolNominalSize.hxx".}
proc ownCheck*(this: IGESGraphToolNominalSize; ent: Handle[IGESGraphNominalSize];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGraph_ToolNominalSize.hxx".}
proc ownCopy*(this: IGESGraphToolNominalSize;
             entfrom: Handle[IGESGraphNominalSize];
             entto: Handle[IGESGraphNominalSize]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolNominalSize.hxx".}
proc ownDump*(this: IGESGraphToolNominalSize; ent: Handle[IGESGraphNominalSize];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGraph_ToolNominalSize.hxx".}

























