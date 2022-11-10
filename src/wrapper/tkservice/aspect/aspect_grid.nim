import ../../tkernel/standard/standard_types
import aspect_types
import ../../tkernel/quantity/quantity_types





##  Created on: 1995-03-02
##  Created by: Jean-Louis Frenkel
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



proc setXOrigin*(this: var AspectGrid; anOrigin: cfloat) {.cdecl,
    importcpp: "SetXOrigin".}
proc setYOrigin*(this: var AspectGrid; anOrigin: cfloat) {.cdecl,
    importcpp: "SetYOrigin".}
proc setRotationAngle*(this: var AspectGrid; anAngle: cfloat) {.cdecl,
    importcpp: "SetRotationAngle".}
proc rotate*(this: var AspectGrid; anAngle: cfloat) {.cdecl, importcpp: "Rotate",
    .}
proc translate*(this: var AspectGrid; aDx: cfloat; aDy: cfloat) {.cdecl,
    importcpp: "Translate".}
proc setColors*(this: var AspectGrid; aColor: QuantityColor;
               aTenthColor: QuantityColor) {.cdecl, importcpp: "SetColors",
    .}
proc hit*(this: AspectGrid; x: cfloat; y: cfloat; gridX: var cfloat; gridY: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Hit".}
proc compute*(this: AspectGrid; x: cfloat; y: cfloat; gridX: var cfloat; gridY: var cfloat) {.
    noSideEffect, cdecl, importcpp: "Compute".}
proc activate*(this: var AspectGrid) {.cdecl, importcpp: "Activate".}
proc deactivate*(this: var AspectGrid) {.cdecl, importcpp: "Deactivate",
                                     .}
proc xOrigin*(this: AspectGrid): cfloat {.noSideEffect, cdecl, importcpp: "XOrigin",
                                      .}
proc yOrigin*(this: AspectGrid): cfloat {.noSideEffect, cdecl, importcpp: "YOrigin",
                                      .}
proc rotationAngle*(this: AspectGrid): cfloat {.noSideEffect, cdecl,
    importcpp: "RotationAngle".}
proc isActive*(this: AspectGrid): bool {.noSideEffect, cdecl, importcpp: "IsActive",
                                     .}
proc colors*(this: AspectGrid; aColor: var QuantityColor;
            aTenthColor: var QuantityColor) {.noSideEffect, cdecl,
    importcpp: "Colors".}
proc setDrawMode*(this: var AspectGrid; aDrawMode: AspectGridDrawMode) {.cdecl,
    importcpp: "SetDrawMode".}
proc drawMode*(this: AspectGrid): AspectGridDrawMode {.noSideEffect, cdecl,
    importcpp: "DrawMode".}
proc display*(this: var AspectGrid) {.cdecl, importcpp: "Display".}
proc erase*(this: AspectGrid) {.noSideEffect, cdecl, importcpp: "Erase",
                             .}
proc isDisplayed*(this: AspectGrid): bool {.noSideEffect, cdecl,
                                        importcpp: "IsDisplayed",
                                        .}
proc init*(this: var AspectGrid) {.cdecl, importcpp: "Init".}
proc dumpJson*(this: AspectGrid; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson".}



