##  Created on: 1998-05-06
##  Created by: Andre LIEUTIER
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard_Handle, Plate_LinearXYZConstraint,
  Plate_SequenceOfPinpointConstraint, ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Plate_LinearXYZConstraint"
type
  Plate_SampledCurveConstraint* {.importcpp: "Plate_SampledCurveConstraint",
                                 header: "Plate_SampledCurveConstraint.hxx",
                                 bycopy.} = object


proc constructPlate_SampledCurveConstraint*(
    SOPPC: Plate_SequenceOfPinpointConstraint; n: Standard_Integer): Plate_SampledCurveConstraint {.
    constructor, importcpp: "Plate_SampledCurveConstraint(@)",
    header: "Plate_SampledCurveConstraint.hxx".}
proc LXYZC*(this: Plate_SampledCurveConstraint): Plate_LinearXYZConstraint {.
    noSideEffect, importcpp: "LXYZC", header: "Plate_SampledCurveConstraint.hxx".}