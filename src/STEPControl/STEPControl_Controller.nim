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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of STEPControl_Controller"
discard "forward decl of STEPControl_Controller"

type
  STEPControlController* {.importcpp: "STEPControl_Controller",
                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## the
                                                                                                  ## use
                                                                                                  ## of
                                                                                                  ## STEP
                                                                                                  ## Norm
                                                                                                  ## (the
                                                                                                  ## first
                                                                                                  ## time)
                                                                                                  ## and
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## returns
                                                                                                  ## a
                                                                                                  ## Controller


type
  HandleSTEPControlController* = Handle[STEPControlController]

## ! defines basic controller for STEP processor

type
  STEPControlControllerbaseType* = XSControlController
  
proc constructSTEPControlController*(): STEPControlController {.constructor,
    importcpp: "STEPControl_Controller(@)", header: "STEPControl_Controller.hxx".}
proc newModel*(this: STEPControlController): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "STEPControl_Controller.hxx".}
proc customise*(this: var STEPControlController;
               ws: var Handle[XSControlWorkSession]) {.importcpp: "Customise",
    header: "STEPControl_Controller.hxx".}
#[ proc transferWriteShape*(this: STEPControlController; shape: TopoDS_Shape;
                        fp: Handle[TransferFinderProcess];
                        model: Handle[InterfaceInterfaceModel];
                        modetrans: int = 0; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    noSideEffect, importcpp: "TransferWriteShape",
    header: "STEPControl_Controller.hxx".} ]#
proc init*(): StandardBoolean {.importcpp: "STEPControl_Controller::Init(@)",
                             header: "STEPControl_Controller.hxx".}


#[ proc getTypeName*(): cstring {.importcpp: "STEPControl_Controller::get_type_name(@)",
                            header: "STEPControl_Controller.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPControl_Controller::get_type_descriptor(@)",
    header: "STEPControl_Controller.hxx".}
proc dynamicType*(this: STEPControlController): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "STEPControl_Controller.hxx".} ]#