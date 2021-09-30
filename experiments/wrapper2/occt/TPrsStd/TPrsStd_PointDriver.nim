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
discard "forward decl of TPrsStd_PointDriver"
discard "forward decl of TPrsStd_PointDriver"
type
  HandleC1C1* = Handle[TPrsStdPointDriver]

## ! An implementation of TPrsStd_Driver for points.

type
  TPrsStdPointDriver* {.importcpp: "TPrsStd_PointDriver",
                       header: "TPrsStd_PointDriver.hxx", bycopy.} = object of TPrsStdDriver ##
                                                                                      ## !
                                                                                      ## Constructs
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## point
                                                                                      ## driver.


proc constructTPrsStdPointDriver*(): TPrsStdPointDriver {.constructor,
    importcpp: "TPrsStd_PointDriver(@)", header: "TPrsStd_PointDriver.hxx".}
proc update*(this: var TPrsStdPointDriver; aLabel: TDF_Label;
            anAISObject: var Handle[AIS_InteractiveObject]): StandardBoolean {.
    importcpp: "Update", header: "TPrsStd_PointDriver.hxx".}
type
  TPrsStdPointDriverbaseType* = TPrsStdDriver

proc getTypeName*(): cstring {.importcpp: "TPrsStd_PointDriver::get_type_name(@)",
                            header: "TPrsStd_PointDriver.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TPrsStd_PointDriver::get_type_descriptor(@)",
    header: "TPrsStd_PointDriver.hxx".}
proc dynamicType*(this: TPrsStdPointDriver): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TPrsStd_PointDriver.hxx".}