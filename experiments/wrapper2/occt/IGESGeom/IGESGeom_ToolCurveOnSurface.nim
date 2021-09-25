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
discard "forward decl of IGESGeom_CurveOnSurface"
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
  IGESGeomToolCurveOnSurface* {.importcpp: "IGESGeom_ToolCurveOnSurface",
                               header: "IGESGeom_ToolCurveOnSurface.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolCurveOnSurface,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESGeomToolCurveOnSurface*(): IGESGeomToolCurveOnSurface {.
    constructor, importcpp: "IGESGeom_ToolCurveOnSurface(@)",
    header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc readOwnParams*(this: IGESGeomToolCurveOnSurface;
                   ent: Handle[IGESGeomCurveOnSurface];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc writeOwnParams*(this: IGESGeomToolCurveOnSurface;
                    ent: Handle[IGESGeomCurveOnSurface];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc ownShared*(this: IGESGeomToolCurveOnSurface;
               ent: Handle[IGESGeomCurveOnSurface];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc ownCorrect*(this: IGESGeomToolCurveOnSurface;
                ent: Handle[IGESGeomCurveOnSurface]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc dirChecker*(this: IGESGeomToolCurveOnSurface;
                ent: Handle[IGESGeomCurveOnSurface]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc ownCheck*(this: IGESGeomToolCurveOnSurface;
              ent: Handle[IGESGeomCurveOnSurface]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc ownCopy*(this: IGESGeomToolCurveOnSurface;
             entfrom: Handle[IGESGeomCurveOnSurface];
             entto: Handle[IGESGeomCurveOnSurface]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolCurveOnSurface.hxx".}
proc ownDump*(this: IGESGeomToolCurveOnSurface;
             ent: Handle[IGESGeomCurveOnSurface]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: int) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESGeom_ToolCurveOnSurface.hxx".}
