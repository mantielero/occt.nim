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


proc newBndOBB*(): BndOBB {.cdecl, constructor, importcpp: "Bnd_OBB(@)", dynlib: tkmath.}
proc newBndOBB*(theCenter: Pnt; theXDirection: Dir; theYDirection: Dir;
               theZDirection: Dir; theHXSize: cfloat; theHYSize: cfloat;
               theHZSize: cfloat): BndOBB {.cdecl, constructor,
    importcpp: "Bnd_OBB(@)", dynlib: tkmath.}
proc newBndOBB*(theBox: BndBox): BndOBB {.cdecl, constructor, importcpp: "Bnd_OBB(@)",
                                      dynlib: tkmath.}
proc reBuild*(this: var BndOBB; theListOfPoints: TColgpArray1OfPnt;
             theListOfTolerances: ptr TColStdArray1OfReal = cast[ptr TColStdArray1OfReal](0);
             theIsOptimal: bool = false) {.cdecl, importcpp: "ReBuild", dynlib: tkmath.}
proc setCenter*(this: var BndOBB; theCenter: Pnt) {.cdecl, importcpp: "SetCenter",
    dynlib: tkmath.}
proc setXComponent*(this: var BndOBB; theXDirection: Dir; theHXSize: cfloat) {.cdecl,
    importcpp: "SetXComponent", dynlib: tkmath.}
proc setYComponent*(this: var BndOBB; theYDirection: Dir; theHYSize: cfloat) {.cdecl,
    importcpp: "SetYComponent", dynlib: tkmath.}
proc setZComponent*(this: var BndOBB; theZDirection: Dir; theHZSize: cfloat) {.cdecl,
    importcpp: "SetZComponent", dynlib: tkmath.}
proc position*(this: BndOBB): Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                                dynlib: tkmath.}
proc center*(this: BndOBB): Xyz {.noSideEffect, cdecl, importcpp: "Center",
                              dynlib: tkmath.}
proc xDirection*(this: BndOBB): Xyz {.noSideEffect, cdecl, importcpp: "XDirection",
                                  dynlib: tkmath.}
proc yDirection*(this: BndOBB): Xyz {.noSideEffect, cdecl, importcpp: "YDirection",
                                  dynlib: tkmath.}
proc zDirection*(this: BndOBB): Xyz {.noSideEffect, cdecl, importcpp: "ZDirection",
                                  dynlib: tkmath.}
proc xHSize*(this: BndOBB): cfloat {.noSideEffect, cdecl, importcpp: "XHSize",
                                 dynlib: tkmath.}
proc yHSize*(this: BndOBB): cfloat {.noSideEffect, cdecl, importcpp: "YHSize",
                                 dynlib: tkmath.}
proc zHSize*(this: BndOBB): cfloat {.noSideEffect, cdecl, importcpp: "ZHSize",
                                 dynlib: tkmath.}
proc isVoid*(this: BndOBB): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               dynlib: tkmath.}
proc setVoid*(this: var BndOBB) {.cdecl, importcpp: "SetVoid", dynlib: tkmath.}
proc setAABox*(this: var BndOBB; theFlag: bool) {.cdecl, importcpp: "SetAABox",
    dynlib: tkmath.}
proc isAABox*(this: BndOBB): bool {.noSideEffect, cdecl, importcpp: "IsAABox",
                                dynlib: tkmath.}
proc enlarge*(this: var BndOBB; theGapAdd: cfloat) {.cdecl, importcpp: "Enlarge",
    dynlib: tkmath.}
proc getVertex*(this: BndOBB; theP: array[8, Pnt]): bool {.noSideEffect, cdecl,
    importcpp: "GetVertex", dynlib: tkmath.}
proc squareExtent*(this: BndOBB): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", dynlib: tkmath.}
proc isOut*(this: BndOBB; theOther: BndOBB): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", dynlib: tkmath.}
proc isOut*(this: BndOBB; theP: Pnt): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                       dynlib: tkmath.}
proc isCompletelyInside*(this: BndOBB; theOther: BndOBB): bool {.noSideEffect, cdecl,
    importcpp: "IsCompletelyInside", dynlib: tkmath.}
proc add*(this: var BndOBB; theOther: BndOBB) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc add*(this: var BndOBB; theP: Pnt) {.cdecl, importcpp: "Add", dynlib: tkmath.}
proc dumpJson*(this: BndOBB; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", dynlib: tkmath.}