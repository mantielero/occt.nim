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
  ../TColStd/TColStd_HArray1OfReal, ../Standard/Standard_Transient

discard "forward decl of StepBasic_EulerAngles"
discard "forward decl of StepBasic_EulerAngles"
type
  Handle_StepBasic_EulerAngles* = handle[StepBasic_EulerAngles]

## ! Representation of STEP entity EulerAngles

type
  StepBasic_EulerAngles* {.importcpp: "StepBasic_EulerAngles",
                          header: "StepBasic_EulerAngles.hxx", bycopy.} = object of Standard_Transient ##
                                                                                                ## !
                                                                                                ## Empty
                                                                                                ## constructor


proc constructStepBasic_EulerAngles*(): StepBasic_EulerAngles {.constructor,
    importcpp: "StepBasic_EulerAngles(@)", header: "StepBasic_EulerAngles.hxx".}
proc Init*(this: var StepBasic_EulerAngles; aAngles: handle[TColStd_HArray1OfReal]) {.
    importcpp: "Init", header: "StepBasic_EulerAngles.hxx".}
proc Angles*(this: StepBasic_EulerAngles): handle[TColStd_HArray1OfReal] {.
    noSideEffect, importcpp: "Angles", header: "StepBasic_EulerAngles.hxx".}
proc SetAngles*(this: var StepBasic_EulerAngles;
               Angles: handle[TColStd_HArray1OfReal]) {.importcpp: "SetAngles",
    header: "StepBasic_EulerAngles.hxx".}
type
  StepBasic_EulerAnglesbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "StepBasic_EulerAngles::get_type_name(@)",
                              header: "StepBasic_EulerAngles.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepBasic_EulerAngles::get_type_descriptor(@)",
    header: "StepBasic_EulerAngles.hxx".}
proc DynamicType*(this: StepBasic_EulerAngles): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "StepBasic_EulerAngles.hxx".}