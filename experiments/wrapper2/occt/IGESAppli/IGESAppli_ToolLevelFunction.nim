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
discard "forward decl of IGESAppli_LevelFunction"
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
  IGESAppliToolLevelFunction* {.importcpp: "IGESAppli_ToolLevelFunction",
                               header: "IGESAppli_ToolLevelFunction.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolLevelFunction,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESAppliToolLevelFunction*(): IGESAppliToolLevelFunction {.
    constructor, importcpp: "IGESAppli_ToolLevelFunction(@)",
    header: "IGESAppli_ToolLevelFunction.hxx".}
proc readOwnParams*(this: IGESAppliToolLevelFunction;
                   ent: Handle[IGESAppliLevelFunction];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolLevelFunction.hxx".}
proc writeOwnParams*(this: IGESAppliToolLevelFunction;
                    ent: Handle[IGESAppliLevelFunction];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolLevelFunction.hxx".}
proc ownShared*(this: IGESAppliToolLevelFunction;
               ent: Handle[IGESAppliLevelFunction];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolLevelFunction.hxx".}
proc ownCorrect*(this: IGESAppliToolLevelFunction;
                ent: Handle[IGESAppliLevelFunction]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESAppli_ToolLevelFunction.hxx".}
proc dirChecker*(this: IGESAppliToolLevelFunction;
                ent: Handle[IGESAppliLevelFunction]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolLevelFunction.hxx".}
proc ownCheck*(this: IGESAppliToolLevelFunction;
              ent: Handle[IGESAppliLevelFunction]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESAppli_ToolLevelFunction.hxx".}
proc ownCopy*(this: IGESAppliToolLevelFunction;
             entfrom: Handle[IGESAppliLevelFunction];
             entto: Handle[IGESAppliLevelFunction]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolLevelFunction.hxx".}
proc ownDump*(this: IGESAppliToolLevelFunction;
             ent: Handle[IGESAppliLevelFunction]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolLevelFunction.hxx".}

























