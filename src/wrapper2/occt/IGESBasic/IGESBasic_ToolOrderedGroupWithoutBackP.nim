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
discard "forward decl of IGESBasic_OrderedGroupWithoutBackP"
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
  IGESBasicToolOrderedGroupWithoutBackP* {.
      importcpp: "IGESBasic_ToolOrderedGroupWithoutBackP",
      header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx", bycopy.} = object ## ! Returns a
                                                                         ## ToolOrderedGroupWithoutBackP, ready to work


proc constructIGESBasicToolOrderedGroupWithoutBackP*(): IGESBasicToolOrderedGroupWithoutBackP {.
    constructor, importcpp: "IGESBasic_ToolOrderedGroupWithoutBackP(@)",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc readOwnParams*(this: IGESBasicToolOrderedGroupWithoutBackP;
                   ent: Handle[IGESBasicOrderedGroupWithoutBackP];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc writeOwnParams*(this: IGESBasicToolOrderedGroupWithoutBackP;
                    ent: Handle[IGESBasicOrderedGroupWithoutBackP];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc ownShared*(this: IGESBasicToolOrderedGroupWithoutBackP;
               ent: Handle[IGESBasicOrderedGroupWithoutBackP];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc ownCorrect*(this: IGESBasicToolOrderedGroupWithoutBackP;
                ent: Handle[IGESBasicOrderedGroupWithoutBackP]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc dirChecker*(this: IGESBasicToolOrderedGroupWithoutBackP;
                ent: Handle[IGESBasicOrderedGroupWithoutBackP]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc ownCheck*(this: IGESBasicToolOrderedGroupWithoutBackP;
              ent: Handle[IGESBasicOrderedGroupWithoutBackP];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc ownCopy*(this: IGESBasicToolOrderedGroupWithoutBackP;
             entfrom: Handle[IGESBasicOrderedGroupWithoutBackP];
             entto: Handle[IGESBasicOrderedGroupWithoutBackP];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}
proc ownDump*(this: IGESBasicToolOrderedGroupWithoutBackP;
             ent: Handle[IGESBasicOrderedGroupWithoutBackP];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESBasic_ToolOrderedGroupWithoutBackP.hxx".}

