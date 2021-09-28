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

discard "forward decl of Standard_DimensionMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Plate_PinpointConstraint"
type
  PlateLinearXYZConstraint* {.importcpp: "Plate_LinearXYZConstraint",
                             header: "Plate_LinearXYZConstraint.hxx", bycopy.} = object


proc constructPlateLinearXYZConstraint*(): PlateLinearXYZConstraint {.constructor,
    importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc constructPlateLinearXYZConstraint*(thePPC: PlateArray1OfPinpointConstraint;
                                       theCoeff: TColStdArray1OfReal): PlateLinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc constructPlateLinearXYZConstraint*(thePPC: PlateArray1OfPinpointConstraint;
                                       theCoeff: TColStdArray2OfReal): PlateLinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc constructPlateLinearXYZConstraint*(colLen: cint; rowLen: cint): PlateLinearXYZConstraint {.
    constructor, importcpp: "Plate_LinearXYZConstraint(@)",
    header: "Plate_LinearXYZConstraint.hxx".}
proc getPPC*(this: PlateLinearXYZConstraint): PlateArray1OfPinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_LinearXYZConstraint.hxx".}
proc coeff*(this: PlateLinearXYZConstraint): TColStdArray2OfReal {.noSideEffect,
    importcpp: "Coeff", header: "Plate_LinearXYZConstraint.hxx".}
proc setPPC*(this: var PlateLinearXYZConstraint; index: cint;
            value: PlatePinpointConstraint) {.importcpp: "SetPPC",
    header: "Plate_LinearXYZConstraint.hxx".}
proc setCoeff*(this: var PlateLinearXYZConstraint; row: cint; col: cint; value: cfloat) {.
    importcpp: "SetCoeff", header: "Plate_LinearXYZConstraint.hxx".}

























