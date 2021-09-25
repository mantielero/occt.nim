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

discard "forward decl of TDF_Label"
discard "forward decl of AIS_InteractiveObject"
discard "forward decl of TPrsStd_ConstraintDriver"
discard "forward decl of TPrsStd_ConstraintDriver"
type
  HandleTPrsStdConstraintDriver* = Handle[TPrsStdConstraintDriver]

## ! An implementation of TPrsStd_Driver for constraints.

type
  TPrsStdConstraintDriver* {.importcpp: "TPrsStd_ConstraintDriver",
                            header: "TPrsStd_ConstraintDriver.hxx", bycopy.} = object of TPrsStdDriver ##
                                                                                                ## !
                                                                                                ## Constructs
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## constraint
                                                                                                ## driver.


proc constructTPrsStdConstraintDriver*(): TPrsStdConstraintDriver {.constructor,
    importcpp: "TPrsStd_ConstraintDriver(@)",
    header: "TPrsStd_ConstraintDriver.hxx".}
proc update*(this: var TPrsStdConstraintDriver; aLabel: TDF_Label;
            anAISObject: var Handle[AIS_InteractiveObject]): bool {.
    importcpp: "Update", header: "TPrsStd_ConstraintDriver.hxx".}
type
  TPrsStdConstraintDriverbaseType* = TPrsStdDriver

proc getTypeName*(): cstring {.importcpp: "TPrsStd_ConstraintDriver::get_type_name(@)",
                            header: "TPrsStd_ConstraintDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TPrsStd_ConstraintDriver::get_type_descriptor(@)",
    header: "TPrsStd_ConstraintDriver.hxx".}
proc dynamicType*(this: TPrsStdConstraintDriver): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TPrsStd_ConstraintDriver.hxx".}
