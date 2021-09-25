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
discard "forward decl of IGESAppli_PinNumber"
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
  IGESAppliToolPinNumber* {.importcpp: "IGESAppli_ToolPinNumber",
                           header: "IGESAppli_ToolPinNumber.hxx", bycopy.} = object ## !
                                                                               ## Returns a
                                                                               ## ToolPinNumber,
                                                                               ## ready
                                                                               ## to
                                                                               ## work


proc constructIGESAppliToolPinNumber*(): IGESAppliToolPinNumber {.constructor,
    importcpp: "IGESAppli_ToolPinNumber(@)", header: "IGESAppli_ToolPinNumber.hxx".}
proc readOwnParams*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESAppli_ToolPinNumber.hxx".}
proc writeOwnParams*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolPinNumber.hxx".}
proc ownShared*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolPinNumber.hxx".}
proc ownCorrect*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber]): bool {.
    noSideEffect, importcpp: "OwnCorrect", header: "IGESAppli_ToolPinNumber.hxx".}
proc dirChecker*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESAppli_ToolPinNumber.hxx".}
proc ownCheck*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESAppli_ToolPinNumber.hxx".}
proc ownCopy*(this: IGESAppliToolPinNumber; entfrom: Handle[IGESAppliPinNumber];
             entto: Handle[IGESAppliPinNumber]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolPinNumber.hxx".}
proc ownDump*(this: IGESAppliToolPinNumber; ent: Handle[IGESAppliPinNumber];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: int) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESAppli_ToolPinNumber.hxx".}
