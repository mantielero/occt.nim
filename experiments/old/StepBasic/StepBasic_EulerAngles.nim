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

discard "forward decl of StepBasic_EulerAngles"
discard "forward decl of StepBasic_EulerAngles"
type
  HandleC1C1* = Handle[StepBasicEulerAngles]

## ! Representation of STEP entity EulerAngles

type
  StepBasicEulerAngles* {.importcpp: "StepBasic_EulerAngles",
                         header: "StepBasic_EulerAngles.hxx", bycopy.} = object of StandardTransient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor


proc constructStepBasicEulerAngles*(): StepBasicEulerAngles {.constructor,
    importcpp: "StepBasic_EulerAngles(@)", header: "StepBasic_EulerAngles.hxx".}
proc init*(this: var StepBasicEulerAngles; aAngles: Handle[TColStdHArray1OfReal]) {.
    importcpp: "Init", header: "StepBasic_EulerAngles.hxx".}
proc angles*(this: StepBasicEulerAngles): Handle[TColStdHArray1OfReal] {.
    noSideEffect, importcpp: "Angles", header: "StepBasic_EulerAngles.hxx".}
proc setAngles*(this: var StepBasicEulerAngles; angles: Handle[TColStdHArray1OfReal]) {.
    importcpp: "SetAngles", header: "StepBasic_EulerAngles.hxx".}
type
  StepBasicEulerAnglesbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "StepBasic_EulerAngles::get_type_name(@)",
                            header: "StepBasic_EulerAngles.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepBasic_EulerAngles::get_type_descriptor(@)",
    header: "StepBasic_EulerAngles.hxx".}
proc dynamicType*(this: StepBasicEulerAngles): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "StepBasic_EulerAngles.hxx".}