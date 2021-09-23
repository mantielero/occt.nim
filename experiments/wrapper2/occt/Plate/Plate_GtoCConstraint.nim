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
  ../Standard/Standard_Handle, Plate_PinpointConstraint, Plate_D1, ../gp/gp_XY,
  ../Standard/Standard_Integer

discard "forward decl of gp_XY"
discard "forward decl of Plate_D1"
discard "forward decl of gp_XYZ"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of Plate_PinpointConstraint"
type
  Plate_GtoCConstraint* {.importcpp: "Plate_GtoCConstraint",
                         header: "Plate_GtoCConstraint.hxx", bycopy.} = object


proc constructPlate_GtoCConstraint*(`ref`: Plate_GtoCConstraint): Plate_GtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlate_GtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1): Plate_GtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlate_GtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                   nP: gp_XYZ): Plate_GtoCConstraint {.constructor,
    importcpp: "Plate_GtoCConstraint(@)", header: "Plate_GtoCConstraint.hxx".}
proc constructPlate_GtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                   D2S: Plate_D2; D2T: Plate_D2): Plate_GtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlate_GtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                   D2S: Plate_D2; D2T: Plate_D2; nP: gp_XYZ): Plate_GtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlate_GtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                   D2S: Plate_D2; D2T: Plate_D2; D3S: Plate_D3;
                                   D3T: Plate_D3): Plate_GtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlate_GtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                   D2S: Plate_D2; D2T: Plate_D2; D3S: Plate_D3;
                                   D3T: Plate_D3; nP: gp_XYZ): Plate_GtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc nb_PPC*(this: Plate_GtoCConstraint): Standard_Integer {.noSideEffect,
    importcpp: "nb_PPC", header: "Plate_GtoCConstraint.hxx".}
proc GetPPC*(this: Plate_GtoCConstraint; Index: Standard_Integer): Plate_PinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_GtoCConstraint.hxx".}
proc D1SurfInit*(this: Plate_GtoCConstraint): Plate_D1 {.noSideEffect,
    importcpp: "D1SurfInit", header: "Plate_GtoCConstraint.hxx".}