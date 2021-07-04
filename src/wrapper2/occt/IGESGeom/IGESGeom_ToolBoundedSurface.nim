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
discard "forward decl of IGESGeom_BoundedSurface"
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
  IGESGeom_ToolBoundedSurface* {.importcpp: "IGESGeom_ToolBoundedSurface",
                                header: "IGESGeom_ToolBoundedSurface.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## a
                                                                                        ## ToolBoundedSurface,
                                                                                        ## ready
                                                                                        ## to
                                                                                        ## work


proc constructIGESGeom_ToolBoundedSurface*(): IGESGeom_ToolBoundedSurface {.
    constructor, importcpp: "IGESGeom_ToolBoundedSurface(@)",
    header: "IGESGeom_ToolBoundedSurface.hxx".}
proc ReadOwnParams*(this: IGESGeom_ToolBoundedSurface;
                   ent: handle[IGESGeom_BoundedSurface];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc WriteOwnParams*(this: IGESGeom_ToolBoundedSurface;
                    ent: handle[IGESGeom_BoundedSurface];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc OwnShared*(this: IGESGeom_ToolBoundedSurface;
               ent: handle[IGESGeom_BoundedSurface];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc DirChecker*(this: IGESGeom_ToolBoundedSurface;
                ent: handle[IGESGeom_BoundedSurface]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGeom_ToolBoundedSurface.hxx".}
proc OwnCheck*(this: IGESGeom_ToolBoundedSurface;
              ent: handle[IGESGeom_BoundedSurface]; shares: Interface_ShareTool;
              ach: var handle[Interface_Check]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc OwnCopy*(this: IGESGeom_ToolBoundedSurface;
             entfrom: handle[IGESGeom_BoundedSurface];
             entto: handle[IGESGeom_BoundedSurface]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc OwnDump*(this: IGESGeom_ToolBoundedSurface;
             ent: handle[IGESGeom_BoundedSurface]; dumper: IGESData_IGESDumper;
             S: var Standard_OStream; own: Standard_Integer) {.noSideEffect,
    importcpp: "OwnDump", header: "IGESGeom_ToolBoundedSurface.hxx".}