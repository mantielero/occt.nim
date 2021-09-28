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

discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_DispatchControl"
discard "forward decl of Transfer_DispatchControl"
type
  HandleC1C1* = Handle[TransferDispatchControl]

## ! This is an auxiliary class for TransferDispatch, which allows
## ! to record simple copies, as CopyControl from Interface, but
## ! based on a TransientProcess. Hence, it allows in addition
## ! more actions (such as recording results of adaptations)

type
  TransferDispatchControl* {.importcpp: "Transfer_DispatchControl",
                            header: "Transfer_DispatchControl.hxx", bycopy.} = object of InterfaceCopyControl ##
                                                                                                       ## !
                                                                                                       ## Creates
                                                                                                       ## the
                                                                                                       ## DispatchControl,
                                                                                                       ## ready
                                                                                                       ## for
                                                                                                       ## use


proc constructTransferDispatchControl*(model: Handle[InterfaceInterfaceModel];
                                      tp: Handle[TransferTransientProcess]): TransferDispatchControl {.
    constructor, importcpp: "Transfer_DispatchControl(@)",
    header: "Transfer_DispatchControl.hxx".}
proc transientProcess*(this: TransferDispatchControl): Handle[
    TransferTransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                               header: "Transfer_DispatchControl.hxx".}
proc startingModel*(this: TransferDispatchControl): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "StartingModel",
    header: "Transfer_DispatchControl.hxx".}
proc clear*(this: var TransferDispatchControl) {.importcpp: "Clear",
    header: "Transfer_DispatchControl.hxx".}
proc `bind`*(this: var TransferDispatchControl; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.importcpp: "Bind",
    header: "Transfer_DispatchControl.hxx".}
proc search*(this: TransferDispatchControl; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect,
    importcpp: "Search", header: "Transfer_DispatchControl.hxx".}
type
  TransferDispatchControlbaseType* = InterfaceCopyControl

proc getTypeName*(): cstring {.importcpp: "Transfer_DispatchControl::get_type_name(@)",
                            header: "Transfer_DispatchControl.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_DispatchControl::get_type_descriptor(@)",
    header: "Transfer_DispatchControl.hxx".}
proc dynamicType*(this: TransferDispatchControl): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_DispatchControl.hxx".}

























