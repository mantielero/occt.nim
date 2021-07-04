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
discard "forward decl of IGESDimen_DimensionedGeometry"
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
  IGESDimen_ToolDimensionedGeometry* {.importcpp: "IGESDimen_ToolDimensionedGeometry", header: "IGESDimen_ToolDimensionedGeometry.hxx",
                                      bycopy.} = object ## ! Returns a ToolDimensionedGeometry, ready to work


proc constructIGESDimen_ToolDimensionedGeometry*(): IGESDimen_ToolDimensionedGeometry {.
    constructor, importcpp: "IGESDimen_ToolDimensionedGeometry(@)",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc ReadOwnParams*(this: IGESDimen_ToolDimensionedGeometry;
                   ent: handle[IGESDimen_DimensionedGeometry];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc WriteOwnParams*(this: IGESDimen_ToolDimensionedGeometry;
                    ent: handle[IGESDimen_DimensionedGeometry];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc OwnShared*(this: IGESDimen_ToolDimensionedGeometry;
               ent: handle[IGESDimen_DimensionedGeometry];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc OwnCorrect*(this: IGESDimen_ToolDimensionedGeometry;
                ent: handle[IGESDimen_DimensionedGeometry]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc DirChecker*(this: IGESDimen_ToolDimensionedGeometry;
                ent: handle[IGESDimen_DimensionedGeometry]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc OwnCheck*(this: IGESDimen_ToolDimensionedGeometry;
              ent: handle[IGESDimen_DimensionedGeometry];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc OwnCopy*(this: IGESDimen_ToolDimensionedGeometry;
             entfrom: handle[IGESDimen_DimensionedGeometry];
             entto: handle[IGESDimen_DimensionedGeometry];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolDimensionedGeometry.hxx".}
proc OwnDump*(this: IGESDimen_ToolDimensionedGeometry;
             ent: handle[IGESDimen_DimensionedGeometry];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESDimen_ToolDimensionedGeometry.hxx".}