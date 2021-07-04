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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

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
  IGESGraph_ToolDrawingSize* {.importcpp: "IGESGraph_ToolDrawingSize",
                              header: "IGESGraph_ToolDrawingSize.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## ToolDrawingSize,
                                                                                    ## ready
                                                                                    ## to
                                                                                    ## work


proc constructIGESGraph_ToolDrawingSize*(): IGESGraph_ToolDrawingSize {.
    constructor, importcpp: "IGESGraph_ToolDrawingSize(@)",
    header: "IGESGraph_ToolDrawingSize.hxx".}
proc ReadOwnParams*(this: IGESGraph_ToolDrawingSize;
                   ent: handle[IGESGraph_DrawingSize];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESGraph_ToolDrawingSize.hxx".}
proc WriteOwnParams*(this: IGESGraph_ToolDrawingSize;
                    ent: handle[IGESGraph_DrawingSize];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGraph_ToolDrawingSize.hxx".}
proc OwnShared*(this: IGESGraph_ToolDrawingSize;
               ent: handle[IGESGraph_DrawingSize];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGraph_ToolDrawingSize.hxx".}
proc OwnCorrect*(this: IGESGraph_ToolDrawingSize;
                ent: handle[IGESGraph_DrawingSize]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGraph_ToolDrawingSize.hxx".}
proc DirChecker*(this: IGESGraph_ToolDrawingSize;
                ent: handle[IGESGraph_DrawingSize]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGraph_ToolDrawingSize.hxx".}
proc OwnCheck*(this: IGESGraph_ToolDrawingSize; ent: handle[IGESGraph_DrawingSize];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGraph_ToolDrawingSize.hxx".}
proc OwnCopy*(this: IGESGraph_ToolDrawingSize;
             entfrom: handle[IGESGraph_DrawingSize];
             entto: handle[IGESGraph_DrawingSize]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGraph_ToolDrawingSize.hxx".}
proc OwnDump*(this: IGESGraph_ToolDrawingSize; ent: handle[IGESGraph_DrawingSize];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESGraph_ToolDrawingSize.hxx".}