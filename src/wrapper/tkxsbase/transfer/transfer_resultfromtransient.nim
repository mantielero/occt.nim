##  Created on: 1995-11-16
##  Created by: Christian CAILLET
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Interface_Check"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_ResultFromTransient"
type
  HandleTransferResultFromTransient* = Handle[TransferResultFromTransient]

## ! This class, in conjunction with ResultFromModel, allows to
## ! record the result of a transfer initially stored in a
## ! TransientProcess.
## !
## ! A ResultFromTransient records a couple (Transient,Binder for
## ! the result and checks) plus a list of "sub-results", which
## ! have been recorded in the TrabsientProcess, under scope
## ! attached to the starting transient.

type
  TransferResultFromTransient* {.importcpp: "Transfer_ResultFromTransient",
                                header: "Transfer_ResultFromTransient.hxx", bycopy.} = object of StandardTransient ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## a
                                                                                                            ## ResultFromTransient,
                                                                                                            ## empty


proc newTransferResultFromTransient*(): TransferResultFromTransient {.cdecl,
    constructor, importcpp: "Transfer_ResultFromTransient(@)", header: "Transfer_ResultFromTransient.hxx".}
proc setStart*(this: var TransferResultFromTransient;
              start: Handle[StandardTransient]) {.cdecl, importcpp: "SetStart",
    header: "Transfer_ResultFromTransient.hxx".}
proc setBinder*(this: var TransferResultFromTransient;
               binder: Handle[TransferBinder]) {.cdecl, importcpp: "SetBinder",
    header: "Transfer_ResultFromTransient.hxx".}
proc start*(this: TransferResultFromTransient): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Start", header: "Transfer_ResultFromTransient.hxx".}
proc binder*(this: TransferResultFromTransient): Handle[TransferBinder] {.
    noSideEffect, cdecl, importcpp: "Binder", header: "Transfer_ResultFromTransient.hxx".}
proc hasResult*(this: TransferResultFromTransient): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Transfer_ResultFromTransient.hxx".}
proc check*(this: TransferResultFromTransient): Handle[InterfaceCheck] {.
    noSideEffect, cdecl, importcpp: "Check", header: "Transfer_ResultFromTransient.hxx".}
proc checkStatus*(this: TransferResultFromTransient): InterfaceCheckStatus {.
    noSideEffect, cdecl, importcpp: "CheckStatus", header: "Transfer_ResultFromTransient.hxx".}
proc clearSubs*(this: var TransferResultFromTransient) {.cdecl,
    importcpp: "ClearSubs", header: "Transfer_ResultFromTransient.hxx".}
proc addSubResult*(this: var TransferResultFromTransient;
                  sub: Handle[TransferResultFromTransient]) {.cdecl,
    importcpp: "AddSubResult", header: "Transfer_ResultFromTransient.hxx".}
proc nbSubResults*(this: TransferResultFromTransient): cint {.noSideEffect, cdecl,
    importcpp: "NbSubResults", header: "Transfer_ResultFromTransient.hxx".}
proc subResult*(this: TransferResultFromTransient; num: cint): Handle[
    TransferResultFromTransient] {.noSideEffect, cdecl, importcpp: "SubResult",
                                  header: "Transfer_ResultFromTransient.hxx".}
proc resultFromKey*(this: TransferResultFromTransient;
                   key: Handle[StandardTransient]): Handle[
    TransferResultFromTransient] {.noSideEffect, cdecl, importcpp: "ResultFromKey",
                                  header: "Transfer_ResultFromTransient.hxx".}
proc fillMap*(this: TransferResultFromTransient;
             map: var TColStdIndexedMapOfTransient) {.noSideEffect, cdecl,
    importcpp: "FillMap", header: "Transfer_ResultFromTransient.hxx".}
proc fill*(this: var TransferResultFromTransient;
          tp: Handle[TransferTransientProcess]) {.cdecl, importcpp: "Fill",
    header: "Transfer_ResultFromTransient.hxx".}
proc strip*(this: var TransferResultFromTransient) {.cdecl, importcpp: "Strip",
    header: "Transfer_ResultFromTransient.hxx".}
proc fillBack*(this: TransferResultFromTransient;
              tp: Handle[TransferTransientProcess]) {.noSideEffect, cdecl,
    importcpp: "FillBack", header: "Transfer_ResultFromTransient.hxx".}