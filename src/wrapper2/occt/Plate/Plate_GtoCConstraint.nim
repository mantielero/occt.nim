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
discard "forward decl of Plate_D1"
discard "forward decl of gp_XYZ"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of Plate_PinpointConstraint"
type
  PlateGtoCConstraint* {.importcpp: "Plate_GtoCConstraint",
                        header: "Plate_GtoCConstraint.hxx", bycopy.} = object


proc constructPlateGtoCConstraint*(`ref`: PlateGtoCConstraint): PlateGtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlateGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1): PlateGtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlateGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1; nP: GpXYZ): PlateGtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlateGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                  d2s: PlateD2; d2t: PlateD2): PlateGtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlateGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                  d2s: PlateD2; d2t: PlateD2; nP: GpXYZ): PlateGtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc constructPlateGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                  d2s: PlateD2; d2t: PlateD2; d3s: PlateD3;
                                  d3t: PlateD3): PlateGtoCConstraint {.constructor,
    importcpp: "Plate_GtoCConstraint(@)", header: "Plate_GtoCConstraint.hxx".}
proc constructPlateGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                  d2s: PlateD2; d2t: PlateD2; d3s: PlateD3;
                                  d3t: PlateD3; nP: GpXYZ): PlateGtoCConstraint {.
    constructor, importcpp: "Plate_GtoCConstraint(@)",
    header: "Plate_GtoCConstraint.hxx".}
proc nbPPC*(this: PlateGtoCConstraint): StandardInteger {.noSideEffect,
    importcpp: "nb_PPC", header: "Plate_GtoCConstraint.hxx".}
proc getPPC*(this: PlateGtoCConstraint; index: StandardInteger): PlatePinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_GtoCConstraint.hxx".}
proc d1SurfInit*(this: PlateGtoCConstraint): PlateD1 {.noSideEffect,
    importcpp: "D1SurfInit", header: "Plate_GtoCConstraint.hxx".}

