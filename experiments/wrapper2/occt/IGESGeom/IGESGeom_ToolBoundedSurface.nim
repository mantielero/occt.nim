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
  IGESGeomToolBoundedSurface* {.importcpp: "IGESGeom_ToolBoundedSurface",
                               header: "IGESGeom_ToolBoundedSurface.hxx", bycopy.} = object ##
                                                                                       ## !
                                                                                       ## Returns
                                                                                       ## a
                                                                                       ## ToolBoundedSurface,
                                                                                       ## ready
                                                                                       ## to
                                                                                       ## work


proc constructIGESGeomToolBoundedSurface*(): IGESGeomToolBoundedSurface {.
    constructor, importcpp: "IGESGeom_ToolBoundedSurface(@)",
    header: "IGESGeom_ToolBoundedSurface.hxx".}
proc readOwnParams*(this: IGESGeomToolBoundedSurface;
                   ent: Handle[IGESGeomBoundedSurface];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolBoundedSurface.hxx".}
proc writeOwnParams*(this: IGESGeomToolBoundedSurface;
                    ent: Handle[IGESGeomBoundedSurface];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc ownShared*(this: IGESGeomToolBoundedSurface;
               ent: Handle[IGESGeomBoundedSurface];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc dirChecker*(this: IGESGeomToolBoundedSurface;
                ent: Handle[IGESGeomBoundedSurface]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESGeom_ToolBoundedSurface.hxx".}
proc ownCheck*(this: IGESGeomToolBoundedSurface;
              ent: Handle[IGESGeomBoundedSurface]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc ownCopy*(this: IGESGeomToolBoundedSurface;
             entfrom: Handle[IGESGeomBoundedSurface];
             entto: Handle[IGESGeomBoundedSurface]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolBoundedSurface.hxx".}
proc ownDump*(this: IGESGeomToolBoundedSurface;
             ent: Handle[IGESGeomBoundedSurface]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESGeom_ToolBoundedSurface.hxx".}

























