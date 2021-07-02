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
  IGESGeomToolBSplineCurve* {.importcpp: "IGESGeom_ToolBSplineCurve",
                             header: "IGESGeom_ToolBSplineCurve.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## Returns
                                                                                   ## a
                                                                                   ## ToolBSplineCurve,
                                                                                   ## ready
                                                                                   ## to
                                                                                   ## work


proc constructIGESGeomToolBSplineCurve*(): IGESGeomToolBSplineCurve {.constructor,
    importcpp: "IGESGeom_ToolBSplineCurve(@)",
    header: "IGESGeom_ToolBSplineCurve.hxx".}
proc readOwnParams*(this: IGESGeomToolBSplineCurve;
                   ent: Handle[IGESGeomBSplineCurve];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolBSplineCurve.hxx".}
proc writeOwnParams*(this: IGESGeomToolBSplineCurve;
                    ent: Handle[IGESGeomBSplineCurve]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGeom_ToolBSplineCurve.hxx".}
proc ownShared*(this: IGESGeomToolBSplineCurve; ent: Handle[IGESGeomBSplineCurve];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc dirChecker*(this: IGESGeomToolBSplineCurve; ent: Handle[IGESGeomBSplineCurve]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc ownCheck*(this: IGESGeomToolBSplineCurve; ent: Handle[IGESGeomBSplineCurve];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc ownCopy*(this: IGESGeomToolBSplineCurve;
             entfrom: Handle[IGESGeomBSplineCurve];
             entto: Handle[IGESGeomBSplineCurve]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolBSplineCurve.hxx".}
proc ownDump*(this: IGESGeomToolBSplineCurve; ent: Handle[IGESGeomBSplineCurve];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolBSplineCurve.hxx".}

