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

discard "forward decl of StepData_StepModel"
discard "forward decl of StepData_Protocol"
discard "forward decl of IFSelect_ContextModif"
discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_CopyTool"
discard "forward decl of StepSelect_ModelModifier"
discard "forward decl of StepSelect_ModelModifier"
type
  HandleStepSelectModelModifier* = Handle[StepSelectModelModifier]
  StepSelectModelModifier* {.importcpp: "StepSelect_ModelModifier",
                            header: "StepSelect_ModelModifier.hxx", bycopy.} = object of IFSelectModifier ##
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


proc perform*(this: StepSelectModelModifier; ctx: var IFSelectContextModif;
             target: Handle[InterfaceInterfaceModel];
             protocol: Handle[InterfaceProtocol]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Perform", header: "StepSelect_ModelModifier.hxx".}
proc performProtocol*(this: StepSelectModelModifier; ctx: var IFSelectContextModif;
                     target: Handle[StepDataStepModel];
                     proto: Handle[StepDataProtocol]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "PerformProtocol",
    header: "StepSelect_ModelModifier.hxx".}
proc performing*(this: StepSelectModelModifier; ctx: var IFSelectContextModif;
                target: Handle[StepDataStepModel]; tc: var InterfaceCopyTool) {.
    noSideEffect, importcpp: "Performing", header: "StepSelect_ModelModifier.hxx".}
type
  StepSelectModelModifierbaseType* = IFSelectModifier

proc getTypeName*(): cstring {.importcpp: "StepSelect_ModelModifier::get_type_name(@)",
                            header: "StepSelect_ModelModifier.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepSelect_ModelModifier::get_type_descriptor(@)",
    header: "StepSelect_ModelModifier.hxx".}
proc dynamicType*(this: StepSelectModelModifier): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "StepSelect_ModelModifier.hxx".}














































