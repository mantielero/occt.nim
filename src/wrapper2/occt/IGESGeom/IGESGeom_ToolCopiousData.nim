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
discard "forward decl of IGESGeom_CopiousData"
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
  IGESGeomToolCopiousData* {.importcpp: "IGESGeom_ToolCopiousData",
                            header: "IGESGeom_ToolCopiousData.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## a
                                                                                 ## ToolCopiousData,
                                                                                 ## ready
                                                                                 ## to
                                                                                 ## work


proc constructIGESGeomToolCopiousData*(): IGESGeomToolCopiousData {.constructor,
    importcpp: "IGESGeom_ToolCopiousData(@)",
    header: "IGESGeom_ToolCopiousData.hxx".}
proc readOwnParams*(this: IGESGeomToolCopiousData;
                   ent: Handle[IGESGeomCopiousData];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESGeom_ToolCopiousData.hxx".}
proc writeOwnParams*(this: IGESGeomToolCopiousData;
                    ent: Handle[IGESGeomCopiousData]; iw: var IGESDataIGESWriter) {.
    noSideEffect, importcpp: "WriteOwnParams",
    header: "IGESGeom_ToolCopiousData.hxx".}
proc ownShared*(this: IGESGeomToolCopiousData; ent: Handle[IGESGeomCopiousData];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESGeom_ToolCopiousData.hxx".}
proc dirChecker*(this: IGESGeomToolCopiousData; ent: Handle[IGESGeomCopiousData]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESGeom_ToolCopiousData.hxx".}
proc ownCheck*(this: IGESGeomToolCopiousData; ent: Handle[IGESGeomCopiousData];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESGeom_ToolCopiousData.hxx".}
proc ownCopy*(this: IGESGeomToolCopiousData; entfrom: Handle[IGESGeomCopiousData];
             entto: Handle[IGESGeomCopiousData]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESGeom_ToolCopiousData.hxx".}
proc ownDump*(this: IGESGeomToolCopiousData; ent: Handle[IGESGeomCopiousData];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: StandardInteger) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESGeom_ToolCopiousData.hxx".}

