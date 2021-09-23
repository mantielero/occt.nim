##  Created on: 1993-04-07
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
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HSequenceOfTransient, Transfer_Binder,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_CString, ../Standard/Standard_Integer

discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_MultipleBinder"
discard "forward decl of Transfer_MultipleBinder"
type
  Handle_Transfer_MultipleBinder* = handle[Transfer_MultipleBinder]

## ! Allows direct binding between a starting Object and the Result
## ! of its transfer, when it can be made of several Transient
## ! Objects. Compared to a Transcriptor, it has no Transfer Action
## !
## ! Result is a list of Transient Results. Unique Result is not
## ! available : SetResult is redefined to start the list on the
## ! first call, and refuse the other times.
## !
## ! rr
## !
## ! Remark : MultipleBinder itself is intended to be created and
## ! filled by TransferProcess itself (method Bind). In particular,
## ! conflicts between Unique (Standard) result and Multiple result
## ! are avoided through management made by TransferProcess.
## !
## ! Also, a Transcriptor (with an effective Transfer Method) which
## ! can produce a Multiple Result, may be defined as a sub-class
## ! of MultipleBinder by redefining method Transfer.

type
  Transfer_MultipleBinder* {.importcpp: "Transfer_MultipleBinder",
                            header: "Transfer_MultipleBinder.hxx", bycopy.} = object of Transfer_Binder ##
                                                                                                 ## !
                                                                                                 ## normal
                                                                                                 ## standard
                                                                                                 ## constructor,
                                                                                                 ## creates
                                                                                                 ## an
                                                                                                 ## empty
                                                                                                 ## MultipleBinder


proc constructTransfer_MultipleBinder*(): Transfer_MultipleBinder {.constructor,
    importcpp: "Transfer_MultipleBinder(@)", header: "Transfer_MultipleBinder.hxx".}
proc IsMultiple*(this: Transfer_MultipleBinder): Standard_Boolean {.noSideEffect,
    importcpp: "IsMultiple", header: "Transfer_MultipleBinder.hxx".}
proc ResultType*(this: Transfer_MultipleBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "ResultType", header: "Transfer_MultipleBinder.hxx".}
proc ResultTypeName*(this: Transfer_MultipleBinder): Standard_CString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "Transfer_MultipleBinder.hxx".}
proc AddResult*(this: var Transfer_MultipleBinder; res: handle[Standard_Transient]) {.
    importcpp: "AddResult", header: "Transfer_MultipleBinder.hxx".}
proc NbResults*(this: Transfer_MultipleBinder): Standard_Integer {.noSideEffect,
    importcpp: "NbResults", header: "Transfer_MultipleBinder.hxx".}
proc ResultValue*(this: Transfer_MultipleBinder; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "ResultValue",
                         header: "Transfer_MultipleBinder.hxx".}
proc MultipleResult*(this: Transfer_MultipleBinder): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "MultipleResult",
                                   header: "Transfer_MultipleBinder.hxx".}
proc SetMultipleResult*(this: var Transfer_MultipleBinder;
                       mulres: handle[TColStd_HSequenceOfTransient]) {.
    importcpp: "SetMultipleResult", header: "Transfer_MultipleBinder.hxx".}
type
  Transfer_MultipleBinderbase_type* = Transfer_Binder

proc get_type_name*(): cstring {.importcpp: "Transfer_MultipleBinder::get_type_name(@)",
                              header: "Transfer_MultipleBinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_MultipleBinder::get_type_descriptor(@)",
    header: "Transfer_MultipleBinder.hxx".}
proc DynamicType*(this: Transfer_MultipleBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_MultipleBinder.hxx".}