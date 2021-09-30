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

type
  AspectGrid* {.importcpp: "Aspect_Grid", header: "Aspect_Grid.hxx", bycopy.} = object of StandardTransient ##
                                                                                                  ## !
                                                                                                  ## defines
                                                                                                  ## the
                                                                                                  ## x
                                                                                                  ## Origin
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## grid.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## a
                                                                                                  ## new
                                                                                                  ## grid.
                                                                                                  ## By
                                                                                                  ## default
                                                                                                  ## this
                                                                                                  ## grid
                                                                                                  ## is
                                                                                                  ## not
                                                                                                  ## active.

  AspectGridbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Aspect_Grid::get_type_name(@)",
                            header: "Aspect_Grid.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Aspect_Grid::get_type_descriptor(@)", header: "Aspect_Grid.hxx".}
proc dynamicType*(this: AspectGrid): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Aspect_Grid.hxx".}
proc setXOrigin*(this: var AspectGrid; anOrigin: cfloat) {.importcpp: "SetXOrigin",
    header: "Aspect_Grid.hxx".}
proc setYOrigin*(this: var AspectGrid; anOrigin: cfloat) {.importcpp: "SetYOrigin",
    header: "Aspect_Grid.hxx".}
proc setRotationAngle*(this: var AspectGrid; anAngle: cfloat) {.
    importcpp: "SetRotationAngle", header: "Aspect_Grid.hxx".}
proc rotate*(this: var AspectGrid; anAngle: cfloat) {.importcpp: "Rotate",
    header: "Aspect_Grid.hxx".}
proc translate*(this: var AspectGrid; aDx: cfloat; aDy: cfloat) {.
    importcpp: "Translate", header: "Aspect_Grid.hxx".}
proc setColors*(this: var AspectGrid; aColor: QuantityColor;
               aTenthColor: QuantityColor) {.importcpp: "SetColors",
    header: "Aspect_Grid.hxx".}
proc hit*(this: AspectGrid; x: cfloat; y: cfloat; gridX: var cfloat; gridY: var cfloat) {.
    noSideEffect, importcpp: "Hit", header: "Aspect_Grid.hxx".}
proc compute*(this: AspectGrid; x: cfloat; y: cfloat; gridX: var cfloat; gridY: var cfloat) {.
    noSideEffect, importcpp: "Compute", header: "Aspect_Grid.hxx".}
proc activate*(this: var AspectGrid) {.importcpp: "Activate",
                                   header: "Aspect_Grid.hxx".}
proc deactivate*(this: var AspectGrid) {.importcpp: "Deactivate",
                                     header: "Aspect_Grid.hxx".}
proc xOrigin*(this: AspectGrid): cfloat {.noSideEffect, importcpp: "XOrigin",
                                      header: "Aspect_Grid.hxx".}
proc yOrigin*(this: AspectGrid): cfloat {.noSideEffect, importcpp: "YOrigin",
                                      header: "Aspect_Grid.hxx".}
proc rotationAngle*(this: AspectGrid): cfloat {.noSideEffect,
    importcpp: "RotationAngle", header: "Aspect_Grid.hxx".}
proc isActive*(this: AspectGrid): bool {.noSideEffect, importcpp: "IsActive",
                                     header: "Aspect_Grid.hxx".}
proc colors*(this: AspectGrid; aColor: var QuantityColor;
            aTenthColor: var QuantityColor) {.noSideEffect, importcpp: "Colors",
    header: "Aspect_Grid.hxx".}
proc setDrawMode*(this: var AspectGrid; aDrawMode: AspectGridDrawMode) {.
    importcpp: "SetDrawMode", header: "Aspect_Grid.hxx".}
proc drawMode*(this: AspectGrid): AspectGridDrawMode {.noSideEffect,
    importcpp: "DrawMode", header: "Aspect_Grid.hxx".}
proc display*(this: var AspectGrid) {.importcpp: "Display", header: "Aspect_Grid.hxx".}
proc erase*(this: AspectGrid) {.noSideEffect, importcpp: "Erase",
                             header: "Aspect_Grid.hxx".}
proc isDisplayed*(this: AspectGrid): bool {.noSideEffect, importcpp: "IsDisplayed",
                                        header: "Aspect_Grid.hxx".}
proc init*(this: var AspectGrid) {.importcpp: "Init", header: "Aspect_Grid.hxx".}
proc dumpJson*(this: AspectGrid; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Aspect_Grid.hxx".}
discard "forward decl of Aspect_Grid"
type
  HandleC1C1* = Handle[AspectGrid]


























