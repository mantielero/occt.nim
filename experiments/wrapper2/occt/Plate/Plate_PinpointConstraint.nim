##  Created on: 1995-10-19
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_XYZ, ../gp/gp_XY,
  ../Standard/Standard_Integer

discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
type
  Plate_PinpointConstraint* {.importcpp: "Plate_PinpointConstraint",
                             header: "Plate_PinpointConstraint.hxx", bycopy.} = object


proc constructPlate_PinpointConstraint*(): Plate_PinpointConstraint {.constructor,
    importcpp: "Plate_PinpointConstraint(@)",
    header: "Plate_PinpointConstraint.hxx".}
proc constructPlate_PinpointConstraint*(point2d: gp_XY; ImposedValue: gp_XYZ;
                                       iu: Standard_Integer = 0;
                                       iv: Standard_Integer = 0): Plate_PinpointConstraint {.
    constructor, importcpp: "Plate_PinpointConstraint(@)",
    header: "Plate_PinpointConstraint.hxx".}
proc Pnt2d*(this: Plate_PinpointConstraint): gp_XY {.noSideEffect,
    importcpp: "Pnt2d", header: "Plate_PinpointConstraint.hxx".}
proc Idu*(this: Plate_PinpointConstraint): Standard_Integer {.noSideEffect,
    importcpp: "Idu", header: "Plate_PinpointConstraint.hxx".}
proc Idv*(this: Plate_PinpointConstraint): Standard_Integer {.noSideEffect,
    importcpp: "Idv", header: "Plate_PinpointConstraint.hxx".}
proc Value*(this: Plate_PinpointConstraint): gp_XYZ {.noSideEffect,
    importcpp: "Value", header: "Plate_PinpointConstraint.hxx".}