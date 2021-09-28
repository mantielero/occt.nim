##  Created on: 1995-03-15
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
discard "forward decl of TopoDS_Shape"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of IGESControl_Controller"
discard "forward decl of IGESControl_Controller"
type
  HandleC1C1* = Handle[IGESControlController]

## ! Controller for IGES-5.1

type
  IGESControlController* {.importcpp: "IGESControl_Controller",
                          header: "IGESControl_Controller.hxx", bycopy.} = object of XSControlController ##
                                                                                                  ## !
                                                                                                  ## Initializes
                                                                                                  ## the
                                                                                                  ## use
                                                                                                  ## of
                                                                                                  ## IGES
                                                                                                  ## Norm
                                                                                                  ## (the
                                                                                                  ## first
                                                                                                  ## time)
                                                                                                  ## and
                                                                                                  ## returns
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## a
                                                                                                  ## Controller
                                                                                                  ## for
                                                                                                  ## IGES-5.1
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## If
                                                                                                  ## <modefnes>
                                                                                                  ## is
                                                                                                  ## True,
                                                                                                  ## sets
                                                                                                  ## it
                                                                                                  ## to
                                                                                                  ## internal
                                                                                                  ## FNES
                                                                                                  ## format


proc constructIGESControlController*(modefnes: bool = false): IGESControlController {.
    constructor, importcpp: "IGESControl_Controller(@)",
    header: "IGESControl_Controller.hxx".}
proc newModel*(this: IGESControlController): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "IGESControl_Controller.hxx".}
proc actorRead*(this: IGESControlController; model: Handle[InterfaceInterfaceModel]): Handle[
    TransferActorOfTransientProcess] {.noSideEffect, importcpp: "ActorRead",
                                      header: "IGESControl_Controller.hxx".}
proc transferWriteShape*(this: IGESControlController; shape: TopoDS_Shape;
                        fp: Handle[TransferFinderProcess];
                        model: Handle[InterfaceInterfaceModel];
                        modetrans: cint = 0; theProgress: MessageProgressRange = messageProgressRange()): IFSelectReturnStatus {.
    noSideEffect, importcpp: "TransferWriteShape",
    header: "IGESControl_Controller.hxx".}
proc init*(): bool {.importcpp: "IGESControl_Controller::Init(@)",
                  header: "IGESControl_Controller.hxx".}
proc customise*(this: var IGESControlController;
               ws: var Handle[XSControlWorkSession]) {.importcpp: "Customise",
    header: "IGESControl_Controller.hxx".}
type
  IGESControlControllerbaseType* = XSControlController

proc getTypeName*(): cstring {.importcpp: "IGESControl_Controller::get_type_name(@)",
                            header: "IGESControl_Controller.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESControl_Controller::get_type_descriptor(@)",
    header: "IGESControl_Controller.hxx".}
proc dynamicType*(this: IGESControlController): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESControl_Controller.hxx".}

























