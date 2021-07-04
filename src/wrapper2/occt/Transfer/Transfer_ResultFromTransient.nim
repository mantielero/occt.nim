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
  ../TColStd/TColStd_HSequenceOfTransient, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean, ../Interface/Interface_CheckStatus,
  ../Standard/Standard_Integer, ../TColStd/TColStd_IndexedMapOfTransient

discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_Binder"
discard "forward decl of Interface_Check"
discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Transfer_ResultFromTransient"
discard "forward decl of Transfer_ResultFromTransient"
type
  Handle_Transfer_ResultFromTransient* = handle[Transfer_ResultFromTransient]

## ! This class, in conjunction with ResultFromModel, allows to
## ! record the result of a transfer initially stored in a
## ! TransientProcess.
## !
## ! A ResultFromTransient records a couple (Transient,Binder for
## ! the result and checks) plus a list of "sub-results", which
## ! have been recorded in the TrabsientProcess, under scope
## ! attached to the starting transient.

type
  Transfer_ResultFromTransient* {.importcpp: "Transfer_ResultFromTransient",
                                 header: "Transfer_ResultFromTransient.hxx",
                                 bycopy.} = object of Standard_Transient ## ! Creates a
                                                                    ## ResultFromTransient, empty


proc constructTransfer_ResultFromTransient*(): Transfer_ResultFromTransient {.
    constructor, importcpp: "Transfer_ResultFromTransient(@)",
    header: "Transfer_ResultFromTransient.hxx".}
proc SetStart*(this: var Transfer_ResultFromTransient;
              start: handle[Standard_Transient]) {.importcpp: "SetStart",
    header: "Transfer_ResultFromTransient.hxx".}
proc SetBinder*(this: var Transfer_ResultFromTransient;
               binder: handle[Transfer_Binder]) {.importcpp: "SetBinder",
    header: "Transfer_ResultFromTransient.hxx".}
proc Start*(this: Transfer_ResultFromTransient): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Start", header: "Transfer_ResultFromTransient.hxx".}
proc Binder*(this: Transfer_ResultFromTransient): handle[Transfer_Binder] {.
    noSideEffect, importcpp: "Binder", header: "Transfer_ResultFromTransient.hxx".}
proc HasResult*(this: Transfer_ResultFromTransient): Standard_Boolean {.
    noSideEffect, importcpp: "HasResult",
    header: "Transfer_ResultFromTransient.hxx".}
proc Check*(this: Transfer_ResultFromTransient): handle[Interface_Check] {.
    noSideEffect, importcpp: "Check", header: "Transfer_ResultFromTransient.hxx".}
proc CheckStatus*(this: Transfer_ResultFromTransient): Interface_CheckStatus {.
    noSideEffect, importcpp: "CheckStatus",
    header: "Transfer_ResultFromTransient.hxx".}
proc ClearSubs*(this: var Transfer_ResultFromTransient) {.importcpp: "ClearSubs",
    header: "Transfer_ResultFromTransient.hxx".}
proc AddSubResult*(this: var Transfer_ResultFromTransient;
                  sub: handle[Transfer_ResultFromTransient]) {.
    importcpp: "AddSubResult", header: "Transfer_ResultFromTransient.hxx".}
proc NbSubResults*(this: Transfer_ResultFromTransient): Standard_Integer {.
    noSideEffect, importcpp: "NbSubResults",
    header: "Transfer_ResultFromTransient.hxx".}
proc SubResult*(this: Transfer_ResultFromTransient; num: Standard_Integer): handle[
    Transfer_ResultFromTransient] {.noSideEffect, importcpp: "SubResult",
                                   header: "Transfer_ResultFromTransient.hxx".}
proc ResultFromKey*(this: Transfer_ResultFromTransient;
                   key: handle[Standard_Transient]): handle[
    Transfer_ResultFromTransient] {.noSideEffect, importcpp: "ResultFromKey",
                                   header: "Transfer_ResultFromTransient.hxx".}
proc FillMap*(this: Transfer_ResultFromTransient;
             map: var TColStd_IndexedMapOfTransient) {.noSideEffect,
    importcpp: "FillMap", header: "Transfer_ResultFromTransient.hxx".}
proc Fill*(this: var Transfer_ResultFromTransient;
          TP: handle[Transfer_TransientProcess]) {.importcpp: "Fill",
    header: "Transfer_ResultFromTransient.hxx".}
proc Strip*(this: var Transfer_ResultFromTransient) {.importcpp: "Strip",
    header: "Transfer_ResultFromTransient.hxx".}
proc FillBack*(this: Transfer_ResultFromTransient;
              TP: handle[Transfer_TransientProcess]) {.noSideEffect,
    importcpp: "FillBack", header: "Transfer_ResultFromTransient.hxx".}
type
  Transfer_ResultFromTransientbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Transfer_ResultFromTransient::get_type_name(@)",
                              header: "Transfer_ResultFromTransient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_ResultFromTransient::get_type_descriptor(@)",
    header: "Transfer_ResultFromTransient.hxx".}
proc DynamicType*(this: Transfer_ResultFromTransient): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_ResultFromTransient.hxx".}