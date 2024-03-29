import ../standard/standard_types
import transfer_types
import ../tcolstd/tcolstd_types

import "../interface/interface_types"
#import ../message/[message_types, message_progressrange]



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





proc newTransferResultFromModel*(): TransferResultFromModel {.cdecl, constructor,
    importcpp: "Transfer_ResultFromModel(@)", header: "Transfer_ResultFromModel.hxx".}
proc setModel*(this: var TransferResultFromModel;
              model: Handle[InterfaceInterfaceModel]) {.cdecl,
    importcpp: "SetModel", header: "Transfer_ResultFromModel.hxx".}
proc setFileName*(this: var TransferResultFromModel; filename: cstring) {.cdecl,
    importcpp: "SetFileName", header: "Transfer_ResultFromModel.hxx".}
proc model*(this: TransferResultFromModel): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Transfer_ResultFromModel.hxx".}
proc fileName*(this: TransferResultFromModel): cstring {.noSideEffect, cdecl,
    importcpp: "FileName", header: "Transfer_ResultFromModel.hxx".}
proc fill*(this: var TransferResultFromModel; tp: Handle[TransferTransientProcess];
          ent: Handle[StandardTransient]): bool {.cdecl, importcpp: "Fill",
    header: "Transfer_ResultFromModel.hxx".}
proc strip*(this: var TransferResultFromModel; mode: cint) {.cdecl, importcpp: "Strip",
    header: "Transfer_ResultFromModel.hxx".}
proc fillBack*(this: TransferResultFromModel; tp: Handle[TransferTransientProcess]) {.
    noSideEffect, cdecl, importcpp: "FillBack", header: "Transfer_ResultFromModel.hxx".}
proc hasResult*(this: TransferResultFromModel): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Transfer_ResultFromModel.hxx".}
proc mainResult*(this: TransferResultFromModel): Handle[TransferResultFromTransient] {.
    noSideEffect, cdecl, importcpp: "MainResult", header: "Transfer_ResultFromModel.hxx".}
proc setMainResult*(this: var TransferResultFromModel;
                   amain: Handle[TransferResultFromTransient]) {.cdecl,
    importcpp: "SetMainResult", header: "Transfer_ResultFromModel.hxx".}
proc mainLabel*(this: TransferResultFromModel): cstring {.noSideEffect, cdecl,
    importcpp: "MainLabel", header: "Transfer_ResultFromModel.hxx".}
proc mainNumber*(this: TransferResultFromModel): cint {.noSideEffect, cdecl,
    importcpp: "MainNumber", header: "Transfer_ResultFromModel.hxx".}
proc resultFromKey*(this: TransferResultFromModel; start: Handle[StandardTransient]): Handle[
    TransferResultFromTransient] {.noSideEffect, cdecl, importcpp: "ResultFromKey",
                                  header: "Transfer_ResultFromModel.hxx".}
proc results*(this: TransferResultFromModel; level: cint): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl, importcpp: "Results",
                                  header: "Transfer_ResultFromModel.hxx".}
proc transferredList*(this: TransferResultFromModel; level: cint = 2): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl,
                                  importcpp: "TransferredList", header: "Transfer_ResultFromModel.hxx".}
proc checkedList*(this: TransferResultFromModel; check: InterfaceCheckStatus;
                 result: bool): Handle[TColStdHSequenceOfTransient] {.noSideEffect,
    cdecl, importcpp: "CheckedList", header: "Transfer_ResultFromModel.hxx".}
proc checkList*(this: TransferResultFromModel; erronly: bool; level: cint = 2): InterfaceCheckIterator {.
    noSideEffect, cdecl, importcpp: "CheckList", header: "Transfer_ResultFromModel.hxx".}
proc checkStatus*(this: TransferResultFromModel): InterfaceCheckStatus {.
    noSideEffect, cdecl, importcpp: "CheckStatus", header: "Transfer_ResultFromModel.hxx".}
proc computeCheckStatus*(this: var TransferResultFromModel; enforce: bool): InterfaceCheckStatus {.
    cdecl, importcpp: "ComputeCheckStatus", header: "Transfer_ResultFromModel.hxx".}


