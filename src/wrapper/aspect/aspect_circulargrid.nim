import ../standard/standard_types
import aspect_types





##  Created on: 1995-03-17
##  Created by: Mister rmi
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



proc newAspectCircularGrid*(aRadiusStep: cfloat; aDivisionNumber: cint;
                           xOrigin: cfloat = 0; anYOrigin: cfloat = 0;
                           aRotationAngle: cfloat = 0): AspectCircularGrid {.cdecl,
    constructor, importcpp: "Aspect_CircularGrid(@)".}
proc setRadiusStep*(this: var AspectCircularGrid; aStep: cfloat) {.cdecl,
    importcpp: "SetRadiusStep".}
proc setDivisionNumber*(this: var AspectCircularGrid; aNumber: cint) {.cdecl,
    importcpp: "SetDivisionNumber".}
proc setGridValues*(this: var AspectCircularGrid; xOrigin: cfloat; yOrigin: cfloat;
                   radiusStep: cfloat; divisionNumber: cint; rotationAngle: cfloat) {.
    cdecl, importcpp: "SetGridValues".}
proc compute*(this: AspectCircularGrid; x: cfloat; y: cfloat; gridX: var cfloat;
             gridY: var cfloat) {.noSideEffect, cdecl, importcpp: "Compute".}
proc radiusStep*(this: AspectCircularGrid): cfloat {.noSideEffect, cdecl,
    importcpp: "RadiusStep".}
proc divisionNumber*(this: AspectCircularGrid): cint {.noSideEffect, cdecl,
    importcpp: "DivisionNumber".}
proc init*(this: var AspectCircularGrid) {.cdecl, importcpp: "Init".}
proc dumpJson*(this: AspectCircularGrid; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson".}



