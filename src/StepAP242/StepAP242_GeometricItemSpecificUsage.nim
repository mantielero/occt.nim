##  Created on: 2015-07-10
##  Created by: Irina KRYLOVA
##  Copyright (c) 2015 OPEN CASCADE SAS
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

discard "forward decl of StepAP242_GeometricItemSpecificUsage"
discard "forward decl of StepAP242_GeometricItemSpecificUsage"
type
  HandleC1C1* = Handle[StepAP242GeometricItemSpecificUsage]

## ! Added for Dimensional Tolerances

type
  StepAP242GeometricItemSpecificUsage* {.importcpp: "StepAP242_GeometricItemSpecificUsage", header: "StepAP242_GeometricItemSpecificUsage.hxx",
                                        bycopy.} = object of StepAP242ItemIdentifiedRepresentationUsage


proc constructStepAP242GeometricItemSpecificUsage*(): StepAP242GeometricItemSpecificUsage {.
    constructor, importcpp: "StepAP242_GeometricItemSpecificUsage(@)",
    header: "StepAP242_GeometricItemSpecificUsage.hxx".}
type
  StepAP242GeometricItemSpecificUsagebaseType* = StepAP242ItemIdentifiedRepresentationUsage

proc getTypeName*(): cstring {.importcpp: "StepAP242_GeometricItemSpecificUsage::get_type_name(@)",
                            header: "StepAP242_GeometricItemSpecificUsage.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepAP242_GeometricItemSpecificUsage::get_type_descriptor(@)",
    header: "StepAP242_GeometricItemSpecificUsage.hxx".}
proc dynamicType*(this: StepAP242GeometricItemSpecificUsage): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepAP242_GeometricItemSpecificUsage.hxx".}

























