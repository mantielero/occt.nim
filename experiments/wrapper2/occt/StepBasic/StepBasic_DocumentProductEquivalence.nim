##  Created on: 2003-01-28
##  Created by: data exchange team
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  StepBasic_DocumentProductAssociation

discard "forward decl of StepBasic_DocumentProductEquivalence"
discard "forward decl of StepBasic_DocumentProductEquivalence"
type
  Handle_StepBasic_DocumentProductEquivalence* = handle[
      StepBasic_DocumentProductEquivalence]

## ! Representation of STEP entity DocumentProductEquivalence

type
  StepBasic_DocumentProductEquivalence* {.
      importcpp: "StepBasic_DocumentProductEquivalence",
      header: "StepBasic_DocumentProductEquivalence.hxx", bycopy.} = object of StepBasic_DocumentProductAssociation ##
                                                                                                             ## !
                                                                                                             ## Empty
                                                                                                             ## constructor


proc constructStepBasic_DocumentProductEquivalence*(): StepBasic_DocumentProductEquivalence {.
    constructor, importcpp: "StepBasic_DocumentProductEquivalence(@)",
    header: "StepBasic_DocumentProductEquivalence.hxx".}
type
  StepBasic_DocumentProductEquivalencebase_type* = StepBasic_DocumentProductAssociation

proc get_type_name*(): cstring {.importcpp: "StepBasic_DocumentProductEquivalence::get_type_name(@)", header: "StepBasic_DocumentProductEquivalence.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_DocumentProductEquivalence::get_type_descriptor(@)",
    header: "StepBasic_DocumentProductEquivalence.hxx".}
proc DynamicType*(this: StepBasic_DocumentProductEquivalence): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepBasic_DocumentProductEquivalence.hxx".}