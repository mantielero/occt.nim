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
discard "forward decl of TPrsStd_NamedShapeDriver"
discard "forward decl of TPrsStd_NamedShapeDriver"
type
  Handle_TPrsStd_NamedShapeDriver* = handle[TPrsStd_NamedShapeDriver]

## ! An implementation of TPrsStd_Driver for named shapes.

type
  TPrsStd_NamedShapeDriver* {.importcpp: "TPrsStd_NamedShapeDriver",
                             header: "TPrsStd_NamedShapeDriver.hxx", bycopy.} = object of TPrsStd_Driver ##
                                                                                                  ## !
                                                                                                  ## Constructs
                                                                                                  ## an
                                                                                                  ## empty
                                                                                                  ## named
                                                                                                  ## shape
                                                                                                  ## driver.


proc constructTPrsStd_NamedShapeDriver*(): TPrsStd_NamedShapeDriver {.constructor,
    importcpp: "TPrsStd_NamedShapeDriver(@)",
    header: "TPrsStd_NamedShapeDriver.hxx".}
proc Update*(this: var TPrsStd_NamedShapeDriver; aLabel: TDF_Label;
            anAISObject: var handle[AIS_InteractiveObject]): Standard_Boolean {.
    importcpp: "Update", header: "TPrsStd_NamedShapeDriver.hxx".}
type
  TPrsStd_NamedShapeDriverbase_type* = TPrsStd_Driver

proc get_type_name*(): cstring {.importcpp: "TPrsStd_NamedShapeDriver::get_type_name(@)",
                              header: "TPrsStd_NamedShapeDriver.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TPrsStd_NamedShapeDriver::get_type_descriptor(@)",
    header: "TPrsStd_NamedShapeDriver.hxx".}
proc DynamicType*(this: TPrsStd_NamedShapeDriver): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TPrsStd_NamedShapeDriver.hxx".}