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
discard "forward decl of IGESSolid_Sphere"
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
  IGESSolidToolSphere* {.importcpp: "IGESSolid_ToolSphere",
                        header: "IGESSolid_ToolSphere.hxx", bycopy.} = object ## ! Returns a
                                                                         ## ToolSphere, ready to work


proc constructIGESSolidToolSphere*(): IGESSolidToolSphere {.constructor,
    importcpp: "IGESSolid_ToolSphere(@)", header: "IGESSolid_ToolSphere.hxx".}
proc readOwnParams*(this: IGESSolidToolSphere; ent: Handle[IGESSolidSphere];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESSolid_ToolSphere.hxx".}
proc writeOwnParams*(this: IGESSolidToolSphere; ent: Handle[IGESSolidSphere];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESSolid_ToolSphere.hxx".}
proc ownShared*(this: IGESSolidToolSphere; ent: Handle[IGESSolidSphere];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESSolid_ToolSphere.hxx".}
proc dirChecker*(this: IGESSolidToolSphere; ent: Handle[IGESSolidSphere]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESSolid_ToolSphere.hxx".}
proc ownCheck*(this: IGESSolidToolSphere; ent: Handle[IGESSolidSphere];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESSolid_ToolSphere.hxx".}
proc ownCopy*(this: IGESSolidToolSphere; entfrom: Handle[IGESSolidSphere];
             entto: Handle[IGESSolidSphere]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESSolid_ToolSphere.hxx".}
proc ownDump*(this: IGESSolidToolSphere; ent: Handle[IGESSolidSphere];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESSolid_ToolSphere.hxx".}

























