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
  IGESDraw_ToolDrawingWithRotation* {.importcpp: "IGESDraw_ToolDrawingWithRotation", header: "IGESDraw_ToolDrawingWithRotation.hxx",
                                     bycopy.} = object ## ! Returns a ToolDrawingWithRotation, ready to work


proc constructIGESDraw_ToolDrawingWithRotation*(): IGESDraw_ToolDrawingWithRotation {.
    constructor, importcpp: "IGESDraw_ToolDrawingWithRotation(@)",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc ReadOwnParams*(this: IGESDraw_ToolDrawingWithRotation;
                   ent: handle[IGESDraw_DrawingWithRotation];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc WriteOwnParams*(this: IGESDraw_ToolDrawingWithRotation;
                    ent: handle[IGESDraw_DrawingWithRotation];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc OwnShared*(this: IGESDraw_ToolDrawingWithRotation;
               ent: handle[IGESDraw_DrawingWithRotation];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc OwnCorrect*(this: IGESDraw_ToolDrawingWithRotation;
                ent: handle[IGESDraw_DrawingWithRotation]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc DirChecker*(this: IGESDraw_ToolDrawingWithRotation;
                ent: handle[IGESDraw_DrawingWithRotation]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc OwnCheck*(this: IGESDraw_ToolDrawingWithRotation;
              ent: handle[IGESDraw_DrawingWithRotation];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc OwnCopy*(this: IGESDraw_ToolDrawingWithRotation;
             entfrom: handle[IGESDraw_DrawingWithRotation];
             entto: handle[IGESDraw_DrawingWithRotation];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESDraw_ToolDrawingWithRotation.hxx".}
proc OwnDump*(this: IGESDraw_ToolDrawingWithRotation;
             ent: handle[IGESDraw_DrawingWithRotation];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESDraw_ToolDrawingWithRotation.hxx".}