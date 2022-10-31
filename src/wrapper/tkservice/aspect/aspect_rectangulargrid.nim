import ../../tkernel/standard/standard_types
import aspect_types



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



proc newAspectRectangularGrid*(aXStep: cfloat; aYStep: cfloat; anXOrigin: cfloat = 0;
                              anYOrigin: cfloat = 0; aFirstAngle: cfloat = 0;
                              aSecondAngle: cfloat = 0; aRotationAngle: cfloat = 0): AspectRectangularGrid {.
    cdecl, constructor, importcpp: "Aspect_RectangularGrid(@)", header: "Aspect_RectangularGrid.hxx".}
proc setXStep*(this: var AspectRectangularGrid; aStep: cfloat) {.cdecl,
    importcpp: "SetXStep", header: "Aspect_RectangularGrid.hxx".}
proc setYStep*(this: var AspectRectangularGrid; aStep: cfloat) {.cdecl,
    importcpp: "SetYStep", header: "Aspect_RectangularGrid.hxx".}
proc setAngle*(this: var AspectRectangularGrid; anAngle1: cfloat; anAngle2: cfloat) {.
    cdecl, importcpp: "SetAngle", header: "Aspect_RectangularGrid.hxx".}
proc setGridValues*(this: var AspectRectangularGrid; xOrigin: cfloat; yOrigin: cfloat;
                   xStep: cfloat; yStep: cfloat; rotationAngle: cfloat) {.cdecl,
    importcpp: "SetGridValues", header: "Aspect_RectangularGrid.hxx".}
proc compute*(this: AspectRectangularGrid; x: cfloat; y: cfloat; gridX: var cfloat;
             gridY: var cfloat) {.noSideEffect, cdecl, importcpp: "Compute",
                               header: "Aspect_RectangularGrid.hxx".}
proc xStep*(this: AspectRectangularGrid): cfloat {.noSideEffect, cdecl,
    importcpp: "XStep", header: "Aspect_RectangularGrid.hxx".}
proc yStep*(this: AspectRectangularGrid): cfloat {.noSideEffect, cdecl,
    importcpp: "YStep", header: "Aspect_RectangularGrid.hxx".}
proc firstAngle*(this: AspectRectangularGrid): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstAngle", header: "Aspect_RectangularGrid.hxx".}
proc secondAngle*(this: AspectRectangularGrid): cfloat {.noSideEffect, cdecl,
    importcpp: "SecondAngle", header: "Aspect_RectangularGrid.hxx".}
proc init*(this: var AspectRectangularGrid) {.cdecl, importcpp: "Init",
    header: "Aspect_RectangularGrid.hxx".}
proc dumpJson*(this: AspectRectangularGrid; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Aspect_RectangularGrid.hxx".}


