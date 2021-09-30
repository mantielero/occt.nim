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
discard "forward decl of IGESGeom_OffsetSurface"
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
  IGESGeomToolOffsetSurface* {.importcpp: "IGESGeom_ToolOffsetSurface",
                              header: "IGESGeom_ToolOffsetSurface.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Returns
                                                                                     ## a
                                                                                     ## ToolOffsetSurface,
                                                                                     ## ready
                                                                                     ## to
                                                                                     ## work


proc constructIGESGeomToolOffsetSurface*(): IGESGeomToolOffsetSurface {.
    constructor, importcpp: "IGESGeom_ToolOffsetSurface(@)",
    header: "IGESGeom_ToolOffsetSurface.hxx".}
proc readOwnParams*(this: IGESGeomToolOffsetSurface;
                   ent: Handle[IGESGeomOffsetSurface];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolOffsetSurface.hxx".}
proc writeOwnParams*(this: IGESGeomToolOffsetSurface;
                    ent: Handle[IGESGeomOffsetSurface]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGeom_ToolOffsetSurface.hxx".}
proc ownShared*(this: IGESGeomToolOffsetSurface;
               ent: Handle[IGESGeomOffsetSurface];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolOffsetSurface.hxx".}
proc dirChecker*(this: IGESGeomToolOffsetSurface;
                ent: Handle[IGESGeomOffsetSurface]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolOffsetSurface.hxx".}
proc ownCheck*(this: IGESGeomToolOffsetSurface; ent: Handle[IGESGeomOffsetSurface];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolOffsetSurface.hxx".}
proc ownCopy*(this: IGESGeomToolOffsetSurface;
             entfrom: Handle[IGESGeomOffsetSurface];
             entto: Handle[IGESGeomOffsetSurface]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolOffsetSurface.hxx".}
proc ownDump*(this: IGESGeomToolOffsetSurface; ent: Handle[IGESGeomOffsetSurface];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolOffsetSurface.hxx".}

























