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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Transfer_HSequenceOfBinder,
  ../TColStd/TColStd_HSequenceOfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Type, ../Standard/Standard_Boolean, Transfer_StatusExec

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

type
  Transfer_TransferIterator* {.importcpp: "Transfer_TransferIterator",
                              header: "Transfer_TransferIterator.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## an
                                                                                    ## empty
                                                                                    ## Iterator


proc constructTransfer_TransferIterator*(): Transfer_TransferIterator {.
    constructor, importcpp: "Transfer_TransferIterator(@)",
    header: "Transfer_TransferIterator.hxx".}
proc AddItem*(this: var Transfer_TransferIterator; atr: handle[Transfer_Binder]) {.
    importcpp: "AddItem", header: "Transfer_TransferIterator.hxx".}
proc SelectBinder*(this: var Transfer_TransferIterator;
                  atype: handle[Standard_Type]; keep: Standard_Boolean) {.
    importcpp: "SelectBinder", header: "Transfer_TransferIterator.hxx".}
proc SelectResult*(this: var Transfer_TransferIterator;
                  atype: handle[Standard_Type]; keep: Standard_Boolean) {.
    importcpp: "SelectResult", header: "Transfer_TransferIterator.hxx".}
proc SelectUnique*(this: var Transfer_TransferIterator; keep: Standard_Boolean) {.
    importcpp: "SelectUnique", header: "Transfer_TransferIterator.hxx".}
proc SelectItem*(this: var Transfer_TransferIterator; num: Standard_Integer;
                keep: Standard_Boolean) {.importcpp: "SelectItem",
                                        header: "Transfer_TransferIterator.hxx".}
proc Number*(this: Transfer_TransferIterator): Standard_Integer {.noSideEffect,
    importcpp: "Number", header: "Transfer_TransferIterator.hxx".}
proc Start*(this: var Transfer_TransferIterator) {.importcpp: "Start",
    header: "Transfer_TransferIterator.hxx".}
proc More*(this: var Transfer_TransferIterator): Standard_Boolean {.
    importcpp: "More", header: "Transfer_TransferIterator.hxx".}
proc Next*(this: var Transfer_TransferIterator) {.importcpp: "Next",
    header: "Transfer_TransferIterator.hxx".}
proc Value*(this: Transfer_TransferIterator): handle[Transfer_Binder] {.
    noSideEffect, importcpp: "Value", header: "Transfer_TransferIterator.hxx".}
proc HasResult*(this: Transfer_TransferIterator): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Transfer_TransferIterator.hxx".}
proc HasUniqueResult*(this: Transfer_TransferIterator): Standard_Boolean {.
    noSideEffect, importcpp: "HasUniqueResult",
    header: "Transfer_TransferIterator.hxx".}
proc ResultType*(this: Transfer_TransferIterator): handle[Standard_Type] {.
    noSideEffect, importcpp: "ResultType", header: "Transfer_TransferIterator.hxx".}
proc HasTransientResult*(this: Transfer_TransferIterator): Standard_Boolean {.
    noSideEffect, importcpp: "HasTransientResult",
    header: "Transfer_TransferIterator.hxx".}
proc TransientResult*(this: Transfer_TransferIterator): handle[Standard_Transient] {.
    noSideEffect, importcpp: "TransientResult",
    header: "Transfer_TransferIterator.hxx".}
proc Status*(this: Transfer_TransferIterator): Transfer_StatusExec {.noSideEffect,
    importcpp: "Status", header: "Transfer_TransferIterator.hxx".}
proc HasFails*(this: Transfer_TransferIterator): Standard_Boolean {.noSideEffect,
    importcpp: "HasFails", header: "Transfer_TransferIterator.hxx".}
proc HasWarnings*(this: Transfer_TransferIterator): Standard_Boolean {.noSideEffect,
    importcpp: "HasWarnings", header: "Transfer_TransferIterator.hxx".}
proc Check*(this: Transfer_TransferIterator): handle[Interface_Check] {.
    noSideEffect, importcpp: "Check", header: "Transfer_TransferIterator.hxx".}