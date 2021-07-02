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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Plate_PinpointConstraint"
discard "forward decl of gp_XYZ"
type
  PlateLinearScalarConstraint* {.importcpp: "Plate_LinearScalarConstraint",
                                header: "Plate_LinearScalarConstraint.hxx", bycopy.} = object


proc constructPlateLinearScalarConstraint*(): PlateLinearScalarConstraint {.
    constructor, importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlateLinearScalarConstraint*(thePPC1: PlatePinpointConstraint;
    theCoeff: GpXYZ): PlateLinearScalarConstraint {.constructor,
    importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlateLinearScalarConstraint*(
    thePPC: PlateArray1OfPinpointConstraint; theCoeff: TColgpArray1OfXYZ): PlateLinearScalarConstraint {.
    constructor, importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlateLinearScalarConstraint*(
    thePPC: PlateArray1OfPinpointConstraint; theCoeff: TColgpArray2OfXYZ): PlateLinearScalarConstraint {.
    constructor, importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc constructPlateLinearScalarConstraint*(colLen: StandardInteger;
    rowLen: StandardInteger): PlateLinearScalarConstraint {.constructor,
    importcpp: "Plate_LinearScalarConstraint(@)",
    header: "Plate_LinearScalarConstraint.hxx".}
proc getPPC*(this: PlateLinearScalarConstraint): PlateArray1OfPinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_LinearScalarConstraint.hxx".}
proc coeff*(this: PlateLinearScalarConstraint): TColgpArray2OfXYZ {.noSideEffect,
    importcpp: "Coeff", header: "Plate_LinearScalarConstraint.hxx".}
proc setPPC*(this: var PlateLinearScalarConstraint; index: StandardInteger;
            value: PlatePinpointConstraint) {.importcpp: "SetPPC",
    header: "Plate_LinearScalarConstraint.hxx".}
proc setCoeff*(this: var PlateLinearScalarConstraint; row: StandardInteger;
              col: StandardInteger; value: GpXYZ) {.importcpp: "SetCoeff",
    header: "Plate_LinearScalarConstraint.hxx".}

