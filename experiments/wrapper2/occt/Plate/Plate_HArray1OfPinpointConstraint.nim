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

import
  Plate_PinpointConstraint, Plate_Array1OfPinpointConstraint,
  ../NCollection/NCollection_DefineHArray1

type
  Plate_HArray1OfPinpointConstraint* {.importcpp: "Plate_HArray1OfPinpointConstraint", header: "Plate_HArray1OfPinpointConstraint.hxx",
                                      bycopy.} = object of Plate_Array1OfPinpointConstraint


proc constructPlate_HArray1OfPinpointConstraint*(theLower: Standard_Integer;
    theUpper: Standard_Integer): Plate_HArray1OfPinpointConstraint {.constructor,
    importcpp: "Plate_HArray1OfPinpointConstraint(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc constructPlate_HArray1OfPinpointConstraint*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): Plate_HArray1OfPinpointConstraint {.
    constructor, importcpp: "Plate_HArray1OfPinpointConstraint(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc constructPlate_HArray1OfPinpointConstraint*(
    theOther: Plate_Array1OfPinpointConstraint): Plate_HArray1OfPinpointConstraint {.
    constructor, importcpp: "Plate_HArray1OfPinpointConstraint(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc Array1*(this: Plate_HArray1OfPinpointConstraint): Plate_Array1OfPinpointConstraint {.
    noSideEffect, importcpp: "Array1",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc ChangeArray1*(this: var Plate_HArray1OfPinpointConstraint): var Plate_Array1OfPinpointConstraint {.
    importcpp: "ChangeArray1", header: "Plate_HArray1OfPinpointConstraint.hxx".}
type
  Plate_HArray1OfPinpointConstraintbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "Plate_HArray1OfPinpointConstraint::get_type_name(@)",
                              header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Plate_HArray1OfPinpointConstraint::get_type_descriptor(@)",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}
proc DynamicType*(this: Plate_HArray1OfPinpointConstraint): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Plate_HArray1OfPinpointConstraint.hxx".}