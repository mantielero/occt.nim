import ../../tkernel/standard/standard_types
import transfer_types



##  Created on: 1992-02-07
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



proc newTransferTransferDispatch*(amodel: Handle[InterfaceInterfaceModel];
                                 lib: InterfaceGeneralLib): TransferTransferDispatch {.
    cdecl, constructor, importcpp: "Transfer_TransferDispatch(@)", header: "Transfer_TransferDispatch.hxx".}
proc newTransferTransferDispatch*(amodel: Handle[InterfaceInterfaceModel];
                                 protocol: Handle[InterfaceProtocol]): TransferTransferDispatch {.
    cdecl, constructor, importcpp: "Transfer_TransferDispatch(@)", header: "Transfer_TransferDispatch.hxx".}
proc newTransferTransferDispatch*(amodel: Handle[InterfaceInterfaceModel]): TransferTransferDispatch {.
    cdecl, constructor, importcpp: "Transfer_TransferDispatch(@)", header: "Transfer_TransferDispatch.hxx".}
proc transientProcess*(this: TransferTransferDispatch): Handle[
    TransferTransientProcess] {.noSideEffect, cdecl, importcpp: "TransientProcess",
                               header: "Transfer_TransferDispatch.hxx".}
proc copy*(this: var TransferTransferDispatch; entfrom: Handle[StandardTransient];
          entto: var Handle[StandardTransient]; mapped: bool; errstat: bool): bool {.
    cdecl, importcpp: "Copy", header: "Transfer_TransferDispatch.hxx".}

