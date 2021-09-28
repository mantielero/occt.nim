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
discard "forward decl of IGESGraph_DrawingUnits"
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
  IGESGraphToolDrawingUnits* {.importcpp: "IGESGraph_ToolDrawingUnits",
                              header: "IGESGraph_ToolDrawingUnits.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## ToolDrawingUnits,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## work


proc constructIGESGraphToolDrawingUnits*(): IGESGraphToolDrawingUnits {.
    constructor, importcpp: "IGESGraph_ToolDrawingUnits(@)",
    header: "IGESGraph_ToolDrawingUnits.hxx".}
proc readOwnParams*(this: IGESGraphToolDrawingUnits;
                   ent: Handle[IGESGraphDrawingUnits];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGraph_ToolDrawingUnits.hxx".}
proc writeOwnParams*(this: IGESGraphToolDrawingUnits;
                    ent: Handle[IGESGraphDrawingUnits]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGraph_ToolDrawingUnits.hxx".}
proc ownShared*(this: IGESGraphToolDrawingUnits;
               ent: Handle[IGESGraphDrawingUnits];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolDrawingUnits.hxx".}
proc ownCorrect*(this: IGESGraphToolDrawingUnits;
                ent: Handle[IGESGraphDrawingUnits]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESGraph_ToolDrawingUnits.hxx".}
proc dirChecker*(this: IGESGraphToolDrawingUnits;
                ent: Handle[IGESGraphDrawingUnits]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGraph_ToolDrawingUnits.hxx".}
proc ownCheck*(this: IGESGraphToolDrawingUnits; ent: Handle[IGESGraphDrawingUnits];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGraph_ToolDrawingUnits.hxx".}
proc ownCopy*(this: IGESGraphToolDrawingUnits;
             entfrom: Handle[IGESGraphDrawingUnits];
             entto: Handle[IGESGraphDrawingUnits]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolDrawingUnits.hxx".}
proc ownDump*(this: IGESGraphToolDrawingUnits; ent: Handle[IGESGraphDrawingUnits];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGraph_ToolDrawingUnits.hxx".}

























