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
discard "forward decl of IGESSolid_ConicalSurface"
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
  IGESSolidToolConicalSurface* {.importcpp: "IGESSolid_ToolConicalSurface",
                                header: "IGESSolid_ToolConicalSurface.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Returns
                                                                                         ## a
                                                                                         ## ToolConicalSurface,
                                                                                         ## ready
                                                                                         ## to
                                                                                         ## work


proc constructIGESSolidToolConicalSurface*(): IGESSolidToolConicalSurface {.
    constructor, importcpp: "IGESSolid_ToolConicalSurface(@)",
    header: "IGESSolid_ToolConicalSurface.hxx".}
proc readOwnParams*(this: IGESSolidToolConicalSurface;
                   ent: Handle[IGESSolidConicalSurface];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESSolid_ToolConicalSurface.hxx".}
proc writeOwnParams*(this: IGESSolidToolConicalSurface;
                    ent: Handle[IGESSolidConicalSurface];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolConicalSurface.hxx".}
proc ownShared*(this: IGESSolidToolConicalSurface;
               ent: Handle[IGESSolidConicalSurface];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolConicalSurface.hxx".}
proc dirChecker*(this: IGESSolidToolConicalSurface;
                ent: Handle[IGESSolidConicalSurface]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESSolid_ToolConicalSurface.hxx".}
proc ownCheck*(this: IGESSolidToolConicalSurface;
              ent: Handle[IGESSolidConicalSurface]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESSolid_ToolConicalSurface.hxx".}
proc ownCopy*(this: IGESSolidToolConicalSurface;
             entfrom: Handle[IGESSolidConicalSurface];
             entto: Handle[IGESSolidConicalSurface]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolConicalSurface.hxx".}
proc ownDump*(this: IGESSolidToolConicalSurface;
             ent: Handle[IGESSolidConicalSurface]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESSolid_ToolConicalSurface.hxx".}

























