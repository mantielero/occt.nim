##  Created on: 1996-09-04
##  Created by: Christian CAILLET
##  Copyright (c) 1996-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type,
  Transfer_ActorOfProcessForTransient

discard "forward decl of Transfer_Binder"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Message_ProgressScope"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of Transfer_ActorOfTransientProcess"
type
  Handle_Transfer_ActorOfTransientProcess* = handle[
      Transfer_ActorOfTransientProcess]

## ! The original class was renamed. Compatibility only

type
  Transfer_ActorOfTransientProcess* {.importcpp: "Transfer_ActorOfTransientProcess", header: "Transfer_ActorOfTransientProcess.hxx",
                                     bycopy.} = object of Transfer_ActorOfProcessForTransient


proc constructTransfer_ActorOfTransientProcess*(): Transfer_ActorOfTransientProcess {.
    constructor, importcpp: "Transfer_ActorOfTransientProcess(@)",
    header: "Transfer_ActorOfTransientProcess.hxx".}
proc Transferring*(this: var Transfer_ActorOfTransientProcess;
                  start: handle[Standard_Transient];
                  TP: handle[Transfer_ProcessForTransient];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transferring",
                      header: "Transfer_ActorOfTransientProcess.hxx".}
proc Transfer*(this: var Transfer_ActorOfTransientProcess;
              start: handle[Standard_Transient];
              TP: handle[Transfer_TransientProcess];
              theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transfer",
                      header: "Transfer_ActorOfTransientProcess.hxx".}
proc TransferTransient*(this: var Transfer_ActorOfTransientProcess;
                       start: handle[Standard_Transient];
                       TP: handle[Transfer_TransientProcess]; theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Standard_Transient] {.importcpp: "TransferTransient",
                         header: "Transfer_ActorOfTransientProcess.hxx".}
type
  Transfer_ActorOfTransientProcessbase_type* = Transfer_ActorOfProcessForTransient

proc get_type_name*(): cstring {.importcpp: "Transfer_ActorOfTransientProcess::get_type_name(@)",
                              header: "Transfer_ActorOfTransientProcess.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ActorOfTransientProcess::get_type_descriptor(@)",
    header: "Transfer_ActorOfTransientProcess.hxx".}
proc DynamicType*(this: Transfer_ActorOfTransientProcess): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfTransientProcess.hxx".}