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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../XSControl/XSControl_Controller, ../IFSelect/IFSelect_ReturnStatus,
  ../Standard/Standard_Integer

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of IGESControl_Controller"
discard "forward decl of IGESControl_Controller"
type
  Handle_IGESControl_Controller* = handle[IGESControl_Controller]

## ! Controller for IGES-5.1

type
  IGESControl_Controller* {.importcpp: "IGESControl_Controller",
                           header: "IGESControl_Controller.hxx", bycopy.} = object of XSControl_Controller ##
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


proc constructIGESControl_Controller*(modefnes: Standard_Boolean = Standard_False): IGESControl_Controller {.
    constructor, importcpp: "IGESControl_Controller(@)",
    header: "IGESControl_Controller.hxx".}
proc NewModel*(this: IGESControl_Controller): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "IGESControl_Controller.hxx".}
proc ActorRead*(this: IGESControl_Controller;
               model: handle[Interface_InterfaceModel]): handle[
    Transfer_ActorOfTransientProcess] {.noSideEffect, importcpp: "ActorRead",
                                       header: "IGESControl_Controller.hxx".}
proc TransferWriteShape*(this: IGESControl_Controller; shape: TopoDS_Shape;
                        FP: handle[Transfer_FinderProcess];
                        model: handle[Interface_InterfaceModel];
                        modetrans: Standard_Integer = 0; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    noSideEffect, importcpp: "TransferWriteShape",
    header: "IGESControl_Controller.hxx".}
proc Init*(): Standard_Boolean {.importcpp: "IGESControl_Controller::Init(@)",
                              header: "IGESControl_Controller.hxx".}
proc Customise*(this: var IGESControl_Controller;
               WS: var handle[XSControl_WorkSession]) {.importcpp: "Customise",
    header: "IGESControl_Controller.hxx".}
type
  IGESControl_Controllerbase_type* = XSControl_Controller

proc get_type_name*(): cstring {.importcpp: "IGESControl_Controller::get_type_name(@)",
                              header: "IGESControl_Controller.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESControl_Controller::get_type_descriptor(@)",
    header: "IGESControl_Controller.hxx".}
proc DynamicType*(this: IGESControl_Controller): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "IGESControl_Controller.hxx".}