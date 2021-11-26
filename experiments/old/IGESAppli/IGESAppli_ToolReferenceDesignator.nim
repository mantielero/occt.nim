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
discard "forward decl of IGESAppli_ReferenceDesignator"
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
  IGESAppliToolReferenceDesignator* {.importcpp: "IGESAppli_ToolReferenceDesignator", header: "IGESAppli_ToolReferenceDesignator.hxx",
                                     bycopy.} = object ## ! Returns a ToolReferenceDesignator, ready to work


proc constructIGESAppliToolReferenceDesignator*(): IGESAppliToolReferenceDesignator {.
    constructor, importcpp: "IGESAppli_ToolReferenceDesignator(@)",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc readOwnParams*(this: IGESAppliToolReferenceDesignator;
                   ent: Handle[IGESAppliReferenceDesignator];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc writeOwnParams*(this: IGESAppliToolReferenceDesignator;
                    ent: Handle[IGESAppliReferenceDesignator];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc ownShared*(this: IGESAppliToolReferenceDesignator;
               ent: Handle[IGESAppliReferenceDesignator];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc ownCorrect*(this: IGESAppliToolReferenceDesignator;
                ent: Handle[IGESAppliReferenceDesignator]): bool {.noSideEffect,
    importcpp: "OwnCorrect", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc dirChecker*(this: IGESAppliToolReferenceDesignator;
                ent: Handle[IGESAppliReferenceDesignator]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc ownCheck*(this: IGESAppliToolReferenceDesignator;
              ent: Handle[IGESAppliReferenceDesignator];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc ownCopy*(this: IGESAppliToolReferenceDesignator;
             entfrom: Handle[IGESAppliReferenceDesignator];
             entto: Handle[IGESAppliReferenceDesignator];
             tc: var InterfaceCopyTool) {.noSideEffect, importcpp: "OwnCopy", header: "IGESAppli_ToolReferenceDesignator.hxx".}
proc ownDump*(this: IGESAppliToolReferenceDesignator;
             ent: Handle[IGESAppliReferenceDesignator];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump",
    header: "IGESAppli_ToolReferenceDesignator.hxx".}

























