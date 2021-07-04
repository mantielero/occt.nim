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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, StepData_HArray1OfField, StepData_FieldList,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StepData_Field"
type
  StepData_FieldListD* {.importcpp: "StepData_FieldListD",
                        header: "StepData_FieldListD.hxx", bycopy.} = object of StepData_FieldList ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## a
                                                                                            ## FieldListD
                                                                                            ## of
                                                                                            ## <nb>
                                                                                            ## Fields


proc constructStepData_FieldListD*(nb: Standard_Integer): StepData_FieldListD {.
    constructor, importcpp: "StepData_FieldListD(@)",
    header: "StepData_FieldListD.hxx".}
proc SetNb*(this: var StepData_FieldListD; nb: Standard_Integer) {.importcpp: "SetNb",
    header: "StepData_FieldListD.hxx".}
proc NbFields*(this: StepData_FieldListD): Standard_Integer {.noSideEffect,
    importcpp: "NbFields", header: "StepData_FieldListD.hxx".}
proc Field*(this: StepData_FieldListD; num: Standard_Integer): StepData_Field {.
    noSideEffect, importcpp: "Field", header: "StepData_FieldListD.hxx".}
proc CField*(this: var StepData_FieldListD; num: Standard_Integer): var StepData_Field {.
    importcpp: "CField", header: "StepData_FieldListD.hxx".}