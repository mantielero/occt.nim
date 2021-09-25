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
discard "forward decl of IGESBasic_SingleParent"
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
  IGESBasicToolSingleParent* {.importcpp: "IGESBasic_ToolSingleParent",
                              header: "IGESBasic_ToolSingleParent.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## ToolSingleParent,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## work


proc constructIGESBasicToolSingleParent*(): IGESBasicToolSingleParent {.
    constructor, importcpp: "IGESBasic_ToolSingleParent(@)",
    header: "IGESBasic_ToolSingleParent.hxx".}
proc readOwnParams*(this: IGESBasicToolSingleParent;
                   ent: Handle[IGESBasicSingleParent];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolSingleParent.hxx".}
proc writeOwnParams*(this: IGESBasicToolSingleParent;
                    ent: Handle[IGESBasicSingleParent]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESBasic_ToolSingleParent.hxx".}
proc ownShared*(this: IGESBasicToolSingleParent;
               ent: Handle[IGESBasicSingleParent];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolSingleParent.hxx".}
proc ownCorrect*(this: IGESBasicToolSingleParent;
                ent: Handle[IGESBasicSingleParent]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESBasic_ToolSingleParent.hxx".}
proc dirChecker*(this: IGESBasicToolSingleParent;
                ent: Handle[IGESBasicSingleParent]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolSingleParent.hxx".}
proc ownCheck*(this: IGESBasicToolSingleParent; ent: Handle[IGESBasicSingleParent];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESBasic_ToolSingleParent.hxx".}
proc ownCopy*(this: IGESBasicToolSingleParent;
             entfrom: Handle[IGESBasicSingleParent];
             entto: Handle[IGESBasicSingleParent]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolSingleParent.hxx".}
proc ownDump*(this: IGESBasicToolSingleParent; ent: Handle[IGESBasicSingleParent];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolSingleParent.hxx".}
