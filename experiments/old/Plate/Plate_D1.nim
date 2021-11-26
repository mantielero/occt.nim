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

discard "forward decl of Plate_GtoCConstraint"
discard "forward decl of Plate_FreeGtoCConstraint"
discard "forward decl of gp_XYZ"
type
  PlateD1* {.importcpp: "Plate_D1", header: "Plate_D1.hxx", bycopy.} = object


proc constructPlateD1*(du: Xyz; dv: Xyz): PlateD1 {.constructor,
    importcpp: "Plate_D1(@)", header: "Plate_D1.hxx".}
proc constructPlateD1*(`ref`: PlateD1): PlateD1 {.constructor,
    importcpp: "Plate_D1(@)", header: "Plate_D1.hxx".}
proc du*(this: PlateD1): Xyz {.noSideEffect, importcpp: "DU", header: "Plate_D1.hxx".}
proc dv*(this: PlateD1): Xyz {.noSideEffect, importcpp: "DV", header: "Plate_D1.hxx".}

























