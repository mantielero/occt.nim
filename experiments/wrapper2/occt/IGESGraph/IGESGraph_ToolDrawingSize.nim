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
discard "forward decl of IGESGraph_DrawingSize"
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
  IGESGraphToolDrawingSize* {.importcpp: "IGESGraph_ToolDrawingSize",
                             header: "IGESGraph_ToolDrawingSize.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolDrawingSize,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESGraphToolDrawingSize*(): IGESGraphToolDrawingSize {.constructor,
    importcpp: "IGESGraph_ToolDrawingSize(@)",
    header: "IGESGraph_ToolDrawingSize.hxx".}
proc readOwnParams*(this: IGESGraphToolDrawingSize;
                   ent: Handle[IGESGraphDrawingSize];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolDrawingSize.hxx".}
proc writeOwnParams*(this: IGESGraphToolDrawingSize;
                    ent: Handle[IGESGraphDrawingSize]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGraph_ToolDrawingSize.hxx".}
proc ownShared*(this: IGESGraphToolDrawingSize; ent: Handle[IGESGraphDrawingSize];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolDrawingSize.hxx".}
proc ownCorrect*(this: IGESGraphToolDrawingSize; ent: Handle[IGESGraphDrawingSize]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGraph_ToolDrawingSize.hxx".}
proc dirChecker*(this: IGESGraphToolDrawingSize; ent: Handle[IGESGraphDrawingSize]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGraph_ToolDrawingSize.hxx".}
proc ownCheck*(this: IGESGraphToolDrawingSize; ent: Handle[IGESGraphDrawingSize];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGraph_ToolDrawingSize.hxx".}
proc ownCopy*(this: IGESGraphToolDrawingSize;
             entfrom: Handle[IGESGraphDrawingSize];
             entto: Handle[IGESGraphDrawingSize]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolDrawingSize.hxx".}
proc ownDump*(this: IGESGraphToolDrawingSize; ent: Handle[IGESGraphDrawingSize];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGraph_ToolDrawingSize.hxx".}

























