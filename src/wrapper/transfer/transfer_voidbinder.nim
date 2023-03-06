import ../standard/standard_types
import transfer_types





##  Created on: 1994-06-27
##  Created by: Design
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





proc newTransferVoidBinder*(): TransferVoidBinder {.cdecl, constructor,
    importcpp: "Transfer_VoidBinder(@)", header: "Transfer_VoidBinder.hxx".}
proc resultType*(this: TransferVoidBinder): Handle[StandardType] {.noSideEffect,
    cdecl, importcpp: "ResultType", header: "Transfer_VoidBinder.hxx".}
proc resultTypeName*(this: TransferVoidBinder): cstring {.noSideEffect, cdecl,
    importcpp: "ResultTypeName", header: "Transfer_VoidBinder.hxx".}


