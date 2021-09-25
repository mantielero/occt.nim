##  Created on: 1998-05-06
##  Created by: Andre LIEUTIER
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
discard "forward decl of gp_Pln"
discard "forward decl of Plate_LinearScalarConstraint"
type
  PlatePlaneConstraint* {.importcpp: "Plate_PlaneConstraint",
                         header: "Plate_PlaneConstraint.hxx", bycopy.} = object


proc constructPlatePlaneConstraint*(point2d: Xy; pln: Pln; iu: int = 0; iv: int = 0): PlatePlaneConstraint {.
    constructor, importcpp: "Plate_PlaneConstraint(@)",
    header: "Plate_PlaneConstraint.hxx".}
proc lsc*(this: PlatePlaneConstraint): PlateLinearScalarConstraint {.noSideEffect,
    importcpp: "LSC", header: "Plate_PlaneConstraint.hxx".}
