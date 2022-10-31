import ../../tkernel/standard/standard_types
import transfer_types
import ../../tkernel/tcolstd/tcolstd_types



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





proc newTransferMultipleBinder*(): TransferMultipleBinder {.cdecl, constructor,
    importcpp: "Transfer_MultipleBinder(@)", header: "Transfer_MultipleBinder.hxx".}
proc isMultiple*(this: TransferMultipleBinder): bool {.noSideEffect, cdecl,
    importcpp: "IsMultiple", header: "Transfer_MultipleBinder.hxx".}
proc resultType*(this: TransferMultipleBinder): Handle[StandardType] {.noSideEffect,
    cdecl, importcpp: "ResultType", header: "Transfer_MultipleBinder.hxx".}
proc resultTypeName*(this: TransferMultipleBinder): cstring {.noSideEffect, cdecl,
    importcpp: "ResultTypeName", header: "Transfer_MultipleBinder.hxx".}
proc addResult*(this: var TransferMultipleBinder; res: Handle[StandardTransient]) {.
    cdecl, importcpp: "AddResult", header: "Transfer_MultipleBinder.hxx".}
proc nbResults*(this: TransferMultipleBinder): cint {.noSideEffect, cdecl,
    importcpp: "NbResults", header: "Transfer_MultipleBinder.hxx".}
proc resultValue*(this: TransferMultipleBinder; num: cint): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "ResultValue", header: "Transfer_MultipleBinder.hxx".}
proc multipleResult*(this: TransferMultipleBinder): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, cdecl,
                                  importcpp: "MultipleResult", header: "Transfer_MultipleBinder.hxx".}
proc setMultipleResult*(this: var TransferMultipleBinder;
                       mulres: Handle[TColStdHSequenceOfTransient]) {.cdecl,
    importcpp: "SetMultipleResult", header: "Transfer_MultipleBinder.hxx".}

