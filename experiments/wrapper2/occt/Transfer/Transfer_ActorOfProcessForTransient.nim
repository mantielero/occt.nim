##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Transient, ../TColStd/TColStd_MapTransientHasher,
  ../TColStd/TColStd_HSequenceOfTransient,
  Transfer_TransferMapOfProcessForTransient, ../Message/Message_ProgressRange

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ProcessForTransient"
discard "forward decl of Transfer_IteratorOfProcessForTransient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_SimpleBinderOfTransient"
discard "forward decl of Transfer_ActorOfProcessForTransient"
discard "forward decl of Transfer_ActorOfProcessForTransient"
type
  Handle_Transfer_ActorOfProcessForTransient* = handle[
      Transfer_ActorOfProcessForTransient]
  Transfer_ActorOfProcessForTransient* {.importcpp: "Transfer_ActorOfProcessForTransient", header: "Transfer_ActorOfProcessForTransient.hxx",
                                        bycopy.} = object of Standard_Transient


proc constructTransfer_ActorOfProcessForTransient*(): Transfer_ActorOfProcessForTransient {.
    constructor, importcpp: "Transfer_ActorOfProcessForTransient(@)",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc Recognize*(this: var Transfer_ActorOfProcessForTransient;
               start: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Recognize", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc Transferring*(this: var Transfer_ActorOfProcessForTransient;
                  start: handle[Standard_Transient];
                  TP: handle[Transfer_ProcessForTransient];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transferring",
                      header: "Transfer_ActorOfProcessForTransient.hxx".}
proc TransientResult*(this: Transfer_ActorOfProcessForTransient;
                     res: handle[Standard_Transient]): handle[
    Transfer_SimpleBinderOfTransient] {.noSideEffect,
                                       importcpp: "TransientResult", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc NullResult*(this: Transfer_ActorOfProcessForTransient): handle[Transfer_Binder] {.
    noSideEffect, importcpp: "NullResult",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc SetLast*(this: var Transfer_ActorOfProcessForTransient;
             mode: Standard_Boolean = Standard_True) {.importcpp: "SetLast",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc IsLast*(this: Transfer_ActorOfProcessForTransient): Standard_Boolean {.
    noSideEffect, importcpp: "IsLast",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc SetNext*(this: var Transfer_ActorOfProcessForTransient;
             next: handle[Transfer_ActorOfProcessForTransient]) {.
    importcpp: "SetNext", header: "Transfer_ActorOfProcessForTransient.hxx".}
proc Next*(this: Transfer_ActorOfProcessForTransient): handle[
    Transfer_ActorOfProcessForTransient] {.noSideEffect, importcpp: "Next",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
type
  Transfer_ActorOfProcessForTransientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_ActorOfProcessForTransient::get_type_name(@)",
                              header: "Transfer_ActorOfProcessForTransient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ActorOfProcessForTransient::get_type_descriptor(@)",
    header: "Transfer_ActorOfProcessForTransient.hxx".}
proc DynamicType*(this: Transfer_ActorOfProcessForTransient): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfProcessForTransient.hxx".}