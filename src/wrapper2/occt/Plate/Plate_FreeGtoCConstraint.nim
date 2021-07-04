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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_XY, ../Standard/Standard_Integer,
  Plate_PinpointConstraint, Plate_LinearScalarConstraint,
  ../Standard/Standard_Real

discard "forward decl of gp_XY"
discard "forward decl of Plate_D1"
discard "forward decl of Plate_D2"
discard "forward decl of Plate_D3"
discard "forward decl of Plate_PinpointConstraint"
discard "forward decl of Plate_LinearScalarConstraint"
type
  Plate_FreeGtoCConstraint* {.importcpp: "Plate_FreeGtoCConstraint",
                             header: "Plate_FreeGtoCConstraint.hxx", bycopy.} = object


proc constructPlate_FreeGtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                       IncrementalLoad: Standard_Real = 1.0;
                                       orientation: Standard_Integer = 0): Plate_FreeGtoCConstraint {.
    constructor, importcpp: "Plate_FreeGtoCConstraint(@)",
    header: "Plate_FreeGtoCConstraint.hxx".}
proc constructPlate_FreeGtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                       D2S: Plate_D2; D2T: Plate_D2;
                                       IncrementalLoad: Standard_Real = 1.0;
                                       orientation: Standard_Integer = 0): Plate_FreeGtoCConstraint {.
    constructor, importcpp: "Plate_FreeGtoCConstraint(@)",
    header: "Plate_FreeGtoCConstraint.hxx".}
proc constructPlate_FreeGtoCConstraint*(point2d: gp_XY; D1S: Plate_D1; D1T: Plate_D1;
                                       D2S: Plate_D2; D2T: Plate_D2; D3S: Plate_D3;
                                       D3T: Plate_D3;
                                       IncrementalLoad: Standard_Real = 1.0;
                                       orientation: Standard_Integer = 0): Plate_FreeGtoCConstraint {.
    constructor, importcpp: "Plate_FreeGtoCConstraint(@)",
    header: "Plate_FreeGtoCConstraint.hxx".}
proc nb_PPC*(this: Plate_FreeGtoCConstraint): Standard_Integer {.noSideEffect,
    importcpp: "nb_PPC", header: "Plate_FreeGtoCConstraint.hxx".}
proc GetPPC*(this: Plate_FreeGtoCConstraint; Index: Standard_Integer): Plate_PinpointConstraint {.
    noSideEffect, importcpp: "GetPPC", header: "Plate_FreeGtoCConstraint.hxx".}
proc nb_LSC*(this: Plate_FreeGtoCConstraint): Standard_Integer {.noSideEffect,
    importcpp: "nb_LSC", header: "Plate_FreeGtoCConstraint.hxx".}
proc LSC*(this: Plate_FreeGtoCConstraint; Index: Standard_Integer): Plate_LinearScalarConstraint {.
    noSideEffect, importcpp: "LSC", header: "Plate_FreeGtoCConstraint.hxx".}