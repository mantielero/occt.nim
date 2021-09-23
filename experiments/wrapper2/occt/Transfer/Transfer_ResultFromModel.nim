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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Integer,
  ../Interface/Interface_CheckStatus, ../Standard/Standard_Transient,
  ../Standard/Standard_CString, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_HSequenceOfTransient

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_ResultFromTransient"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_CheckIterator"
discard "forward decl of Transfer_ResultFromModel"
discard "forward decl of Transfer_ResultFromModel"
type
  Handle_Transfer_ResultFromModel* = handle[Transfer_ResultFromModel]

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
  Transfer_ResultFromModel* {.importcpp: "Transfer_ResultFromModel",
                             header: "Transfer_ResultFromModel.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## a
                                                                                                      ## ResultFromModel,
                                                                                                      ## empty


proc constructTransfer_ResultFromModel*(): Transfer_ResultFromModel {.constructor,
    importcpp: "Transfer_ResultFromModel(@)",
    header: "Transfer_ResultFromModel.hxx".}
proc SetModel*(this: var Transfer_ResultFromModel;
              model: handle[Interface_InterfaceModel]) {.importcpp: "SetModel",
    header: "Transfer_ResultFromModel.hxx".}
proc SetFileName*(this: var Transfer_ResultFromModel; filename: Standard_CString) {.
    importcpp: "SetFileName", header: "Transfer_ResultFromModel.hxx".}
proc Model*(this: Transfer_ResultFromModel): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Transfer_ResultFromModel.hxx".}
proc FileName*(this: Transfer_ResultFromModel): Standard_CString {.noSideEffect,
    importcpp: "FileName", header: "Transfer_ResultFromModel.hxx".}
proc Fill*(this: var Transfer_ResultFromModel;
          TP: handle[Transfer_TransientProcess]; ent: handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Fill", header: "Transfer_ResultFromModel.hxx".}
proc Strip*(this: var Transfer_ResultFromModel; mode: Standard_Integer) {.
    importcpp: "Strip", header: "Transfer_ResultFromModel.hxx".}
proc FillBack*(this: Transfer_ResultFromModel;
              TP: handle[Transfer_TransientProcess]) {.noSideEffect,
    importcpp: "FillBack", header: "Transfer_ResultFromModel.hxx".}
proc HasResult*(this: Transfer_ResultFromModel): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Transfer_ResultFromModel.hxx".}
proc MainResult*(this: Transfer_ResultFromModel): handle[
    Transfer_ResultFromTransient] {.noSideEffect, importcpp: "MainResult",
                                   header: "Transfer_ResultFromModel.hxx".}
proc SetMainResult*(this: var Transfer_ResultFromModel;
                   amain: handle[Transfer_ResultFromTransient]) {.
    importcpp: "SetMainResult", header: "Transfer_ResultFromModel.hxx".}
proc MainLabel*(this: Transfer_ResultFromModel): Standard_CString {.noSideEffect,
    importcpp: "MainLabel", header: "Transfer_ResultFromModel.hxx".}
proc MainNumber*(this: Transfer_ResultFromModel): Standard_Integer {.noSideEffect,
    importcpp: "MainNumber", header: "Transfer_ResultFromModel.hxx".}
proc ResultFromKey*(this: Transfer_ResultFromModel;
                   start: handle[Standard_Transient]): handle[
    Transfer_ResultFromTransient] {.noSideEffect, importcpp: "ResultFromKey",
                                   header: "Transfer_ResultFromModel.hxx".}
proc Results*(this: Transfer_ResultFromModel; level: Standard_Integer): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "Results",
                                   header: "Transfer_ResultFromModel.hxx".}
proc TransferredList*(this: Transfer_ResultFromModel; level: Standard_Integer = 2): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "TransferredList",
                                   header: "Transfer_ResultFromModel.hxx".}
proc CheckedList*(this: Transfer_ResultFromModel; check: Interface_CheckStatus;
                 result: Standard_Boolean): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "CheckedList", header: "Transfer_ResultFromModel.hxx".}
proc CheckList*(this: Transfer_ResultFromModel; erronly: Standard_Boolean;
               level: Standard_Integer = 2): Interface_CheckIterator {.noSideEffect,
    importcpp: "CheckList", header: "Transfer_ResultFromModel.hxx".}
proc CheckStatus*(this: Transfer_ResultFromModel): Interface_CheckStatus {.
    noSideEffect, importcpp: "CheckStatus", header: "Transfer_ResultFromModel.hxx".}
proc ComputeCheckStatus*(this: var Transfer_ResultFromModel;
                        enforce: Standard_Boolean): Interface_CheckStatus {.
    importcpp: "ComputeCheckStatus", header: "Transfer_ResultFromModel.hxx".}
type
  Transfer_ResultFromModelbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_ResultFromModel::get_type_name(@)",
                              header: "Transfer_ResultFromModel.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ResultFromModel::get_type_descriptor(@)",
    header: "Transfer_ResultFromModel.hxx".}
proc DynamicType*(this: Transfer_ResultFromModel): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_ResultFromModel.hxx".}