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

discard "forward decl of gp_XY"
discard "forward decl of gp_XYZ"
type
  PlatePinpointConstraint* {.importcpp: "Plate_PinpointConstraint",
                            header: "Plate_PinpointConstraint.hxx", bycopy.} = object


proc constructPlatePinpointConstraint*(): PlatePinpointConstraint {.constructor,
    importcpp: "Plate_PinpointConstraint(@)",
    header: "Plate_PinpointConstraint.hxx".}
proc constructPlatePinpointConstraint*(point2d: Xy; imposedValue: Xyz; iu: cint = 0;
                                      iv: cint = 0): PlatePinpointConstraint {.
    constructor, importcpp: "Plate_PinpointConstraint(@)",
    header: "Plate_PinpointConstraint.hxx".}
proc pnt2d*(this: PlatePinpointConstraint): Xy {.noSideEffect, importcpp: "Pnt2d",
    header: "Plate_PinpointConstraint.hxx".}
proc idu*(this: PlatePinpointConstraint): cint {.noSideEffect, importcpp: "Idu",
    header: "Plate_PinpointConstraint.hxx".}
proc idv*(this: PlatePinpointConstraint): cint {.noSideEffect, importcpp: "Idv",
    header: "Plate_PinpointConstraint.hxx".}
proc value*(this: PlatePinpointConstraint): Xyz {.noSideEffect, importcpp: "Value",
    header: "Plate_PinpointConstraint.hxx".}

























