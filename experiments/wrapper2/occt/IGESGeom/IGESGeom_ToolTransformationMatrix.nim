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
discard "forward decl of IGESGeom_TransformationMatrix"
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
  IGESGeom_ToolTransformationMatrix* {.importcpp: "IGESGeom_ToolTransformationMatrix", header: "IGESGeom_ToolTransformationMatrix.hxx",
                                      bycopy.} = object ## ! Returns a ToolTransformationMatrix, ready to work


proc constructIGESGeom_ToolTransformationMatrix*(): IGESGeom_ToolTransformationMatrix {.
    constructor, importcpp: "IGESGeom_ToolTransformationMatrix(@)",
    header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc ReadOwnParams*(this: IGESGeom_ToolTransformationMatrix;
                   ent: handle[IGESGeom_TransformationMatrix];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc WriteOwnParams*(this: IGESGeom_ToolTransformationMatrix;
                    ent: handle[IGESGeom_TransformationMatrix];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc OwnShared*(this: IGESGeom_ToolTransformationMatrix;
               ent: handle[IGESGeom_TransformationMatrix];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc OwnCorrect*(this: IGESGeom_ToolTransformationMatrix;
                ent: handle[IGESGeom_TransformationMatrix]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc DirChecker*(this: IGESGeom_ToolTransformationMatrix;
                ent: handle[IGESGeom_TransformationMatrix]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc OwnCheck*(this: IGESGeom_ToolTransformationMatrix;
              ent: handle[IGESGeom_TransformationMatrix];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc OwnCopy*(this: IGESGeom_ToolTransformationMatrix;
             entfrom: handle[IGESGeom_TransformationMatrix];
             entto: handle[IGESGeom_TransformationMatrix];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolTransformationMatrix.hxx".}
proc OwnDump*(this: IGESGeom_ToolTransformationMatrix;
             ent: handle[IGESGeom_TransformationMatrix];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolTransformationMatrix.hxx".}