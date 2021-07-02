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
discard "forward decl of IGESDimen_DimensionTolerance"
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
  IGESDimenToolDimensionTolerance* {.importcpp: "IGESDimen_ToolDimensionTolerance", header: "IGESDimen_ToolDimensionTolerance.hxx",
                                    bycopy.} = object ## ! Returns a ToolDimensionTolerance, ready to work


proc constructIGESDimenToolDimensionTolerance*(): IGESDimenToolDimensionTolerance {.
    constructor, importcpp: "IGESDimen_ToolDimensionTolerance(@)",
    header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc readOwnParams*(this: IGESDimenToolDimensionTolerance;
                   ent: Handle[IGESDimenDimensionTolerance];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc writeOwnParams*(this: IGESDimenToolDimensionTolerance;
                    ent: Handle[IGESDimenDimensionTolerance];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc ownShared*(this: IGESDimenToolDimensionTolerance;
               ent: Handle[IGESDimenDimensionTolerance];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc ownCorrect*(this: IGESDimenToolDimensionTolerance;
                ent: Handle[IGESDimenDimensionTolerance]): StandardBoolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc dirChecker*(this: IGESDimenToolDimensionTolerance;
                ent: Handle[IGESDimenDimensionTolerance]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc ownCheck*(this: IGESDimenToolDimensionTolerance;
              ent: Handle[IGESDimenDimensionTolerance];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc ownCopy*(this: IGESDimenToolDimensionTolerance;
             entfrom: Handle[IGESDimenDimensionTolerance];
             entto: Handle[IGESDimenDimensionTolerance]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESDimen_ToolDimensionTolerance.hxx".}
proc ownDump*(this: IGESDimenToolDimensionTolerance;
             ent: Handle[IGESDimenDimensionTolerance]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESDimen_ToolDimensionTolerance.hxx".}

