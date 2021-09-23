##  Created on: 1994-12-22
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../IFSelect/IFSelect_Modifier,
  ../Standard/Standard_Boolean

discard "forward decl of StepData_StepModel"
discard "forward decl of StepData_Protocol"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepSelect_ModelModifier"
discard "forward decl of StepSelect_ModelModifier"
type
  Handle_StepSelect_ModelModifier* = handle[StepSelect_ModelModifier]
  StepSelect_ModelModifier* {.importcpp: "StepSelect_ModelModifier",
                             header: "StepSelect_ModelModifier.hxx", bycopy.} = object of IFSelect_Modifier ##
                                                                                                     ## !
                                                                                                     ## The
                                                                                                     ## inherited
                                                                                                     ## Perform
                                                                                                     ## does
                                                                                                     ## the
                                                                                                     ## required
                                                                                                     ## cast
                                                                                                     ## (and
                                                                                                     ## refuses
                                                                                                     ## to
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## go
                                                                                                     ## further
                                                                                                     ## if
                                                                                                     ## cast
                                                                                                     ## has
                                                                                                     ## failed)
                                                                                                     ## then
                                                                                                     ## calls
                                                                                                     ## the
                                                                                                     ## instantiated
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Performing
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Calls
                                                                                                     ## inherited
                                                                                                     ## Initialize,
                                                                                                     ## transmits
                                                                                                     ## to
                                                                                                     ## it
                                                                                                     ## the
                                                                                                     ## information
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## <maychangegraph>


proc Perform*(this: StepSelect_ModelModifier; ctx: var IFSelect_ContextModif;
             target: handle[Interface_InterfaceModel];
             protocol: handle[Interface_Protocol]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Perform", header: "StepSelect_ModelModifier.hxx".}
proc PerformProtocol*(this: StepSelect_ModelModifier;
                     ctx: var IFSelect_ContextModif;
                     target: handle[StepData_StepModel];
                     proto: handle[StepData_Protocol]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "PerformProtocol",
    header: "StepSelect_ModelModifier.hxx".}
proc Performing*(this: StepSelect_ModelModifier; ctx: var IFSelect_ContextModif;
                target: handle[StepData_StepModel]; TC: var Interface_CopyTool) {.
    noSideEffect, importcpp: "Performing", header: "StepSelect_ModelModifier.hxx".}
type
  StepSelect_ModelModifierbase_type* = IFSelect_Modifier

proc get_type_name*(): cstring {.importcpp: "StepSelect_ModelModifier::get_type_name(@)",
                              header: "StepSelect_ModelModifier.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepSelect_ModelModifier::get_type_descriptor(@)",
    header: "StepSelect_ModelModifier.hxx".}
proc DynamicType*(this: StepSelect_ModelModifier): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepSelect_ModelModifier.hxx".}