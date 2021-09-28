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
discard "forward decl of IGESDraw_DrawingWithRotation"
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
  IGESDrawToolDrawingWithRotation* {.importcpp: "IGESDraw_ToolDrawingWithRotation", header: "IGESDraw_ToolDrawingWithRotation.hxx",
                                    bycopy.} = object ## ! Returns a ToolDrawingWithRotation, ready to work


proc constructIGESDrawToolDrawingWithRotation*(): IGESDrawToolDrawingWithRotation {.
    constructor, importcpp: "IGESDraw_ToolDrawingWithRotation(@)",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc readOwnParams*(this: IGESDrawToolDrawingWithRotation;
                   ent: Handle[IGESDrawDrawingWithRotation];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc writeOwnParams*(this: IGESDrawToolDrawingWithRotation;
                    ent: Handle[IGESDrawDrawingWithRotation];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc ownShared*(this: IGESDrawToolDrawingWithRotation;
               ent: Handle[IGESDrawDrawingWithRotation];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc ownCorrect*(this: IGESDrawToolDrawingWithRotation;
                ent: Handle[IGESDrawDrawingWithRotation]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc dirChecker*(this: IGESDrawToolDrawingWithRotation;
                ent: Handle[IGESDrawDrawingWithRotation]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc ownCheck*(this: IGESDrawToolDrawingWithRotation;
              ent: Handle[IGESDrawDrawingWithRotation];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc ownCopy*(this: IGESDrawToolDrawingWithRotation;
             entfrom: Handle[IGESDrawDrawingWithRotation];
             entto: Handle[IGESDrawDrawingWithRotation]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc ownDump*(this: IGESDrawToolDrawingWithRotation;
             ent: Handle[IGESDrawDrawingWithRotation]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}

























