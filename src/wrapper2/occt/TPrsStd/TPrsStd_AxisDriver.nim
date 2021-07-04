##  Created on: 1997-08-01
##  Created by: SMO
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
  ../Standard/Standard, ../Standard/Standard_Type, TPrsStd_Driver,
  ../Standard/Standard_Boolean

discard "forward decl of TDF_Label"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of TPrsStd_AxisDriver"
discard "forward decl of TPrsStd_AxisDriver"
type
  Handle_TPrsStd_AxisDriver* = handle[TPrsStd_AxisDriver]

## ! An implementation of TPrsStd_Driver for axes.

type
  TPrsStd_AxisDriver* {.importcpp: "TPrsStd_AxisDriver",
                       header: "TPrsStd_AxisDriver.hxx", bycopy.} = object of TPrsStd_Driver ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## axis
                                                                                      ## driver.


proc constructTPrsStd_AxisDriver*(): TPrsStd_AxisDriver {.constructor,
    importcpp: "TPrsStd_AxisDriver(@)", header: "TPrsStd_AxisDriver.hxx".}
proc Update*(this: var TPrsStd_AxisDriver; aLabel: TDF_Label;
            anAISObject: var handle[AIS_InteractiveObject]): Standard_Boolean {.
    importcpp: "Update", header: "TPrsStd_AxisDriver.hxx".}
type
  TPrsStd_AxisDriverbase_type* = TPrsStd_Driver

proc get_type_name*(): cstring {.importcpp: "TPrsStd_AxisDriver::get_type_name(@)",
                              header: "TPrsStd_AxisDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TPrsStd_AxisDriver::get_type_descriptor(@)",
    header: "TPrsStd_AxisDriver.hxx".}
proc DynamicType*(this: TPrsStd_AxisDriver): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_AxisDriver.hxx".}