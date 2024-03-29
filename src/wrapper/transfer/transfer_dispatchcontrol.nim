import ../standard/standard_types
import transfer_types
import "../interface/interface_types"




##  Created on: 1993-06-17
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





proc newTransferDispatchControl*(model: Handle[InterfaceInterfaceModel];
                                tp: Handle[TransferTransientProcess]): TransferDispatchControl {.
    cdecl, constructor, importcpp: "Transfer_DispatchControl(@)", header: "Transfer_DispatchControl.hxx".}
proc transientProcess*(this: TransferDispatchControl): Handle[
    TransferTransientProcess] {.noSideEffect, cdecl, importcpp: "TransientProcess",
                               header: "Transfer_DispatchControl.hxx".}
proc startingModel*(this: TransferDispatchControl): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "StartingModel", header: "Transfer_DispatchControl.hxx".}
proc clear*(this: var TransferDispatchControl) {.cdecl, importcpp: "Clear",
    header: "Transfer_DispatchControl.hxx".}
proc `bind`*(this: var TransferDispatchControl; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.cdecl, importcpp: "Bind",
    header: "Transfer_DispatchControl.hxx".}
proc search*(this: TransferDispatchControl; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "Transfer_DispatchControl.hxx".}


