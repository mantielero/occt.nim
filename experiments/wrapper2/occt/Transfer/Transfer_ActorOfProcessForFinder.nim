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
  ../Standard/Standard_Transient, Transfer_HSequenceOfFinder,
  Transfer_TransferMapOfProcessForFinder, ../Message/Message_ProgressRange

discard "forward decl of Standard_DomainError"
discard "forward decl of Transfer_Finder"
discard "forward decl of Transfer_FindHasher"
discard "forward decl of Transfer_ProcessForFinder"
discard "forward decl of Transfer_IteratorOfProcessForFinder"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_SimpleBinderOfTransient"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_ActorOfProcessForFinder"
discard "forward decl of Transfer_ActorOfProcessForFinder"
type
  Handle_Transfer_ActorOfProcessForFinder* = handle[
      Transfer_ActorOfProcessForFinder]
  Transfer_ActorOfProcessForFinder* {.importcpp: "Transfer_ActorOfProcessForFinder", header: "Transfer_ActorOfProcessForFinder.hxx",
                                     bycopy.} = object of Standard_Transient


proc constructTransfer_ActorOfProcessForFinder*(): Transfer_ActorOfProcessForFinder {.
    constructor, importcpp: "Transfer_ActorOfProcessForFinder(@)",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc Recognize*(this: var Transfer_ActorOfProcessForFinder;
               start: handle[Transfer_Finder]): Standard_Boolean {.
    importcpp: "Recognize", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc Transferring*(this: var Transfer_ActorOfProcessForFinder;
                  start: handle[Transfer_Finder];
                  TP: handle[Transfer_ProcessForFinder];
                  theProgress: Message_ProgressRange = Message_ProgressRange()): handle[
    Transfer_Binder] {.importcpp: "Transferring",
                      header: "Transfer_ActorOfProcessForFinder.hxx".}
proc TransientResult*(this: Transfer_ActorOfProcessForFinder;
                     res: handle[Standard_Transient]): handle[
    Transfer_SimpleBinderOfTransient] {.noSideEffect,
                                       importcpp: "TransientResult", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc NullResult*(this: Transfer_ActorOfProcessForFinder): handle[Transfer_Binder] {.
    noSideEffect, importcpp: "NullResult",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc SetLast*(this: var Transfer_ActorOfProcessForFinder;
             mode: Standard_Boolean = Standard_True) {.importcpp: "SetLast",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc IsLast*(this: Transfer_ActorOfProcessForFinder): Standard_Boolean {.
    noSideEffect, importcpp: "IsLast",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc SetNext*(this: var Transfer_ActorOfProcessForFinder;
             next: handle[Transfer_ActorOfProcessForFinder]) {.
    importcpp: "SetNext", header: "Transfer_ActorOfProcessForFinder.hxx".}
proc Next*(this: Transfer_ActorOfProcessForFinder): handle[
    Transfer_ActorOfProcessForFinder] {.noSideEffect, importcpp: "Next", header: "Transfer_ActorOfProcessForFinder.hxx".}
type
  Transfer_ActorOfProcessForFinderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_ActorOfProcessForFinder::get_type_name(@)",
                              header: "Transfer_ActorOfProcessForFinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ActorOfProcessForFinder::get_type_descriptor(@)",
    header: "Transfer_ActorOfProcessForFinder.hxx".}
proc DynamicType*(this: Transfer_ActorOfProcessForFinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ActorOfProcessForFinder.hxx".}