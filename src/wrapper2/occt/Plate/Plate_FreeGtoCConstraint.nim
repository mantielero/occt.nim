##  Created on: 1998-03-26
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

discard "forward decl of gp_XY"
discard "forward decl of Plate_D1"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of Plate_PinpointConstraint"
discard "forward decl of Plate_LinearScalarConstraint"
type
  PlateFreeGtoCConstraint* {.importcpp: "Plate_FreeGtoCConstraint",
                            header: "Plate_FreeGtoCConstraint.hxx", bycopy.} = object


proc constructPlateFreeGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                      incrementalLoad: StandardReal = 1.0;
                                      orientation: StandardInteger = 0): PlateFreeGtoCConstraint {.
    constructor, importcpp: "Plate_FreeGtoCConstraint(@)",
    header: "Plate_FreeGtoCConstraint.hxx".}
proc constructPlateFreeGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                      d2s: PlateD2; d2t: PlateD2;
                                      incrementalLoad: StandardReal = 1.0;
                                      orientation: StandardInteger = 0): PlateFreeGtoCConstraint {.
    constructor, importcpp: "Plate_FreeGtoCConstraint(@)",
    header: "Plate_FreeGtoCConstraint.hxx".}
proc constructPlateFreeGtoCConstraint*(point2d: GpXY; d1s: PlateD1; d1t: PlateD1;
                                      d2s: PlateD2; d2t: PlateD2; d3s: PlateD3;
                                      d3t: PlateD3;
                                      incrementalLoad: StandardReal = 1.0;
                                      orientation: StandardInteger = 0): PlateFreeGtoCConstraint {.
    constructor, importcpp: "Plate_FreeGtoCConstraint(@)",
    header: "Plate_FreeGtoCConstraint.hxx".}
proc nbPPC*(this: PlateFreeGtoCConstraint): StandardInteger {.noSideEffect,
    importcpp: "nb_PPC", header: "Plate_FreeGtoCConstraint.hxx".}
proc getPPC*(this: PlateFreeGtoCConstraint; index: StandardInteger): PlatePinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_FreeGtoCConstraint.hxx".}
proc nbLSC*(this: PlateFreeGtoCConstraint): StandardInteger {.noSideEffect,
    importcpp: "nb_LSC", header: "Plate_FreeGtoCConstraint.hxx".}
proc lsc*(this: PlateFreeGtoCConstraint; index: StandardInteger): PlateLinearScalarConstraint {.
    noSideEffect, importcpp: "LSC", header: "Plate_FreeGtoCConstraint.hxx".}

