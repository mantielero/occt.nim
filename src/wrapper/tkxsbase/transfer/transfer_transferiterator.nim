import transfer_types

##  Created on: 1992-10-28
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

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Transfer_Binder"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_Check"
when defined(Status):
  discard
## ! Defines an Iterator on the result of a Transfer
## ! Available for Normal Results or not (Erroneous Transfer)
## ! It gives several kinds of Informations, and allows to consider
## ! various criteria (criteria are cumulative)



proc newTransferTransferIterator*(): TransferTransferIterator {.cdecl, constructor,
    importcpp: "Transfer_TransferIterator(@)", header: "Transfer_TransferIterator.hxx".}
proc addItem*(this: var TransferTransferIterator; atr: Handle[TransferBinder]) {.
    cdecl, importcpp: "AddItem", header: "Transfer_TransferIterator.hxx".}
proc selectBinder*(this: var TransferTransferIterator; atype: Handle[StandardType];
                  keep: bool) {.cdecl, importcpp: "SelectBinder", header: "Transfer_TransferIterator.hxx".}
proc selectResult*(this: var TransferTransferIterator; atype: Handle[StandardType];
                  keep: bool) {.cdecl, importcpp: "SelectResult", header: "Transfer_TransferIterator.hxx".}
proc selectUnique*(this: var TransferTransferIterator; keep: bool) {.cdecl,
    importcpp: "SelectUnique", header: "Transfer_TransferIterator.hxx".}
proc selectItem*(this: var TransferTransferIterator; num: cint; keep: bool) {.cdecl,
    importcpp: "SelectItem", header: "Transfer_TransferIterator.hxx".}
proc number*(this: TransferTransferIterator): cint {.noSideEffect, cdecl,
    importcpp: "Number", header: "Transfer_TransferIterator.hxx".}
proc start*(this: var TransferTransferIterator) {.cdecl, importcpp: "Start",
    header: "Transfer_TransferIterator.hxx".}
proc more*(this: var TransferTransferIterator): bool {.cdecl, importcpp: "More",
    header: "Transfer_TransferIterator.hxx".}
proc next*(this: var TransferTransferIterator) {.cdecl, importcpp: "Next",
    header: "Transfer_TransferIterator.hxx".}
proc value*(this: TransferTransferIterator): Handle[TransferBinder] {.noSideEffect,
    cdecl, importcpp: "Value", header: "Transfer_TransferIterator.hxx".}
proc hasResult*(this: TransferTransferIterator): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Transfer_TransferIterator.hxx".}
proc hasUniqueResult*(this: TransferTransferIterator): bool {.noSideEffect, cdecl,
    importcpp: "HasUniqueResult", header: "Transfer_TransferIterator.hxx".}
proc resultType*(this: TransferTransferIterator): Handle[StandardType] {.
    noSideEffect, cdecl, importcpp: "ResultType", header: "Transfer_TransferIterator.hxx".}
proc hasTransientResult*(this: TransferTransferIterator): bool {.noSideEffect, cdecl,
    importcpp: "HasTransientResult", header: "Transfer_TransferIterator.hxx".}
proc transientResult*(this: TransferTransferIterator): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "TransientResult", header: "Transfer_TransferIterator.hxx".}
proc status*(this: TransferTransferIterator): TransferStatusExec {.noSideEffect,
    cdecl, importcpp: "Status", header: "Transfer_TransferIterator.hxx".}
proc hasFails*(this: TransferTransferIterator): bool {.noSideEffect, cdecl,
    importcpp: "HasFails", header: "Transfer_TransferIterator.hxx".}
proc hasWarnings*(this: TransferTransferIterator): bool {.noSideEffect, cdecl,
    importcpp: "HasWarnings", header: "Transfer_TransferIterator.hxx".}
proc check*(this: TransferTransferIterator): Handle[InterfaceCheck] {.noSideEffect,
    cdecl, importcpp: "Check", header: "Transfer_TransferIterator.hxx".}
