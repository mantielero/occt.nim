import ../standard/standard_types
import transfer_types





##  Created on: 1993-06-10
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





proc newTransferSimpleBinderOfTransient*(): TransferSimpleBinderOfTransient {.
    cdecl, constructor, importcpp: "Transfer_SimpleBinderOfTransient(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc resultType*(this: TransferSimpleBinderOfTransient): Handle[StandardType] {.
    noSideEffect, cdecl, importcpp: "ResultType", header: "Transfer_SimpleBinderOfTransient.hxx".}
proc resultTypeName*(this: TransferSimpleBinderOfTransient): cstring {.noSideEffect,
    cdecl, importcpp: "ResultTypeName", header: "Transfer_SimpleBinderOfTransient.hxx".}
proc setResult*(this: var TransferSimpleBinderOfTransient;
               res: Handle[StandardTransient]) {.cdecl, importcpp: "SetResult",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc result*(this: TransferSimpleBinderOfTransient): Handle[StandardTransient] {.
    noSideEffect, cdecl, importcpp: "Result", header: "Transfer_SimpleBinderOfTransient.hxx".}
proc getTypedResult*(bnd: Handle[TransferBinder]; atype: Handle[StandardType];
                    res: var Handle[StandardTransient]): bool {.cdecl,
    importcpp: "Transfer_SimpleBinderOfTransient::GetTypedResult(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}


