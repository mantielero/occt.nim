##  Created on: 1998-03-24
##  Created by: # Andre LIEUTIER
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
  ../Standard/Standard_Handle, Plate_HArray1OfPinpointConstraint,
  ../TColStd/TColStd_HArray2OfReal, Plate_Array1OfPinpointConstraint,
  ../TColStd/TColStd_Array1OfReal, ../TColStd/TColStd_Array2OfReal,
  ../Standard/Standard_Integer, ../Standard/Standard_Real

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Plate_PinpointConstraint"
type
  Plate_LinearXYZConstraint* {.importcpp: "Plate_LinearXYZConstraint",
                              header: "Plate_LinearXYZConstraint.hxx", bycopy.} = object


proc constructPlate_LinearXYZConstraint*(): Plate_LinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc constructPlate_LinearXYZConstraint*(thePPC: Plate_Array1OfPinpointConstraint;
                                        theCoeff: TColStd_Array1OfReal): Plate_LinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc constructPlate_LinearXYZConstraint*(thePPC: Plate_Array1OfPinpointConstraint;
                                        theCoeff: TColStd_Array2OfReal): Plate_LinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc constructPlate_LinearXYZConstraint*(ColLen: Standard_Integer;
                                        RowLen: Standard_Integer): Plate_LinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc GetPPC*(this: Plate_LinearXYZConstraint): Plate_Array1OfPinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_LinearXYZConstraint.hxx".}
proc Coeff*(this: Plate_LinearXYZConstraint): TColStd_Array2OfReal {.noSideEffect,
    importcpp: "Coeff", header: "Plate_LinearXYZConstraint.hxx".}
proc SetPPC*(this: var Plate_LinearXYZConstraint; Index: Standard_Integer;
            Value: Plate_PinpointConstraint) {.importcpp: "SetPPC",
    header: "Plate_LinearXYZConstraint.hxx".}
proc SetCoeff*(this: var Plate_LinearXYZConstraint; Row: Standard_Integer;
              Col: Standard_Integer; Value: Standard_Real) {.importcpp: "SetCoeff",
    header: "Plate_LinearXYZConstraint.hxx".}