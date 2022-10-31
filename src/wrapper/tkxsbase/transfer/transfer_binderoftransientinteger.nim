import transfer_types



##  Created on: 1995-02-27
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





proc newTransferBinderOfTransientInteger*(): TransferBinderOfTransientInteger {.
    cdecl, constructor, importcpp: "Transfer_BinderOfTransientInteger(@)",
    header: "Transfer_BinderOfTransientInteger.hxx".}
proc setInteger*(this: var TransferBinderOfTransientInteger; value: cint) {.cdecl,
    importcpp: "SetInteger", header: "Transfer_BinderOfTransientInteger.hxx".}
proc integer*(this: TransferBinderOfTransientInteger): cint {.noSideEffect, cdecl,
    importcpp: "Integer", header: "Transfer_BinderOfTransientInteger.hxx".}

