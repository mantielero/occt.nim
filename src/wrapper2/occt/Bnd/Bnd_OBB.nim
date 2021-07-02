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
proc constructBndOBB*(theCenter: GpPnt; theXDirection: GpDir; theYDirection: GpDir;
                     theZDirection: GpDir; theHXSize: StandardReal;
                     theHYSize: StandardReal; theHZSize: StandardReal): BndOBB {.
    constructor, importcpp: "Bnd_OBB(@)", header: "Bnd_OBB.hxx".}
proc constructBndOBB*(theBox: BndBox): BndOBB {.constructor, importcpp: "Bnd_OBB(@)",
    header: "Bnd_OBB.hxx".}
proc reBuild*(this: var BndOBB; theListOfPoints: TColgpArray1OfPnt;
             theListOfTolerances: ptr TColStdArray1OfReal = 0;
             theIsOptimal: StandardBoolean = standardFalse) {.importcpp: "ReBuild",
    header: "Bnd_OBB.hxx".}
proc setCenter*(this: var BndOBB; theCenter: GpPnt) {.importcpp: "SetCenter",
    header: "Bnd_OBB.hxx".}
proc setXComponent*(this: var BndOBB; theXDirection: GpDir; theHXSize: StandardReal) {.
    importcpp: "SetXComponent", header: "Bnd_OBB.hxx".}
proc setYComponent*(this: var BndOBB; theYDirection: GpDir; theHYSize: StandardReal) {.
    importcpp: "SetYComponent", header: "Bnd_OBB.hxx".}
proc setZComponent*(this: var BndOBB; theZDirection: GpDir; theHZSize: StandardReal) {.
    importcpp: "SetZComponent", header: "Bnd_OBB.hxx".}
proc position*(this: BndOBB): GpAx3 {.noSideEffect, importcpp: "Position",
                                  header: "Bnd_OBB.hxx".}
proc center*(this: BndOBB): GpXYZ {.noSideEffect, importcpp: "Center",
                                header: "Bnd_OBB.hxx".}
proc xDirection*(this: BndOBB): GpXYZ {.noSideEffect, importcpp: "XDirection",
                                    header: "Bnd_OBB.hxx".}
proc yDirection*(this: BndOBB): GpXYZ {.noSideEffect, importcpp: "YDirection",
                                    header: "Bnd_OBB.hxx".}
proc zDirection*(this: BndOBB): GpXYZ {.noSideEffect, importcpp: "ZDirection",
                                    header: "Bnd_OBB.hxx".}
proc xHSize*(this: BndOBB): StandardReal {.noSideEffect, importcpp: "XHSize",
                                       header: "Bnd_OBB.hxx".}
proc yHSize*(this: BndOBB): StandardReal {.noSideEffect, importcpp: "YHSize",
                                       header: "Bnd_OBB.hxx".}
proc zHSize*(this: BndOBB): StandardReal {.noSideEffect, importcpp: "ZHSize",
                                       header: "Bnd_OBB.hxx".}
proc isVoid*(this: BndOBB): StandardBoolean {.noSideEffect, importcpp: "IsVoid",
    header: "Bnd_OBB.hxx".}
proc setVoid*(this: var BndOBB) {.importcpp: "SetVoid", header: "Bnd_OBB.hxx".}
proc setAABox*(this: var BndOBB; theFlag: StandardBoolean) {.importcpp: "SetAABox",
    header: "Bnd_OBB.hxx".}
proc isAABox*(this: BndOBB): StandardBoolean {.noSideEffect, importcpp: "IsAABox",
    header: "Bnd_OBB.hxx".}
proc enlarge*(this: var BndOBB; theGapAdd: StandardReal) {.importcpp: "Enlarge",
    header: "Bnd_OBB.hxx".}
proc getVertex*(this: BndOBB; theP: array[8, GpPnt]): StandardBoolean {.noSideEffect,
    importcpp: "GetVertex", header: "Bnd_OBB.hxx".}
proc squareExtent*(this: BndOBB): StandardReal {.noSideEffect,
    importcpp: "SquareExtent", header: "Bnd_OBB.hxx".}
proc isOut*(this: BndOBB; theOther: BndOBB): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_OBB.hxx".}
proc isOut*(this: BndOBB; theP: GpPnt): StandardBoolean {.noSideEffect,
    importcpp: "IsOut", header: "Bnd_OBB.hxx".}
proc isCompletelyInside*(this: BndOBB; theOther: BndOBB): StandardBoolean {.
    noSideEffect, importcpp: "IsCompletelyInside", header: "Bnd_OBB.hxx".}
proc add*(this: var BndOBB; theOther: BndOBB) {.importcpp: "Add", header: "Bnd_OBB.hxx".}
proc add*(this: var BndOBB; theP: GpPnt) {.importcpp: "Add", header: "Bnd_OBB.hxx".}
proc dumpJson*(this: BndOBB; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Bnd_OBB.hxx".}

