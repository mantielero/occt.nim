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
discard "forward decl of IGESSolid_SolidOfLinearExtrusion"
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
  IGESSolidToolSolidOfLinearExtrusion* {.importcpp: "IGESSolid_ToolSolidOfLinearExtrusion", header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx",
                                        bycopy.} = object ## ! Returns a
                                                       ## ToolSolidOfLinearExtrusion, ready to work


proc constructIGESSolidToolSolidOfLinearExtrusion*(): IGESSolidToolSolidOfLinearExtrusion {.
    constructor, importcpp: "IGESSolid_ToolSolidOfLinearExtrusion(@)",
    header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc readOwnParams*(this: IGESSolidToolSolidOfLinearExtrusion;
                   ent: Handle[IGESSolidSolidOfLinearExtrusion];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc writeOwnParams*(this: IGESSolidToolSolidOfLinearExtrusion;
                    ent: Handle[IGESSolidSolidOfLinearExtrusion];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams",
    header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc ownShared*(this: IGESSolidToolSolidOfLinearExtrusion;
               ent: Handle[IGESSolidSolidOfLinearExtrusion];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc dirChecker*(this: IGESSolidToolSolidOfLinearExtrusion;
                ent: Handle[IGESSolidSolidOfLinearExtrusion]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc ownCheck*(this: IGESSolidToolSolidOfLinearExtrusion;
              ent: Handle[IGESSolidSolidOfLinearExtrusion];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc ownCopy*(this: IGESSolidToolSolidOfLinearExtrusion;
             entfrom: Handle[IGESSolidSolidOfLinearExtrusion];
             entto: Handle[IGESSolidSolidOfLinearExtrusion];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
proc ownDump*(this: IGESSolidToolSolidOfLinearExtrusion;
             ent: Handle[IGESSolidSolidOfLinearExtrusion];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESSolid_ToolSolidOfLinearExtrusion.hxx".}
