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
discard "forward decl of IGESSolid_SolidOfRevolution"
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
  IGESSolidToolSolidOfRevolution* {.importcpp: "IGESSolid_ToolSolidOfRevolution", header: "IGESSolid_ToolSolidOfRevolution.hxx",
                                   bycopy.} = object ## ! Returns a ToolSolidOfRevolution, ready to work


proc constructIGESSolidToolSolidOfRevolution*(): IGESSolidToolSolidOfRevolution {.
    constructor, importcpp: "IGESSolid_ToolSolidOfRevolution(@)",
    header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc readOwnParams*(this: IGESSolidToolSolidOfRevolution;
                   ent: Handle[IGESSolidSolidOfRevolution];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc writeOwnParams*(this: IGESSolidToolSolidOfRevolution;
                    ent: Handle[IGESSolidSolidOfRevolution];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc ownShared*(this: IGESSolidToolSolidOfRevolution;
               ent: Handle[IGESSolidSolidOfRevolution];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc dirChecker*(this: IGESSolidToolSolidOfRevolution;
                ent: Handle[IGESSolidSolidOfRevolution]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc ownCheck*(this: IGESSolidToolSolidOfRevolution;
              ent: Handle[IGESSolidSolidOfRevolution]; shares: InterfaceShareTool;
              ach: var Handle[InterfaceCheck]) {.noSideEffect,
    importcpp: "OwnCheck", header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc ownCopy*(this: IGESSolidToolSolidOfRevolution;
             entfrom: Handle[IGESSolidSolidOfRevolution];
             entto: Handle[IGESSolidSolidOfRevolution]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy",
    header: "IGESSolid_ToolSolidOfRevolution.hxx".}
proc ownDump*(this: IGESSolidToolSolidOfRevolution;
             ent: Handle[IGESSolidSolidOfRevolution]; dumper: IGESDataIGESDumper;
             s: var StandardOStream; own: cint) {.noSideEffect, importcpp: "OwnDump",
    header: "IGESSolid_ToolSolidOfRevolution.hxx".}

























