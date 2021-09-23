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
discard "forward decl of IGESAppli_ReferenceDesignator"
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
  IGESAppli_ToolReferenceDesignator* {.importcpp: "IGESAppli_ToolReferenceDesignator", header: "IGESAppli_ToolReferenceDesignator.hxx",
                                      bycopy.} = object ## ! Returns a ToolReferenceDesignator, ready to work


proc constructIGESAppli_ToolReferenceDesignator*(): IGESAppli_ToolReferenceDesignator {.
    constructor, importcpp: "IGESAppli_ToolReferenceDesignator(@)",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc ReadOwnParams*(this: IGESAppli_ToolReferenceDesignator;
                   ent: handle[IGESAppli_ReferenceDesignator];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc WriteOwnParams*(this: IGESAppli_ToolReferenceDesignator;
                    ent: handle[IGESAppli_ReferenceDesignator];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc OwnShared*(this: IGESAppli_ToolReferenceDesignator;
               ent: handle[IGESAppli_ReferenceDesignator];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc OwnCorrect*(this: IGESAppli_ToolReferenceDesignator;
                ent: handle[IGESAppli_ReferenceDesignator]): Standard_Boolean {.
    noSideEffect, importcpp: "OwnCorrect",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc DirChecker*(this: IGESAppli_ToolReferenceDesignator;
                ent: handle[IGESAppli_ReferenceDesignator]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc OwnCheck*(this: IGESAppli_ToolReferenceDesignator;
              ent: handle[IGESAppli_ReferenceDesignator];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc OwnCopy*(this: IGESAppli_ToolReferenceDesignator;
             entfrom: handle[IGESAppli_ReferenceDesignator];
             entto: handle[IGESAppli_ReferenceDesignator];
             TC: var Interface_CopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc OwnDump*(this: IGESAppli_ToolReferenceDesignator;
             ent: handle[IGESAppli_ReferenceDesignator];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump", header: "IGESAppli_ToolReferenceDesignator.hxx".}