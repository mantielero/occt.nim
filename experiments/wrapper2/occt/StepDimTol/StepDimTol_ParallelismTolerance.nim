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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  StepDimTol_GeometricToleranceWithDatumReference

discard "forward decl of StepDimTol_ParallelismTolerance"
discard "forward decl of StepDimTol_ParallelismTolerance"
type
  Handle_StepDimTol_ParallelismTolerance* = handle[StepDimTol_ParallelismTolerance]

## ! Representation of STEP entity ParallelismTolerance

type
  StepDimTol_ParallelismTolerance* {.importcpp: "StepDimTol_ParallelismTolerance", header: "StepDimTol_ParallelismTolerance.hxx",
                                    bycopy.} = object of StepDimTol_GeometricToleranceWithDatumReference ##
                                                                                                    ## !
                                                                                                    ## Empty
                                                                                                    ## constructor


proc constructStepDimTol_ParallelismTolerance*(): StepDimTol_ParallelismTolerance {.
    constructor, importcpp: "StepDimTol_ParallelismTolerance(@)",
    header: "StepDimTol_ParallelismTolerance.hxx".}
type
  StepDimTol_ParallelismTolerancebase_type* = StepDimTol_GeometricToleranceWithDatumReference

proc get_type_name*(): cstring {.importcpp: "StepDimTol_ParallelismTolerance::get_type_name(@)",
                              header: "StepDimTol_ParallelismTolerance.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "StepDimTol_ParallelismTolerance::get_type_descriptor(@)",
    header: "StepDimTol_ParallelismTolerance.hxx".}
proc DynamicType*(this: StepDimTol_ParallelismTolerance): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "StepDimTol_ParallelismTolerance.hxx".}