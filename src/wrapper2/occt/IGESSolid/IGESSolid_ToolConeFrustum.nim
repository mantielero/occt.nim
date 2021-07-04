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
discard "forward decl of IGESSolid_ConeFrustum"
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
  IGESSolid_ToolConeFrustum* {.importcpp: "IGESSolid_ToolConeFrustum",
                              header: "IGESSolid_ToolConeFrustum.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## ToolConeFrustum,
                                                                                    ## ready
                                                                                    ## to
                                                                                    ## work


proc constructIGESSolid_ToolConeFrustum*(): IGESSolid_ToolConeFrustum {.
    constructor, importcpp: "IGESSolid_ToolConeFrustum(@)",
    header: "IGESSolid_ToolConeFrustum.hxx".}
proc ReadOwnParams*(this: IGESSolid_ToolConeFrustum;
                   ent: handle[IGESSolid_ConeFrustum];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESSolid_ToolConeFrustum.hxx".}
proc WriteOwnParams*(this: IGESSolid_ToolConeFrustum;
                    ent: handle[IGESSolid_ConeFrustum];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolConeFrustum.hxx".}
proc OwnShared*(this: IGESSolid_ToolConeFrustum;
               ent: handle[IGESSolid_ConeFrustum];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolConeFrustum.hxx".}
proc DirChecker*(this: IGESSolid_ToolConeFrustum;
                ent: handle[IGESSolid_ConeFrustum]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolConeFrustum.hxx".}
proc OwnCheck*(this: IGESSolid_ToolConeFrustum; ent: handle[IGESSolid_ConeFrustum];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolConeFrustum.hxx".}
proc OwnCopy*(this: IGESSolid_ToolConeFrustum;
             entfrom: handle[IGESSolid_ConeFrustum];
             entto: handle[IGESSolid_ConeFrustum]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolConeFrustum.hxx".}
proc OwnDump*(this: IGESSolid_ToolConeFrustum; ent: handle[IGESSolid_ConeFrustum];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESSolid_ToolConeFrustum.hxx".}