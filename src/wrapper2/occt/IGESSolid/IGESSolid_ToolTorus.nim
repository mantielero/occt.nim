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
discard "forward decl of IGESSolid_Torus"
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
  IGESSolid_ToolTorus* {.importcpp: "IGESSolid_ToolTorus",
                        header: "IGESSolid_ToolTorus.hxx", bycopy.} = object ## ! Returns a
                                                                        ## ToolTorus, ready to work


proc constructIGESSolid_ToolTorus*(): IGESSolid_ToolTorus {.constructor,
    importcpp: "IGESSolid_ToolTorus(@)", header: "IGESSolid_ToolTorus.hxx".}
proc ReadOwnParams*(this: IGESSolid_ToolTorus; ent: handle[IGESSolid_Torus];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESSolid_ToolTorus.hxx".}
proc WriteOwnParams*(this: IGESSolid_ToolTorus; ent: handle[IGESSolid_Torus];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolTorus.hxx".}
proc OwnShared*(this: IGESSolid_ToolTorus; ent: handle[IGESSolid_Torus];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolTorus.hxx".}
proc DirChecker*(this: IGESSolid_ToolTorus; ent: handle[IGESSolid_Torus]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolTorus.hxx".}
proc OwnCheck*(this: IGESSolid_ToolTorus; ent: handle[IGESSolid_Torus];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolTorus.hxx".}
proc OwnCopy*(this: IGESSolid_ToolTorus; entfrom: handle[IGESSolid_Torus];
             entto: handle[IGESSolid_Torus]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolTorus.hxx".}
proc OwnDump*(this: IGESSolid_ToolTorus; ent: handle[IGESSolid_Torus];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESSolid_ToolTorus.hxx".}