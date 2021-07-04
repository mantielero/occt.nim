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
discard "forward decl of IGESGeom_BSplineCurve"
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
  IGESGeom_ToolBSplineCurve* {.importcpp: "IGESGeom_ToolBSplineCurve",
                              header: "IGESGeom_ToolBSplineCurve.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## a
                                                                                    ## ToolBSplineCurve,
                                                                                    ## ready
                                                                                    ## to
                                                                                    ## work


proc constructIGESGeom_ToolBSplineCurve*(): IGESGeom_ToolBSplineCurve {.
    constructor, importcpp: "IGESGeom_ToolBSplineCurve(@)",
    header: "IGESGeom_ToolBSplineCurve.hxx".}
proc ReadOwnParams*(this: IGESGeom_ToolBSplineCurve;
                   ent: handle[IGESGeom_BSplineCurve];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc WriteOwnParams*(this: IGESGeom_ToolBSplineCurve;
                    ent: handle[IGESGeom_BSplineCurve];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc OwnShared*(this: IGESGeom_ToolBSplineCurve;
               ent: handle[IGESGeom_BSplineCurve];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc DirChecker*(this: IGESGeom_ToolBSplineCurve;
                ent: handle[IGESGeom_BSplineCurve]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc OwnCheck*(this: IGESGeom_ToolBSplineCurve; ent: handle[IGESGeom_BSplineCurve];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc OwnCopy*(this: IGESGeom_ToolBSplineCurve;
             entfrom: handle[IGESGeom_BSplineCurve];
             entto: handle[IGESGeom_BSplineCurve]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc OwnDump*(this: IGESGeom_ToolBSplineCurve; ent: handle[IGESGeom_BSplineCurve];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESGeom_ToolBSplineCurve.hxx".}