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
discard "forward decl of IGESBasic_OrderedGroup"
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
  IGESBasicToolOrderedGroup* {.importcpp: "IGESBasic_ToolOrderedGroup",
                              header: "IGESBasic_ToolOrderedGroup.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## ToolOrderedGroup,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## work


proc constructIGESBasicToolOrderedGroup*(): IGESBasicToolOrderedGroup {.
    constructor, importcpp: "IGESBasic_ToolOrderedGroup(@)",
    header: "IGESBasic_ToolOrderedGroup.hxx".}
proc readOwnParams*(this: IGESBasicToolOrderedGroup;
                   ent: Handle[IGESBasicOrderedGroup];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolOrderedGroup.hxx".}
proc writeOwnParams*(this: IGESBasicToolOrderedGroup;
                    ent: Handle[IGESBasicOrderedGroup]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESBasic_ToolOrderedGroup.hxx".}
proc ownShared*(this: IGESBasicToolOrderedGroup;
               ent: Handle[IGESBasicOrderedGroup];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolOrderedGroup.hxx".}
proc ownCorrect*(this: IGESBasicToolOrderedGroup;
                ent: Handle[IGESBasicOrderedGroup]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESBasic_ToolOrderedGroup.hxx".}
proc dirChecker*(this: IGESBasicToolOrderedGroup;
                ent: Handle[IGESBasicOrderedGroup]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESBasic_ToolOrderedGroup.hxx".}
proc ownCheck*(this: IGESBasicToolOrderedGroup; ent: Handle[IGESBasicOrderedGroup];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESBasic_ToolOrderedGroup.hxx".}
proc ownCopy*(this: IGESBasicToolOrderedGroup;
             entfrom: Handle[IGESBasicOrderedGroup];
             entto: Handle[IGESBasicOrderedGroup]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolOrderedGroup.hxx".}
proc ownDump*(this: IGESBasicToolOrderedGroup; ent: Handle[IGESBasicOrderedGroup];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESBasic_ToolOrderedGroup.hxx".}

