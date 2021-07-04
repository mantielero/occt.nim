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
  ../Standard/Standard, ../Standard/Standard_Type,
  StepFEA_HArray1OfElementRepresentation, StepFEA_FeaGroup

discard "forward decl of TCollection_HAsciiString"
discard "forward decl of StepFEA_FeaModel"
discard "forward decl of StepFEA_ElementGroup"
discard "forward decl of StepFEA_ElementGroup"
type
  Handle_StepFEA_ElementGroup* = handle[StepFEA_ElementGroup]

## ! Representation of STEP entity ElementGroup

type
  StepFEA_ElementGroup* {.importcpp: "StepFEA_ElementGroup",
                         header: "StepFEA_ElementGroup.hxx", bycopy.} = object of StepFEA_FeaGroup ##
                                                                                            ## !
                                                                                            ## Empty
                                                                                            ## constructor


proc constructStepFEA_ElementGroup*(): StepFEA_ElementGroup {.constructor,
    importcpp: "StepFEA_ElementGroup(@)", header: "StepFEA_ElementGroup.hxx".}
proc Init*(this: var StepFEA_ElementGroup;
          aGroup_Name: handle[TCollection_HAsciiString];
          aGroup_Description: handle[TCollection_HAsciiString];
          aFeaGroup_ModelRef: handle[StepFEA_FeaModel];
          aElements: handle[StepFEA_HArray1OfElementRepresentation]) {.
    importcpp: "Init", header: "StepFEA_ElementGroup.hxx".}
proc Elements*(this: StepFEA_ElementGroup): handle[
    StepFEA_HArray1OfElementRepresentation] {.noSideEffect, importcpp: "Elements",
    header: "StepFEA_ElementGroup.hxx".}
proc SetElements*(this: var StepFEA_ElementGroup;
                 Elements: handle[StepFEA_HArray1OfElementRepresentation]) {.
    importcpp: "SetElements", header: "StepFEA_ElementGroup.hxx".}
type
  StepFEA_ElementGroupbase_type* = StepFEA_FeaGroup

proc get_type_name*(): cstring {.importcpp: "StepFEA_ElementGroup::get_type_name(@)",
                              header: "StepFEA_ElementGroup.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_ElementGroup::get_type_descriptor(@)",
    header: "StepFEA_ElementGroup.hxx".}
proc DynamicType*(this: StepFEA_ElementGroup): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_ElementGroup.hxx".}