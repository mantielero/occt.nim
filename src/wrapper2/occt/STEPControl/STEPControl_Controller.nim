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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../XSControl/XSControl_Controller, ../IFSelect/IFSelect_ReturnStatus,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Transfer_ActorOfTransientProcess"
discard "forward decl of XSControl_WorkSession"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Transfer_FinderProcess"
discard "forward decl of STEPControl_Controller"
discard "forward decl of STEPControl_Controller"
type
  Handle_STEPControl_Controller* = handle[STEPControl_Controller]

## ! defines basic controller for STEP processor

type
  STEPControl_Controller* {.importcpp: "STEPControl_Controller",
                           header: "STEPControl_Controller.hxx", bycopy.} = object of XSControl_Controller ##
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


proc constructSTEPControl_Controller*(): STEPControl_Controller {.constructor,
    importcpp: "STEPControl_Controller(@)", header: "STEPControl_Controller.hxx".}
proc NewModel*(this: STEPControl_Controller): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "NewModel", header: "STEPControl_Controller.hxx".}
proc Customise*(this: var STEPControl_Controller;
               WS: var handle[XSControl_WorkSession]) {.importcpp: "Customise",
    header: "STEPControl_Controller.hxx".}
proc TransferWriteShape*(this: STEPControl_Controller; shape: TopoDS_Shape;
                        FP: handle[Transfer_FinderProcess];
                        model: handle[Interface_InterfaceModel];
                        modetrans: Standard_Integer = 0; theProgress: Message_ProgressRange = Message_ProgressRange()): IFSelect_ReturnStatus {.
    noSideEffect, importcpp: "TransferWriteShape",
    header: "STEPControl_Controller.hxx".}
proc Init*(): Standard_Boolean {.importcpp: "STEPControl_Controller::Init(@)",
                              header: "STEPControl_Controller.hxx".}
type
  STEPControl_Controllerbase_type* = XSControl_Controller

proc get_type_name*(): cstring {.importcpp: "STEPControl_Controller::get_type_name(@)",
                              header: "STEPControl_Controller.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "STEPControl_Controller::get_type_descriptor(@)",
    header: "STEPControl_Controller.hxx".}
proc DynamicType*(this: STEPControl_Controller): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPControl_Controller.hxx".}