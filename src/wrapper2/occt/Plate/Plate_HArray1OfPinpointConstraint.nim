##  Created on: 1995-10-17
##  Created by: Andre LIEUTIER
##  Copyright (c) 1995-1999 Matra Datavision
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

type
  PlateHArray1OfPinpointConstraint* {.importcpp: "Plate_HArray1OfPinpointConstraint", header: "Plate_HArray1OfPinpointConstraint.hxx",
                                     bycopy.} = object of PlateArray1OfPinpointConstraint


proc constructPlateHArray1OfPinpointConstraint*(theLower: StandardInteger;
    theUpper: StandardInteger): PlateHArray1OfPinpointConstraint {.constructor,
    importcpp: "Plate_HArray1OfPinpointConstraint(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc constructPlateHArray1OfPinpointConstraint*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): PlateHArray1OfPinpointConstraint {.
    constructor, importcpp: "Plate_HArray1OfPinpointConstraint(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc constructPlateHArray1OfPinpointConstraint*(
    theOther: PlateArray1OfPinpointConstraint): PlateHArray1OfPinpointConstraint {.
    constructor, importcpp: "Plate_HArray1OfPinpointConstraint(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc array1*(this: PlateHArray1OfPinpointConstraint): PlateArray1OfPinpointConstraint {.
    noSideEffect, importcpp: "Array1",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc changeArray1*(this: var PlateHArray1OfPinpointConstraint): var PlateArray1OfPinpointConstraint {.
    importcpp: "ChangeArray1", header: "Plate_HArray1OfPinpointConstraint.hxx".}
type
  PlateHArray1OfPinpointConstraintbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Plate_HArray1OfPinpointConstraint::get_type_name(@)",
                            header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Plate_HArray1OfPinpointConstraint::get_type_descriptor(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc dynamicType*(this: PlateHArray1OfPinpointConstraint): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}

