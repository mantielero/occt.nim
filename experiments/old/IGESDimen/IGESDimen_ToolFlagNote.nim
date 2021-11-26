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
discard "forward decl of IGESDimen_FlagNote"
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
  IGESDimenToolFlagNote* {.importcpp: "IGESDimen_ToolFlagNote",
                          header: "IGESDimen_ToolFlagNote.hxx", bycopy.} = object ## !
                                                                             ## Returns a
                                                                             ## ToolFlagNote,
                                                                             ## ready to
                                                                             ## work


proc constructIGESDimenToolFlagNote*(): IGESDimenToolFlagNote {.constructor,
    importcpp: "IGESDimen_ToolFlagNote(@)", header: "IGESDimen_ToolFlagNote.hxx".}
proc readOwnParams*(this: IGESDimenToolFlagNote; ent: Handle[IGESDimenFlagNote];
                   ir: Handle[IGESDataIGESReaderData]; pr: var IGESDataParamReader) {.
    noSideEffect, importcpp: "ReadOwnParams", header: "IGESDimen_ToolFlagNote.hxx".}
proc writeOwnParams*(this: IGESDimenToolFlagNote; ent: Handle[IGESDimenFlagNote];
                    iw: var IGESDataIGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolFlagNote.hxx".}
proc ownShared*(this: IGESDimenToolFlagNote; ent: Handle[IGESDimenFlagNote];
               iter: var InterfaceEntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolFlagNote.hxx".}
proc dirChecker*(this: IGESDimenToolFlagNote; ent: Handle[IGESDimenFlagNote]): IGESDataDirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolFlagNote.hxx".}
proc ownCheck*(this: IGESDimenToolFlagNote; ent: Handle[IGESDimenFlagNote];
              shares: InterfaceShareTool; ach: var Handle[InterfaceCheck]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolFlagNote.hxx".}
proc ownCopy*(this: IGESDimenToolFlagNote; entfrom: Handle[IGESDimenFlagNote];
             entto: Handle[IGESDimenFlagNote]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolFlagNote.hxx".}
proc ownDump*(this: IGESDimenToolFlagNote; ent: Handle[IGESDimenFlagNote];
             dumper: IGESDataIGESDumper; s: var StandardOStream; own: cint) {.
    noSideEffect, importcpp: "OwnDump", header: "IGESDimen_ToolFlagNote.hxx".}

























