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
discard "forward decl of IGESGeom_CircularArc"
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
  IGESGeomToolCircularArc* {.importcpp: "IGESGeom_ToolCircularArc",
                            header: "IGESGeom_ToolCircularArc.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ToolCircularArc,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## work


proc constructIGESGeomToolCircularArc*(): IGESGeomToolCircularArc {.constructor,
    importcpp: "IGESGeom_ToolCircularArc(@)",
    header: "IGESGeom_ToolCircularArc.hxx".}
proc readOwnParams*(this: IGESGeomToolCircularArc;
                   ent: Handle[IGESGeomCircularArc];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolCircularArc.hxx".}
proc writeOwnParams*(this: IGESGeomToolCircularArc;
                    ent: Handle[IGESGeomCircularArc]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGeom_ToolCircularArc.hxx".}
proc ownShared*(this: IGESGeomToolCircularArc; ent: Handle[IGESGeomCircularArc];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolCircularArc.hxx".}
proc dirChecker*(this: IGESGeomToolCircularArc; ent: Handle[IGESGeomCircularArc]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolCircularArc.hxx".}
proc ownCheck*(this: IGESGeomToolCircularArc; ent: Handle[IGESGeomCircularArc];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolCircularArc.hxx".}
proc ownCopy*(this: IGESGeomToolCircularArc; entfrom: Handle[IGESGeomCircularArc];
             entto: Handle[IGESGeomCircularArc]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolCircularArc.hxx".}
proc ownDump*(this: IGESGeomToolCircularArc; ent: Handle[IGESGeomCircularArc];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolCircularArc.hxx".}

