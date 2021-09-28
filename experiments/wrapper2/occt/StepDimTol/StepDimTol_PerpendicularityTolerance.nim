##  Created on: 2003-06-04
##  Created by: Galina KULIKOVA
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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

discard "forward decl of StepDimTol_PerpendicularityTolerance"
discard "forward decl of StepDimTol_PerpendicularityTolerance"
type
  HandleC1C1* = Handle[StepDimTolPerpendicularityTolerance]

## ! Representation of STEP entity PerpendicularityTolerance

type
  StepDimTolPerpendicularityTolerance* {.importcpp: "StepDimTol_PerpendicularityTolerance", header: "StepDimTol_PerpendicularityTolerance.hxx",
                                        bycopy.} = object of StepDimTolGeometricToleranceWithDatumReference ##
                                                                                                       ## !
                                                                                                       ## Empty
                                                                                                       ## constructor


proc constructStepDimTolPerpendicularityTolerance*(): StepDimTolPerpendicularityTolerance {.
    constructor, importcpp: "StepDimTol_PerpendicularityTolerance(@)",
    header: "StepDimTol_PerpendicularityTolerance.hxx".}
type
  StepDimTolPerpendicularityTolerancebaseType* = StepDimTolGeometricToleranceWithDatumReference

proc getTypeName*(): cstring {.importcpp: "StepDimTol_PerpendicularityTolerance::get_type_name(@)",
                            header: "StepDimTol_PerpendicularityTolerance.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "StepDimTol_PerpendicularityTolerance::get_type_descriptor(@)",
    header: "StepDimTol_PerpendicularityTolerance.hxx".}
proc dynamicType*(this: StepDimTolPerpendicularityTolerance): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_PerpendicularityTolerance.hxx".}

























