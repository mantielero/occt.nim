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
discard "forward decl of IGESDimen_DimensionUnits"
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
  IGESDimenToolDimensionUnits* {.importcpp: "IGESDimen_ToolDimensionUnits",
                                header: "IGESDimen_ToolDimensionUnits.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## ToolDimensionUnits,
                                                                                         ## ready
                                                                                         ## to
                                                                                         ## work


proc constructIGESDimenToolDimensionUnits*(): IGESDimenToolDimensionUnits {.
    constructor, importcpp: "IGESDimen_ToolDimensionUnits(@)",
    header: "IGESDimen_ToolDimensionUnits.hxx".}
proc readOwnParams*(this: IGESDimenToolDimensionUnits;
                   ent: Handle[IGESDimenDimensionUnits];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolDimensionUnits.hxx".}
proc writeOwnParams*(this: IGESDimenToolDimensionUnits;
                    ent: Handle[IGESDimenDimensionUnits];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolDimensionUnits.hxx".}
proc ownShared*(this: IGESDimenToolDimensionUnits;
               ent: Handle[IGESDimenDimensionUnits];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolDimensionUnits.hxx".}
proc ownCorrect*(this: IGESDimenToolDimensionUnits;
                ent: Handle[IGESDimenDimensionUnits]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESDimen_ToolDimensionUnits.hxx".}
proc dirChecker*(this: IGESDimenToolDimensionUnits;
                ent: Handle[IGESDimenDimensionUnits]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolDimensionUnits.hxx".}
proc ownCheck*(this: IGESDimenToolDimensionUnits;
              ent: Handle[IGESDimenDimensionUnits]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDimen_ToolDimensionUnits.hxx".}
proc ownCopy*(this: IGESDimenToolDimensionUnits;
             entfrom: Handle[IGESDimenDimensionUnits];
             entto: Handle[IGESDimenDimensionUnits]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolDimensionUnits.hxx".}
proc ownDump*(this: IGESDimenToolDimensionUnits;
             ent: Handle[IGESDimenDimensionUnits]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDimen_ToolDimensionUnits.hxx".}

























