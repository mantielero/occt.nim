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
discard "forward decl of IGESGeom_OffsetCurve"
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
  IGESGeomToolOffsetCurve* {.importcpp: "IGESGeom_ToolOffsetCurve",
                            header: "IGESGeom_ToolOffsetCurve.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ToolOffsetCurve,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## work


proc constructIGESGeomToolOffsetCurve*(): IGESGeomToolOffsetCurve {.constructor,
    importcpp: "IGESGeom_ToolOffsetCurve(@)",
    header: "IGESGeom_ToolOffsetCurve.hxx".}
proc readOwnParams*(this: IGESGeomToolOffsetCurve;
                   ent: Handle[IGESGeomOffsetCurve];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolOffsetCurve.hxx".}
proc writeOwnParams*(this: IGESGeomToolOffsetCurve;
                    ent: Handle[IGESGeomOffsetCurve]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGeom_ToolOffsetCurve.hxx".}
proc ownShared*(this: IGESGeomToolOffsetCurve; ent: Handle[IGESGeomOffsetCurve];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolOffsetCurve.hxx".}
proc ownCorrect*(this: IGESGeomToolOffsetCurve; ent: Handle[IGESGeomOffsetCurve]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESGeom_ToolOffsetCurve.hxx".}
proc dirChecker*(this: IGESGeomToolOffsetCurve; ent: Handle[IGESGeomOffsetCurve]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolOffsetCurve.hxx".}
proc ownCheck*(this: IGESGeomToolOffsetCurve; ent: Handle[IGESGeomOffsetCurve];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolOffsetCurve.hxx".}
proc ownCopy*(this: IGESGeomToolOffsetCurve; entfrom: Handle[IGESGeomOffsetCurve];
             entto: Handle[IGESGeomOffsetCurve]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolOffsetCurve.hxx".}
proc ownDump*(this: IGESGeomToolOffsetCurve; ent: Handle[IGESGeomOffsetCurve];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolOffsetCurve.hxx".}

























