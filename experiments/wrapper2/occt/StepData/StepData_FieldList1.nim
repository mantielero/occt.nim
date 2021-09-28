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
  StepDataFieldList1* {.importcpp: "StepData_FieldList1",
                       header: "StepData_FieldList1.hxx", bycopy.} = object of StepDataFieldList ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## FieldList
                                                                                          ## of
                                                                                          ## 1
                                                                                          ## Field


proc constructStepDataFieldList1*(): StepDataFieldList1 {.constructor,
    importcpp: "StepData_FieldList1(@)", header: "StepData_FieldList1.hxx".}
proc nbFields*(this: StepDataFieldList1): cint {.noSideEffect, importcpp: "NbFields",
    header: "StepData_FieldList1.hxx".}
proc field*(this: StepDataFieldList1; num: cint): StepDataField {.noSideEffect,
    importcpp: "Field", header: "StepData_FieldList1.hxx".}
proc cField*(this: var StepDataFieldList1; num: cint): var StepDataField {.
    importcpp: "CField", header: "StepData_FieldList1.hxx".}

























