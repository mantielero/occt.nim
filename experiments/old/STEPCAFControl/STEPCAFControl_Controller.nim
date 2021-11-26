##  Created on: 2000-10-05
##  Created by: Andrey BETENEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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

discard "forward decl of STEPCAFControl_Controller"
discard "forward decl of STEPCAFControl_Controller"
type
  HandleC1C1* = Handle[STEPCAFControlController]

## ! Extends Controller from STEPControl in order to provide
## ! ActorWrite adapted for writing assemblies from DECAF
## ! Note that ActorRead from STEPControl is used for reading
## ! (inherited automatically)

type
  STEPCAFControlController* {.importcpp: "STEPCAFControl_Controller",
                             header: "STEPCAFControl_Controller.hxx", bycopy.} = object of STEPControlController ##
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


proc constructSTEPCAFControlController*(): STEPCAFControlController {.constructor,
    importcpp: "STEPCAFControl_Controller(@)",
    header: "STEPCAFControl_Controller.hxx".}
proc init*(): StandardBoolean {.importcpp: "STEPCAFControl_Controller::Init(@)",
                             header: "STEPCAFControl_Controller.hxx".}
type
  STEPCAFControlControllerbaseType* = STEPControlController

proc getTypeName*(): cstring {.importcpp: "STEPCAFControl_Controller::get_type_name(@)",
                            header: "STEPCAFControl_Controller.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "STEPCAFControl_Controller::get_type_descriptor(@)",
    header: "STEPCAFControl_Controller.hxx".}
proc dynamicType*(this: STEPCAFControlController): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "STEPCAFControl_Controller.hxx".}