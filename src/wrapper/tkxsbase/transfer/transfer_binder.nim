import ../../tkernel/standard/standard_types
import transfer_types





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

when defined(Status):
  discard




proc merge*(this: var TransferBinder; other: Handle[TransferBinder]) {.cdecl,
    importcpp: "Merge", header: "Transfer_Binder.hxx".}
proc isMultiple*(this: TransferBinder): bool {.noSideEffect, cdecl,
    importcpp: "IsMultiple", header: "Transfer_Binder.hxx".}
proc resultType*(this: TransferBinder): Handle[StandardType] {.noSideEffect, cdecl,
    importcpp: "ResultType", header: "Transfer_Binder.hxx".}
proc resultTypeName*(this: TransferBinder): cstring {.noSideEffect, cdecl,
    importcpp: "ResultTypeName", header: "Transfer_Binder.hxx".}
proc addResult*(this: var TransferBinder; next: Handle[TransferBinder]) {.cdecl,
    importcpp: "AddResult", header: "Transfer_Binder.hxx".}
proc nextResult*(this: TransferBinder): Handle[TransferBinder] {.noSideEffect, cdecl,
    importcpp: "NextResult", header: "Transfer_Binder.hxx".}
proc hasResult*(this: TransferBinder): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", header: "Transfer_Binder.hxx".}
proc setAlreadyUsed*(this: var TransferBinder) {.cdecl, importcpp: "SetAlreadyUsed",
    header: "Transfer_Binder.hxx".}
proc status*(this: TransferBinder): TransferStatusResult {.noSideEffect, cdecl,
    importcpp: "Status", header: "Transfer_Binder.hxx".}
proc statusExec*(this: TransferBinder): TransferStatusExec {.noSideEffect, cdecl,
    importcpp: "StatusExec", header: "Transfer_Binder.hxx".}
proc setStatusExec*(this: var TransferBinder; stat: TransferStatusExec) {.cdecl,
    importcpp: "SetStatusExec", header: "Transfer_Binder.hxx".}
proc addFail*(this: var TransferBinder; mess: cstring; orig: cstring = "") {.cdecl,
    importcpp: "AddFail", header: "Transfer_Binder.hxx".}
proc addWarning*(this: var TransferBinder; mess: cstring; orig: cstring = "") {.cdecl,
    importcpp: "AddWarning", header: "Transfer_Binder.hxx".}
proc check*(this: TransferBinder): Handle[InterfaceCheck] {.noSideEffect, cdecl,
    importcpp: "Check", header: "Transfer_Binder.hxx".}
proc cCheck*(this: var TransferBinder): Handle[InterfaceCheck] {.cdecl,
    importcpp: "CCheck", header: "Transfer_Binder.hxx".}
proc destroyTransferBinder*(this: var TransferBinder) {.cdecl,
    importcpp: "#.~Transfer_Binder()", header: "Transfer_Binder.hxx".}


