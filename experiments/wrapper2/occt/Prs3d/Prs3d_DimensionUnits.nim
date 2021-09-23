##  Created on: 2013-11-11
##  Created by: Anastasia BORISOVA
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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
  ../TCollection/TCollection_AsciiString

## ! This class provides units for two dimension groups:
## ! - lengthes (length, radius, diameter)
## ! - angles

type
  Prs3d_DimensionUnits* {.importcpp: "Prs3d_DimensionUnits",
                         header: "Prs3d_DimensionUnits.hxx", bycopy.} = object ## !
                                                                          ## Default
                                                                          ## constructor. Sets meters as
                                                                          ## default length units
                                                                          ## ! and
                                                                          ## radians as
                                                                          ## default angle units.


proc constructPrs3d_DimensionUnits*(): Prs3d_DimensionUnits {.constructor,
    importcpp: "Prs3d_DimensionUnits(@)", header: "Prs3d_DimensionUnits.hxx".}
proc constructPrs3d_DimensionUnits*(theUnits: Prs3d_DimensionUnits): Prs3d_DimensionUnits {.
    constructor, importcpp: "Prs3d_DimensionUnits(@)",
    header: "Prs3d_DimensionUnits.hxx".}
proc SetAngleUnits*(this: var Prs3d_DimensionUnits;
                   theUnits: TCollection_AsciiString) {.
    importcpp: "SetAngleUnits", header: "Prs3d_DimensionUnits.hxx".}
proc GetAngleUnits*(this: Prs3d_DimensionUnits): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetAngleUnits", header: "Prs3d_DimensionUnits.hxx".}
proc SetLengthUnits*(this: var Prs3d_DimensionUnits;
                    theUnits: TCollection_AsciiString) {.
    importcpp: "SetLengthUnits", header: "Prs3d_DimensionUnits.hxx".}
proc GetLengthUnits*(this: Prs3d_DimensionUnits): TCollection_AsciiString {.
    noSideEffect, importcpp: "GetLengthUnits", header: "Prs3d_DimensionUnits.hxx".}