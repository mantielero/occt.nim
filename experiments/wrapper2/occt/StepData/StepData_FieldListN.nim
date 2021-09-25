##  Created on: 1997-04-01
##  Created by: Christian CAILLET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StepData_Field"
type
  StepDataFieldListN* {.importcpp: "StepData_FieldListN",
                       header: "StepData_FieldListN.hxx", bycopy.} = object of StepDataFieldList ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## FieldListN
                                                                                          ## of
                                                                                          ## <nb>
                                                                                          ## Fields


proc constructStepDataFieldListN*(nb: int): StepDataFieldListN {.constructor,
    importcpp: "StepData_FieldListN(@)", header: "StepData_FieldListN.hxx".}
proc nbFields*(this: StepDataFieldListN): int {.noSideEffect, importcpp: "NbFields",
    header: "StepData_FieldListN.hxx".}
proc field*(this: StepDataFieldListN; num: int): StepDataField {.noSideEffect,
    importcpp: "Field", header: "StepData_FieldListN.hxx".}
proc cField*(this: var StepDataFieldListN; num: int): var StepDataField {.
    importcpp: "CField", header: "StepData_FieldListN.hxx".}
