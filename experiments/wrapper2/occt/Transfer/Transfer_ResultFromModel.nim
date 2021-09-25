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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_ResultFromTransient"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Transfer_ResultFromModel"
discard "forward decl of Transfer_ResultFromModel"
type
  HandleTransferResultFromModel* = Handle[TransferResultFromModel]

## ! ResultFromModel is used to store a final result stored in a
## ! TransientProcess, respectfully to its structuration in scopes
## ! by using a set of ResultFromTransient
## ! Hence, it can be regarded as a passive equivalent of the
## ! stored data in the TransientProcess, while an Iterator gives
## ! a flat view of it.
## !
## ! A ResultFromModel is intended to be attached to the transfer
## ! of one entity (typically root entity but it is not mandatory)
## !
## ! It is then possible to :
## ! - Create and fill a ResultFromModel from a TransientProcess,
## ! by designating a starting entity
## ! - Fill back the TransientProcess from a ResultFromModel, as it
## ! were filled by the operation which filled it the first time

type
  TransferResultFromModel* {.importcpp: "Transfer_ResultFromModel",
                            header: "Transfer_ResultFromModel.hxx", bycopy.} = object of StandardTransient ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## a
                                                                                                    ## ResultFromModel,
                                                                                                    ## empty


proc constructTransferResultFromModel*(): TransferResultFromModel {.constructor,
    importcpp: "Transfer_ResultFromModel(@)",
    header: "Transfer_ResultFromModel.hxx".}
proc setModel*(this: var TransferResultFromModel;
              model: Handle[InterfaceInterfaceModel]) {.importcpp: "SetModel",
    header: "Transfer_ResultFromModel.hxx".}
proc setFileName*(this: var TransferResultFromModel; filename: StandardCString) {.
    importcpp: "SetFileName", header: "Transfer_ResultFromModel.hxx".}
proc model*(this: TransferResultFromModel): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_ResultFromModel.hxx".}
proc fileName*(this: TransferResultFromModel): StandardCString {.noSideEffect,
    importcpp: "FileName", header: "Transfer_ResultFromModel.hxx".}
proc fill*(this: var TransferResultFromModel; tp: Handle[TransferTransientProcess];
          ent: Handle[StandardTransient]): bool {.importcpp: "Fill",
    header: "Transfer_ResultFromModel.hxx".}
proc strip*(this: var TransferResultFromModel; mode: int) {.importcpp: "Strip",
    header: "Transfer_ResultFromModel.hxx".}
proc fillBack*(this: TransferResultFromModel; tp: Handle[TransferTransientProcess]) {.
    noSideEffect, importcpp: "FillBack", header: "Transfer_ResultFromModel.hxx".}
proc hasResult*(this: TransferResultFromModel): bool {.noSideEffect,
    importcpp: "HasResult", header: "Transfer_ResultFromModel.hxx".}
proc mainResult*(this: TransferResultFromModel): Handle[TransferResultFromTransient] {.
    noSideEffect, importcpp: "MainResult", header: "Transfer_ResultFromModel.hxx".}
proc setMainResult*(this: var TransferResultFromModel;
                   amain: Handle[TransferResultFromTransient]) {.
    importcpp: "SetMainResult", header: "Transfer_ResultFromModel.hxx".}
proc mainLabel*(this: TransferResultFromModel): StandardCString {.noSideEffect,
    importcpp: "MainLabel", header: "Transfer_ResultFromModel.hxx".}
proc mainNumber*(this: TransferResultFromModel): int {.noSideEffect,
    importcpp: "MainNumber", header: "Transfer_ResultFromModel.hxx".}
proc resultFromKey*(this: TransferResultFromModel; start: Handle[StandardTransient]): Handle[
    TransferResultFromTransient] {.noSideEffect, importcpp: "ResultFromKey",
                                  header: "Transfer_ResultFromModel.hxx".}
proc results*(this: TransferResultFromModel; level: int): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "Results",
                                  header: "Transfer_ResultFromModel.hxx".}
proc transferredList*(this: TransferResultFromModel; level: int = 2): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "TransferredList",
                                  header: "Transfer_ResultFromModel.hxx".}
proc checkedList*(this: TransferResultFromModel; check: InterfaceCheckStatus;
                 result: bool): Handle[TColStdHSequenceOfTransient] {.noSideEffect,
    importcpp: "CheckedList", header: "Transfer_ResultFromModel.hxx".}
proc checkList*(this: TransferResultFromModel; erronly: bool; level: int = 2): InterfaceCheckIterator {.
    noSideEffect, importcpp: "CheckList", header: "Transfer_ResultFromModel.hxx".}
proc checkStatus*(this: TransferResultFromModel): InterfaceCheckStatus {.
    noSideEffect, importcpp: "CheckStatus", header: "Transfer_ResultFromModel.hxx".}
proc computeCheckStatus*(this: var TransferResultFromModel; enforce: bool): InterfaceCheckStatus {.
    importcpp: "ComputeCheckStatus", header: "Transfer_ResultFromModel.hxx".}
type
  TransferResultFromModelbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Transfer_ResultFromModel::get_type_name(@)",
                            header: "Transfer_ResultFromModel.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_ResultFromModel::get_type_descriptor(@)",
    header: "Transfer_ResultFromModel.hxx".}
proc dynamicType*(this: TransferResultFromModel): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_ResultFromModel.hxx".}
