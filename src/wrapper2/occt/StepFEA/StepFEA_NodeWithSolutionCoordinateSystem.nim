##  Created on: 2002-12-12
##  Created by: data exchange team
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, StepFEA_Node

discard "forward decl of StepFEA_NodeWithSolutionCoordinateSystem"
discard "forward decl of StepFEA_NodeWithSolutionCoordinateSystem"
type
  Handle_StepFEA_NodeWithSolutionCoordinateSystem* = handle[
      StepFEA_NodeWithSolutionCoordinateSystem]

## ! Representation of STEP entity NodeWithSolutionCoordinateSystem

type
  StepFEA_NodeWithSolutionCoordinateSystem* {.
      importcpp: "StepFEA_NodeWithSolutionCoordinateSystem",
      header: "StepFEA_NodeWithSolutionCoordinateSystem.hxx", bycopy.} = object of StepFEA_Node ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructStepFEA_NodeWithSolutionCoordinateSystem*(): StepFEA_NodeWithSolutionCoordinateSystem {.
    constructor, importcpp: "StepFEA_NodeWithSolutionCoordinateSystem(@)",
    header: "StepFEA_NodeWithSolutionCoordinateSystem.hxx".}
type
  StepFEA_NodeWithSolutionCoordinateSystembase_type* = StepFEA_Node

proc get_type_name*(): cstring {.importcpp: "StepFEA_NodeWithSolutionCoordinateSystem::get_type_name(@)", header: "StepFEA_NodeWithSolutionCoordinateSystem.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.importcpp: "StepFEA_NodeWithSolutionCoordinateSystem::get_type_descriptor(@)",
    header: "StepFEA_NodeWithSolutionCoordinateSystem.hxx".}
proc DynamicType*(this: StepFEA_NodeWithSolutionCoordinateSystem): handle[
    Standard_Type] {.noSideEffect, importcpp: "DynamicType",
                    header: "StepFEA_NodeWithSolutionCoordinateSystem.hxx".}