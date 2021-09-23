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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

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
  IGESDimen_ToolFlagNote* {.importcpp: "IGESDimen_ToolFlagNote",
                           header: "IGESDimen_ToolFlagNote.hxx", bycopy.} = object ## !
                                                                              ## Returns a
                                                                              ## ToolFlagNote,
                                                                              ## ready to
                                                                              ## work


proc constructIGESDimen_ToolFlagNote*(): IGESDimen_ToolFlagNote {.constructor,
    importcpp: "IGESDimen_ToolFlagNote(@)", header: "IGESDimen_ToolFlagNote.hxx".}
proc ReadOwnParams*(this: IGESDimen_ToolFlagNote; ent: handle[IGESDimen_FlagNote];
                   IR: handle[IGESData_IGESReaderData];
                   PR: var IGESData_ParamReader) {.noSideEffect,
    importcpp: "ReadOwnParams", header: "IGESDimen_ToolFlagNote.hxx".}
proc WriteOwnParams*(this: IGESDimen_ToolFlagNote; ent: handle[IGESDimen_FlagNote];
                    IW: var IGESData_IGESWriter) {.noSideEffect,
    importcpp: "WriteOwnParams", header: "IGESDimen_ToolFlagNote.hxx".}
proc OwnShared*(this: IGESDimen_ToolFlagNote; ent: handle[IGESDimen_FlagNote];
               iter: var Interface_EntityIterator) {.noSideEffect,
    importcpp: "OwnShared", header: "IGESDimen_ToolFlagNote.hxx".}
proc DirChecker*(this: IGESDimen_ToolFlagNote; ent: handle[IGESDimen_FlagNote]): IGESData_DirChecker {.
    noSideEffect, importcpp: "DirChecker", header: "IGESDimen_ToolFlagNote.hxx".}
proc OwnCheck*(this: IGESDimen_ToolFlagNote; ent: handle[IGESDimen_FlagNote];
              shares: Interface_ShareTool; ach: var handle[Interface_Check]) {.
    noSideEffect, importcpp: "OwnCheck", header: "IGESDimen_ToolFlagNote.hxx".}
proc OwnCopy*(this: IGESDimen_ToolFlagNote; entfrom: handle[IGESDimen_FlagNote];
             entto: handle[IGESDimen_FlagNote]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "OwnCopy", header: "IGESDimen_ToolFlagNote.hxx".}
proc OwnDump*(this: IGESDimen_ToolFlagNote; ent: handle[IGESDimen_FlagNote];
             dumper: IGESData_IGESDumper; S: var Standard_OStream;
             own: Standard_Integer) {.noSideEffect, importcpp: "OwnDump",
                                    header: "IGESDimen_ToolFlagNote.hxx".}