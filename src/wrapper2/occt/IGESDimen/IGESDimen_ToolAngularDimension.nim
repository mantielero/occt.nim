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
discard "forward decl of IGESDimen_AngularDimension"
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
  IGESDimenToolAngularDimension* {.importcpp: "IGESDimen_ToolAngularDimension",
                                  header: "IGESDimen_ToolAngularDimension.hxx",
                                  bycopy.} = object ## ! Returns a ToolAngularDimension, ready to work


proc constructIGESDimenToolAngularDimension*(): IGESDimenToolAngularDimension {.
    constructor, importcpp: "IGESDimen_ToolAngularDimension(@)",
    header: "IGESDimen_ToolAngularDimension.hxx".}
proc readOwnParams*(this: IGESDimenToolAngularDimension;
                   ent: Handle[IGESDimenAngularDimension];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDimen_ToolAngularDimension.hxx".}
proc writeOwnParams*(this: IGESDimenToolAngularDimension;
                    ent: Handle[IGESDimenAngularDimension];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolAngularDimension.hxx".}
proc ownShared*(this: IGESDimenToolAngularDimension;
               ent: Handle[IGESDimenAngularDimension];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolAngularDimension.hxx".}
proc dirChecker*(this: IGESDimenToolAngularDimension;
                ent: Handle[IGESDimenAngularDimension]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolAngularDimension.hxx".}
proc ownCheck*(this: IGESDimenToolAngularDimension;
              ent: Handle[IGESDimenAngularDimension]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESDimen_ToolAngularDimension.hxx".}
proc ownCopy*(this: IGESDimenToolAngularDimension;
             entfrom: Handle[IGESDimenAngularDimension];
             entto: Handle[IGESDimenAngularDimension]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESDimen_ToolAngularDimension.hxx".}
proc ownDump*(this: IGESDimenToolAngularDimension;
             ent: Handle[IGESDimenAngularDimension]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: StandardInteger) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESDimen_ToolAngularDimension.hxx".}

