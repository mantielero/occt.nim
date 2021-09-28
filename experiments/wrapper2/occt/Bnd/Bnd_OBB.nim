##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! The class describes the Oriented Bounding Box (OBB),
## ! much tighter enclosing volume for the shape than the
## ! Axis Aligned Bounding Box (AABB).
## ! The OBB is defined by a center of the box, the axes and the halves
## ! of its three dimensions.
## ! The OBB can be used more effectively than AABB as a rejection mechanism
## ! for non-interfering objects.

type
  BndOBB* {.importcpp: "Bnd_OBB", header: "Bnd_OBB.hxx", bycopy.} = object ## ! Empty constructor
                                                                   ## ! Center of the OBB
    ## ! Directions of the box's axes
    ## ! (all vectors are already normalized)
    ## ! Half-size dimensions of the OBB
    ## ! To be set if the OBB is axis aligned box;


proc constructBndOBB*(): BndOBB {.constructor, importcpp: "Bnd_OBB(@)",
                               header: "Bnd_OBB.hxx".}
proc constructBndOBB*(theCenter: Pnt; theXDirection: Dir; theYDirection: Dir;
                     theZDirection: Dir; theHXSize: cfloat; theHYSize: cfloat;
                     theHZSize: cfloat): BndOBB {.constructor,
    importcpp: "Bnd_OBB(@)", header: "Bnd_OBB.hxx".}
proc constructBndOBB*(theBox: BndBox): BndOBB {.constructor, importcpp: "Bnd_OBB(@)",
    header: "Bnd_OBB.hxx".}
proc reBuild*(this: var BndOBB; theListOfPoints: TColgpArray1OfPnt;
             theListOfTolerances: ptr TColStdArray1OfReal = 0;
             theIsOptimal: bool = false) {.importcpp: "ReBuild", header: "Bnd_OBB.hxx".}
proc setCenter*(this: var BndOBB; theCenter: Pnt) {.importcpp: "SetCenter",
    header: "Bnd_OBB.hxx".}
proc setXComponent*(this: var BndOBB; theXDirection: Dir; theHXSize: cfloat) {.
    importcpp: "SetXComponent", header: "Bnd_OBB.hxx".}
proc setYComponent*(this: var BndOBB; theYDirection: Dir; theHYSize: cfloat) {.
    importcpp: "SetYComponent", header: "Bnd_OBB.hxx".}
proc setZComponent*(this: var BndOBB; theZDirection: Dir; theHZSize: cfloat) {.
    importcpp: "SetZComponent", header: "Bnd_OBB.hxx".}
proc position*(this: BndOBB): Ax3 {.noSideEffect, importcpp: "Position",
                                header: "Bnd_OBB.hxx".}
proc center*(this: BndOBB): Xyz {.noSideEffect, importcpp: "Center",
                              header: "Bnd_OBB.hxx".}
proc xDirection*(this: BndOBB): Xyz {.noSideEffect, importcpp: "XDirection",
                                  header: "Bnd_OBB.hxx".}
proc yDirection*(this: BndOBB): Xyz {.noSideEffect, importcpp: "YDirection",
                                  header: "Bnd_OBB.hxx".}
proc zDirection*(this: BndOBB): Xyz {.noSideEffect, importcpp: "ZDirection",
                                  header: "Bnd_OBB.hxx".}
proc xHSize*(this: BndOBB): cfloat {.noSideEffect, importcpp: "XHSize",
                                 header: "Bnd_OBB.hxx".}
proc yHSize*(this: BndOBB): cfloat {.noSideEffect, importcpp: "YHSize",
                                 header: "Bnd_OBB.hxx".}
proc zHSize*(this: BndOBB): cfloat {.noSideEffect, importcpp: "ZHSize",
                                 header: "Bnd_OBB.hxx".}
proc isVoid*(this: BndOBB): bool {.noSideEffect, importcpp: "IsVoid",
                               header: "Bnd_OBB.hxx".}
proc setVoid*(this: var BndOBB) {.importcpp: "SetVoid", header: "Bnd_OBB.hxx".}
proc setAABox*(this: var BndOBB; theFlag: bool) {.importcpp: "SetAABox",
    header: "Bnd_OBB.hxx".}
proc isAABox*(this: BndOBB): bool {.noSideEffect, importcpp: "IsAABox",
                                header: "Bnd_OBB.hxx".}
proc enlarge*(this: var BndOBB; theGapAdd: cfloat) {.importcpp: "Enlarge",
    header: "Bnd_OBB.hxx".}
proc getVertex*(this: BndOBB; theP: array[8, Pnt]): bool {.noSideEffect,
    importcpp: "GetVertex", header: "Bnd_OBB.hxx".}
proc squareExtent*(this: BndOBB): cfloat {.noSideEffect, importcpp: "SquareExtent",
                                       header: "Bnd_OBB.hxx".}
proc isOut*(this: BndOBB; theOther: BndOBB): bool {.noSideEffect, importcpp: "IsOut",
    header: "Bnd_OBB.hxx".}
proc isOut*(this: BndOBB; theP: Pnt): bool {.noSideEffect, importcpp: "IsOut",
                                       header: "Bnd_OBB.hxx".}
proc isCompletelyInside*(this: BndOBB; theOther: BndOBB): bool {.noSideEffect,
    importcpp: "IsCompletelyInside", header: "Bnd_OBB.hxx".}
proc add*(this: var BndOBB; theOther: BndOBB) {.importcpp: "Add", header: "Bnd_OBB.hxx".}
proc add*(this: var BndOBB; theP: Pnt) {.importcpp: "Add", header: "Bnd_OBB.hxx".}
proc dumpJson*(this: BndOBB; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "Bnd_OBB.hxx".}

























