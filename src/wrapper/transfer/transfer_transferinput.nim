import ../standard/standard_types
import transfer_types

import "../interface/interface_types"
#import ../message/[message_types, message_progressrange]



##  Created on: 1992-02-04
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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



proc newTransferTransferInput*(): TransferTransferInput {.cdecl, constructor,
    importcpp: "Transfer_TransferInput(@)", header: "Transfer_TransferInput.hxx".}
proc entities*(this: TransferTransferInput; list: var TransferTransferIterator): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "Entities", header: "Transfer_TransferInput.hxx".}
proc fillModel*(this: TransferTransferInput;
               `proc`: Handle[TransferTransientProcess];
               amodel: Handle[InterfaceInterfaceModel]) {.noSideEffect, cdecl,
    importcpp: "FillModel", header: "Transfer_TransferInput.hxx".}
proc fillModel*(this: TransferTransferInput;
               `proc`: Handle[TransferTransientProcess];
               amodel: Handle[InterfaceInterfaceModel];
               proto: Handle[InterfaceProtocol]; roots: bool = true) {.noSideEffect,
    cdecl, importcpp: "FillModel", header: "Transfer_TransferInput.hxx".}
proc fillModel*(this: TransferTransferInput; `proc`: Handle[TransferFinderProcess];
               amodel: Handle[InterfaceInterfaceModel]) {.noSideEffect, cdecl,
    importcpp: "FillModel", header: "Transfer_TransferInput.hxx".}
proc fillModel*(this: TransferTransferInput; `proc`: Handle[TransferFinderProcess];
               amodel: Handle[InterfaceInterfaceModel];
               proto: Handle[InterfaceProtocol]; roots: bool = true) {.noSideEffect,
    cdecl, importcpp: "FillModel", header: "Transfer_TransferInput.hxx".}


