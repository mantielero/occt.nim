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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../Interface/Interface_CopyControl, ../Standard/Standard_Boolean

discard "forward decl of Transfer_TransientProcess"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_DispatchControl"
discard "forward decl of Transfer_DispatchControl"
type
  Handle_Transfer_DispatchControl* = handle[Transfer_DispatchControl]

## ! This is an auxiliary class for TransferDispatch, which allows
## ! to record simple copies, as CopyControl from Interface, but
## ! based on a TransientProcess. Hence, it allows in addition
## ! more actions (such as recording results of adaptations)

type
  Transfer_DispatchControl* {.importcpp: "Transfer_DispatchControl",
                             header: "Transfer_DispatchControl.hxx", bycopy.} = object of Interface_CopyControl ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## the
                                                                                                         ## DispatchControl,
                                                                                                         ## ready
                                                                                                         ## for
                                                                                                         ## use


proc constructTransfer_DispatchControl*(model: handle[Interface_InterfaceModel];
                                       TP: handle[Transfer_TransientProcess]): Transfer_DispatchControl {.
    constructor, importcpp: "Transfer_DispatchControl(@)",
    header: "Transfer_DispatchControl.hxx".}
proc TransientProcess*(this: Transfer_DispatchControl): handle[
    Transfer_TransientProcess] {.noSideEffect, importcpp: "TransientProcess",
                                header: "Transfer_DispatchControl.hxx".}
proc StartingModel*(this: Transfer_DispatchControl): handle[
    Interface_InterfaceModel] {.noSideEffect, importcpp: "StartingModel",
                               header: "Transfer_DispatchControl.hxx".}
proc Clear*(this: var Transfer_DispatchControl) {.importcpp: "Clear",
    header: "Transfer_DispatchControl.hxx".}
proc Bind*(this: var Transfer_DispatchControl; ent: handle[Standard_Transient];
          res: handle[Standard_Transient]) {.importcpp: "Bind",
    header: "Transfer_DispatchControl.hxx".}
proc Search*(this: Transfer_DispatchControl; ent: handle[Standard_Transient];
            res: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "Search", header: "Transfer_DispatchControl.hxx".}
type
  Transfer_DispatchControlbase_type* = Interface_CopyControl

proc get_type_name*(): cstring {.importcpp: "Transfer_DispatchControl::get_type_name(@)",
                              header: "Transfer_DispatchControl.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_DispatchControl::get_type_descriptor(@)",
    header: "Transfer_DispatchControl.hxx".}
proc DynamicType*(this: Transfer_DispatchControl): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_DispatchControl.hxx".}