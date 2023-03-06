import ../standard/standard_types
import transfer_types
import ../tcolstd/tcolstd_types





##  Created on: 1994-10-03
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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





proc newTransferTransientListBinder*(): TransferTransientListBinder {.cdecl,
    constructor, importcpp: "Transfer_TransientListBinder(@)", header: "Transfer_TransientListBinder.hxx".}
proc newTransferTransientListBinder*(list: Handle[TColStdHSequenceOfTransient]): TransferTransientListBinder {.
    cdecl, constructor, importcpp: "Transfer_TransientListBinder(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc isMultiple*(this: TransferTransientListBinder): bool {.noSideEffect, cdecl,
    importcpp: "IsMultiple", header: "Transfer_TransientListBinder.hxx".}
proc resultType*(this: TransferTransientListBinder): Handle[StandardType] {.
    noSideEffect, cdecl, importcpp: "ResultType", header: "Transfer_TransientListBinder.hxx".}
proc resultTypeName*(this: TransferTransientListBinder): cstring {.noSideEffect,
    cdecl, importcpp: "ResultTypeName", header: "Transfer_TransientListBinder.hxx".}
proc addResult*(this: var TransferTransientListBinder;
               res: Handle[StandardTransient]) {.cdecl, importcpp: "AddResult",
    header: "Transfer_TransientListBinder.hxx".}
proc result*(this: TransferTransientListBinder): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, cdecl, importcpp: "Result", header: "Transfer_TransientListBinder.hxx".}
proc setResult*(this: var TransferTransientListBinder; num: cint;
               res: Handle[StandardTransient]) {.cdecl, importcpp: "SetResult",
    header: "Transfer_TransientListBinder.hxx".}
proc nbTransients*(this: TransferTransientListBinder): cint {.noSideEffect, cdecl,
    importcpp: "NbTransients", header: "Transfer_TransientListBinder.hxx".}
proc transient*(this: TransferTransientListBinder; num: cint): Handle[
    StandardTransient] {.noSideEffect, cdecl, importcpp: "Transient",
                        header: "Transfer_TransientListBinder.hxx".}


