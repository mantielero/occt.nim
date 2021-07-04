##  Created on: 2002-12-14
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
  StepFEA_HArray1OfDegreeOfFreedom, ../Standard/Standard_Transient

discard "forward decl of StepFEA_FreedomsList"
discard "forward decl of StepFEA_FreedomsList"
type
  Handle_StepFEA_FreedomsList* = handle[StepFEA_FreedomsList]

## ! Representation of STEP entity FreedomsList

type
  StepFEA_FreedomsList* {.importcpp: "StepFEA_FreedomsList",
                         header: "StepFEA_FreedomsList.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepFEA_FreedomsList*(): StepFEA_FreedomsList {.constructor,
    importcpp: "StepFEA_FreedomsList(@)", header: "StepFEA_FreedomsList.hxx".}
proc Init*(this: var StepFEA_FreedomsList;
          aFreedoms: handle[StepFEA_HArray1OfDegreeOfFreedom]) {.
    importcpp: "Init", header: "StepFEA_FreedomsList.hxx".}
proc Freedoms*(this: StepFEA_FreedomsList): handle[StepFEA_HArray1OfDegreeOfFreedom] {.
    noSideEffect, importcpp: "Freedoms", header: "StepFEA_FreedomsList.hxx".}
proc SetFreedoms*(this: var StepFEA_FreedomsList;
                 Freedoms: handle[StepFEA_HArray1OfDegreeOfFreedom]) {.
    importcpp: "SetFreedoms", header: "StepFEA_FreedomsList.hxx".}
type
  StepFEA_FreedomsListbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepFEA_FreedomsList::get_type_name(@)",
                              header: "StepFEA_FreedomsList.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepFEA_FreedomsList::get_type_descriptor(@)",
    header: "StepFEA_FreedomsList.hxx".}
proc DynamicType*(this: StepFEA_FreedomsList): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "StepFEA_FreedomsList.hxx".}