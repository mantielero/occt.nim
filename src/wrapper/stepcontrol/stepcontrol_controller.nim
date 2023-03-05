import ../tkxsbase/transfer/transfer_types
import ../tkernel/standard/standard_types
import ../tkxsbase/ifselect/ifselect_types
import ../tkbrep/topods/topods_types
import stepcontrol_types
import "../tkxsbase/interface/interface_types"
import ../tkernel/message/[message_types, message_progressrange]



##  Created on: 1995-02-20
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





proc newSTEPControlController*(): STEPControlController {.cdecl, constructor,
    importcpp: "STEPControl_Controller(@)", header: "STEPControl_Controller.hxx".}
proc newModel*(this: STEPControlController): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "NewModel", header: "STEPControl_Controller.hxx".}
proc customise*(this: var STEPControlController;
               ws: var Handle[XSControlWorkSession]) {.cdecl,
    importcpp: "Customise", header: "STEPControl_Controller.hxx".}
proc transferWriteShape*(this: STEPControlController; shape: TopoDS_Shape;
                        fp: Handle[TransferFinderProcess];
                        model: Handle[InterfaceInterfaceModel];
                        modetrans: cint = 0; theProgress: MessageProgressRange = newMessageProgressRange()): IFSelectReturnStatus {.
    noSideEffect, cdecl, importcpp: "TransferWriteShape", header: "STEPControl_Controller.hxx".}
proc init*(): bool {.cdecl, importcpp: "STEPControl_Controller::Init(@)",
                  header: "STEPControl_Controller.hxx".}


