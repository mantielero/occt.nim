##  Created on: 1993-06-09
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
  ../Standard/Standard, ../Standard/Standard_Type, Transfer_StatusResult,
  Transfer_StatusExec, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_CString

discard "forward decl of Interface_Check"
discard "forward decl of Transfer_TransferFailure"
when defined(Status):
  discard
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_Binder"
type
  Handle_Transfer_Binder* = handle[Transfer_Binder]

## ! A Binder is an auxiliary object to Map the Result of the
## ! Transfer of a given Object : it records the Result of the
## ! Unitary Transfer (Resulting Object), status of progress and
## ! error (if any) of the Process
## !
## ! The class Binder itself makes no definition for the Result :
## ! it is defined by sub-classes : it can be either Simple (and
## ! has to be typed : see generic class SimpleBinder) or Multiple
## ! (see class MultipleBinder).
## !
## ! In principle, for a Transfer in progress, Result cannot be
## ! accessed : this would cause an exception raising.
## ! This is controlled by the value if StatusResult : if it is
## ! "Used", the Result cannot be changed. This status is normally
## ! controlled by TransferProcess but can be directly (see method
## ! SetAlreadyUsed)
## !
## ! Checks can be completed by a record of cases, as string which
## ! can be used as codes, but not to be printed
## !
## ! In addition to the Result, a Binder can bring a list of
## ! Attributes, which are additional data, each of them has a name

type
  Transfer_Binder* {.importcpp: "Transfer_Binder", header: "Transfer_Binder.hxx",
                    bycopy.} = object of Standard_Transient ## ! Merges basic data (Check, ExecStatus) from another Binder but
                                                       ## ! keeps its result. Used when a binder is replaced by another
                                                       ## ! one, this allows to keep messages
                                                       ## ! Sets fields at initial values
                                                       ## ! Called by AddResult, to keep unicity of each item in the list


proc Merge*(this: var Transfer_Binder; other: handle[Transfer_Binder]) {.
    importcpp: "Merge", header: "Transfer_Binder.hxx".}
proc IsMultiple*(this: Transfer_Binder): Standard_Boolean {.noSideEffect,
    importcpp: "IsMultiple", header: "Transfer_Binder.hxx".}
proc ResultType*(this: Transfer_Binder): handle[Standard_Type] {.noSideEffect,
    importcpp: "ResultType", header: "Transfer_Binder.hxx".}
proc ResultTypeName*(this: Transfer_Binder): Standard_CString {.noSideEffect,
    importcpp: "ResultTypeName", header: "Transfer_Binder.hxx".}
proc AddResult*(this: var Transfer_Binder; next: handle[Transfer_Binder]) {.
    importcpp: "AddResult", header: "Transfer_Binder.hxx".}
proc NextResult*(this: Transfer_Binder): handle[Transfer_Binder] {.noSideEffect,
    importcpp: "NextResult", header: "Transfer_Binder.hxx".}
proc HasResult*(this: Transfer_Binder): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "Transfer_Binder.hxx".}
proc SetAlreadyUsed*(this: var Transfer_Binder) {.importcpp: "SetAlreadyUsed",
    header: "Transfer_Binder.hxx".}
proc Status*(this: Transfer_Binder): Transfer_StatusResult {.noSideEffect,
    importcpp: "Status", header: "Transfer_Binder.hxx".}
proc StatusExec*(this: Transfer_Binder): Transfer_StatusExec {.noSideEffect,
    importcpp: "StatusExec", header: "Transfer_Binder.hxx".}
proc SetStatusExec*(this: var Transfer_Binder; stat: Transfer_StatusExec) {.
    importcpp: "SetStatusExec", header: "Transfer_Binder.hxx".}
proc AddFail*(this: var Transfer_Binder; mess: Standard_CString;
             orig: Standard_CString = "") {.importcpp: "AddFail",
                                        header: "Transfer_Binder.hxx".}
proc AddWarning*(this: var Transfer_Binder; mess: Standard_CString;
                orig: Standard_CString = "") {.importcpp: "AddWarning",
    header: "Transfer_Binder.hxx".}
proc Check*(this: Transfer_Binder): handle[Interface_Check] {.noSideEffect,
    importcpp: "Check", header: "Transfer_Binder.hxx".}
proc CCheck*(this: var Transfer_Binder): handle[Interface_Check] {.
    importcpp: "CCheck", header: "Transfer_Binder.hxx".}
proc destroyTransfer_Binder*(this: var Transfer_Binder) {.
    importcpp: "#.~Transfer_Binder()", header: "Transfer_Binder.hxx".}
type
  Transfer_Binderbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_Binder::get_type_name(@)",
                              header: "Transfer_Binder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_Binder::get_type_descriptor(@)",
    header: "Transfer_Binder.hxx".}
proc DynamicType*(this: Transfer_Binder): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_Binder.hxx".}