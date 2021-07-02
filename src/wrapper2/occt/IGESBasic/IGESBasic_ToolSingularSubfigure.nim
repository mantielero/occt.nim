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
discard "forward decl of IGESBasic_SingularSubfigure"
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
  IGESBasicToolSingularSubfigure* {.importcpp: "IGESBasic_ToolSingularSubfigure", header: "IGESBasic_ToolSingularSubfigure.hxx",
                                   bycopy.} = object ## ! Returns a ToolSingularSubfigure, ready to work


proc constructIGESBasicToolSingularSubfigure*(): IGESBasicToolSingularSubfigure {.
    constructor, importcpp: "IGESBasic_ToolSingularSubfigure(@)",
    header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc readOwnParams*(this: IGESBasicToolSingularSubfigure;
                   ent: Handle[IGESBasicSingularSubfigure];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc writeOwnParams*(this: IGESBasicToolSingularSubfigure;
                    ent: Handle[IGESBasicSingularSubfigure];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc ownShared*(this: IGESBasicToolSingularSubfigure;
               ent: Handle[IGESBasicSingularSubfigure];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc dirChecker*(this: IGESBasicToolSingularSubfigure;
                ent: Handle[IGESBasicSingularSubfigure]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc ownCheck*(this: IGESBasicToolSingularSubfigure;
              ent: Handle[IGESBasicSingularSubfigure]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc ownCopy*(this: IGESBasicToolSingularSubfigure;
             entfrom: Handle[IGESBasicSingularSubfigure];
             entto: Handle[IGESBasicSingularSubfigure]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESBasic_ToolSingularSubfigure.hxx".}
proc ownDump*(this: IGESBasicToolSingularSubfigure;
             ent: Handle[IGESBasicSingularSubfigure]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESBasic_ToolSingularSubfigure.hxx".}

