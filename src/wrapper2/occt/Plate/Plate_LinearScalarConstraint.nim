##  Created on: 1998-03-23
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
  ../TColgp/TColgp_HArray2OfXYZ, Plate_Array1OfPinpointConstraint,
  ../TColgp/TColgp_Array1OfXYZ, ../TColgp/TColgp_Array2OfXYZ,
  ../Standard/Standard_Integer

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Plate_PinpointConstraint"
discard "forward decl of gp_XYZ"
type
  Plate_LinearScalarConstraint* {.importcpp: "Plate_LinearScalarConstraint",
                                 header: "Plate_LinearScalarConstraint.hxx",
                                 bycopy.} = object


proc constructPlate_LinearScalarConstraint*(): Plate_LinearScalarConstraint {.
    constructor, importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlate_LinearScalarConstraint*(thePPC1: Plate_PinpointConstraint;
    theCoeff: gp_XYZ): Plate_LinearScalarConstraint {.constructor,
    importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlate_LinearScalarConstraint*(
    thePPC: Plate_Array1OfPinpointConstraint; theCoeff: TColgp_Array1OfXYZ): Plate_LinearScalarConstraint {.
    constructor, importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlate_LinearScalarConstraint*(
    thePPC: Plate_Array1OfPinpointConstraint; theCoeff: TColgp_Array2OfXYZ): Plate_LinearScalarConstraint {.
    constructor, importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlate_LinearScalarConstraint*(ColLen: Standard_Integer;
    RowLen: Standard_Integer): Plate_LinearScalarConstraint {.constructor,
    importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc GetPPC*(this: Plate_LinearScalarConstraint): Plate_Array1OfPinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_LinearScalarConstraint.hxx".}
proc Coeff*(this: Plate_LinearScalarConstraint): TColgp_Array2OfXYZ {.noSideEffect,
    importcpp: "Coeff", header: "Plate_LinearScalarConstraint.hxx".}
proc SetPPC*(this: var Plate_LinearScalarConstraint; Index: Standard_Integer;
            Value: Plate_PinpointConstraint) {.importcpp: "SetPPC",
    header: "Plate_LinearScalarConstraint.hxx".}
proc SetCoeff*(this: var Plate_LinearScalarConstraint; Row: Standard_Integer;
              Col: Standard_Integer; Value: gp_XYZ) {.importcpp: "SetCoeff",
    header: "Plate_LinearScalarConstraint.hxx".}