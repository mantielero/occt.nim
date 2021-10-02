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

discard "forward decl of Interface_Check"
discard "forward decl of Transfer_TransferFailure"
when defined(Status):
  discard
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_Binder"
type
  TransferBinder* {.importcpp: "Transfer_Binder", header: "Transfer_Binder.hxx",
                   bycopy.} = object of StandardTransient ## ! Merges basic data (Check, ExecStatus) from another Binder but
                                                     ## ! keeps its result. Used when a binder is replaced by another
                                                     ## ! one, this allows to keep messages
                                                     ## ! Sets fields at initial values
                                                     ## ! Called by AddResult, to keep unicity of each item in the list

type
  HandleTransferBinder* = Handle[TransferBinder]

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
  TransferBinderbaseType* = StandardTransient



proc merge*(this: var TransferBinder; other: Handle[TransferBinder]) {.
    importcpp: "Merge", header: "Transfer_Binder.hxx".}
proc isMultiple*(this: TransferBinder): StandardBoolean {.noSideEffect,
    importcpp: "IsMultiple", header: "Transfer_Binder.hxx".}
#[ proc resultType*(this: TransferBinder): Handle[StandardType] {.noSideEffect,
    importcpp: "ResultType", header: "Transfer_Binder.hxx".}
proc resultTypeName*(this: TransferBinder): StandardCString {.noSideEffect,
    importcpp: "ResultTypeName", header: "Transfer_Binder.hxx".}
proc addResult*(this: var TransferBinder; next: Handle[TransferBinder]) {.
    importcpp: "AddResult", header: "Transfer_Binder.hxx".}
proc nextResult*(this: TransferBinder): Handle[TransferBinder] {.noSideEffect,
    importcpp: "NextResult", header: "Transfer_Binder.hxx".}
proc hasResult*(this: TransferBinder): StandardBoolean {.noSideEffect,
    importcpp: "HasResult", header: "Transfer_Binder.hxx".}
proc setAlreadyUsed*(this: var TransferBinder) {.importcpp: "SetAlreadyUsed",
    header: "Transfer_Binder.hxx".}
proc status*(this: TransferBinder): TransferStatusResult {.noSideEffect,
    importcpp: "Status", header: "Transfer_Binder.hxx".}
proc statusExec*(this: TransferBinder): TransferStatusExec {.noSideEffect,
    importcpp: "StatusExec", header: "Transfer_Binder.hxx".}
proc setStatusExec*(this: var TransferBinder; stat: TransferStatusExec) {.
    importcpp: "SetStatusExec", header: "Transfer_Binder.hxx".}
proc addFail*(this: var TransferBinder; mess: StandardCString;
             orig: StandardCString = "") {.importcpp: "AddFail",
                                       header: "Transfer_Binder.hxx".}
proc addWarning*(this: var TransferBinder; mess: StandardCString;
                orig: StandardCString = "") {.importcpp: "AddWarning",
    header: "Transfer_Binder.hxx".}
proc check*(this: TransferBinder): Handle[InterfaceCheck] {.noSideEffect,
    importcpp: "Check", header: "Transfer_Binder.hxx".}
proc cCheck*(this: var TransferBinder): Handle[InterfaceCheck] {.importcpp: "CCheck",
    header: "Transfer_Binder.hxx".}
proc destroyTransferBinder*(this: var TransferBinder) {.
    importcpp: "#.~Transfer_Binder()", header: "Transfer_Binder.hxx".}

proc getTypeName*(): cstring {.importcpp: "Transfer_Binder::get_type_name(@)",
                            header: "Transfer_Binder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_Binder::get_type_descriptor(@)",
    header: "Transfer_Binder.hxx".}
proc dynamicType*(this: TransferBinder): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Transfer_Binder.hxx".} ]#