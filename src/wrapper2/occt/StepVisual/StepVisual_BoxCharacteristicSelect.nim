##  Created on: 1995-12-06
##  Created by: Frederic MAUPAS
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

type
  StepVisual_BoxCharacteristicSelect* {.importcpp: "StepVisual_BoxCharacteristicSelect", header: "StepVisual_BoxCharacteristicSelect.hxx",
                                       bycopy.} = object


proc constructStepVisual_BoxCharacteristicSelect*(): StepVisual_BoxCharacteristicSelect {.
    constructor, importcpp: "StepVisual_BoxCharacteristicSelect(@)",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc TypeOfContent*(this: StepVisual_BoxCharacteristicSelect): Standard_Integer {.
    noSideEffect, importcpp: "TypeOfContent",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc SetTypeOfContent*(this: var StepVisual_BoxCharacteristicSelect;
                      aType: Standard_Integer) {.importcpp: "SetTypeOfContent",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc RealValue*(this: StepVisual_BoxCharacteristicSelect): Standard_Real {.
    noSideEffect, importcpp: "RealValue",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}
proc SetRealValue*(this: var StepVisual_BoxCharacteristicSelect;
                  aValue: Standard_Real) {.importcpp: "SetRealValue",
    header: "StepVisual_BoxCharacteristicSelect.hxx".}