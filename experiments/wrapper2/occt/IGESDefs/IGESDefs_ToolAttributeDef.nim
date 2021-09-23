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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

discard "forward decl of Standard_DomainError"
discard "forward decl of IGESDefs_AttributeDef"
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
  IGESDefs_ToolAttributeDef* {.importcpp: "IGESDefs_ToolAttributeDef",
                              header: "IGESDefs_ToolAttributeDef.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## ToolAttributeDef,
                                                                                    ## ready
                                                                                    ## to
                                                                                    ## work


proc constructIGESDefs_ToolAttributeDef*(): IGESDefs_ToolAttributeDef {.
    constructor, importcpp: "IGESDefs_ToolAttributeDef(@)",
    header: "IGESDefs_ToolAttributeDef.hxx".}
proc ReadOwnParams*(this: IGESDefs_ToolAttributeDef;
                   ent: handle[IGESDefs_AttributeDef];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDefs_ToolAttributeDef.hxx".}
proc WriteOwnParams*(this: IGESDefs_ToolAttributeDef;
                    ent: handle[IGESDefs_AttributeDef];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDefs_ToolAttributeDef.hxx".}
proc OwnShared*(this: IGESDefs_ToolAttributeDef;
               ent: handle[IGESDefs_AttributeDef];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDefs_ToolAttributeDef.hxx".}
proc DirChecker*(this: IGESDefs_ToolAttributeDef;
                ent: handle[IGESDefs_AttributeDef]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDefs_ToolAttributeDef.hxx".}
proc OwnCheck*(this: IGESDefs_ToolAttributeDef; ent: handle[IGESDefs_AttributeDef];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDefs_ToolAttributeDef.hxx".}
proc OwnCopy*(this: IGESDefs_ToolAttributeDef;
             entfrom: handle[IGESDefs_AttributeDef];
             entto: handle[IGESDefs_AttributeDef]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDefs_ToolAttributeDef.hxx".}
proc OwnDump*(this: IGESDefs_ToolAttributeDef; ent: handle[IGESDefs_AttributeDef];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESDefs_ToolAttributeDef.hxx".}