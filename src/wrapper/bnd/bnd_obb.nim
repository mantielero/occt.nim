import bnd_types
import ../standard/standard_types
import ../tcolstd/tcolstd_types
import ../gp/gp_types
import ../tcolgp/tcolgp_types
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



proc newBndOBB*(): BndOBB {.cdecl, constructor, importcpp: "Bnd_OBB(@)", header: "Bnd_OBB.hxx".}
proc newBndOBB*(theCenter: gp_Pnt; theXDirection: gp_Dir; theYDirection: gp_Dir;
               theZDirection: gp_Dir; theHXSize: cfloat; theHYSize: cfloat;
               theHZSize: cfloat): BndOBB {.cdecl, constructor,
    importcpp: "Bnd_OBB(@)", header: "Bnd_OBB.hxx".}
proc newBndOBB*(theBox: BndBox): BndOBB {.cdecl, constructor, importcpp: "Bnd_OBB(@)",
                                      header: "Bnd_OBB.hxx".}
proc reBuild*(this: var BndOBB; theListOfPoints: TColgpArray1OfPnt;
             theListOfTolerances: ptr TColStdArray1OfReal = cast[ptr TColStdArray1OfReal](0);
             theIsOptimal: bool = false) {.cdecl, importcpp: "ReBuild", header: "Bnd_OBB.hxx".}
proc setCenter*(this: var BndOBB; theCenter: gp_Pnt) {.cdecl, importcpp: "SetCenter",
    header: "Bnd_OBB.hxx".}
proc setXComponent*(this: var BndOBB; theXDirection: gp_Dir; theHXSize: cfloat) {.cdecl,
    importcpp: "SetXComponent", header: "Bnd_OBB.hxx".}
proc setYComponent*(this: var BndOBB; theYDirection: gp_Dir; theHYSize: cfloat) {.cdecl,
    importcpp: "SetYComponent", header: "Bnd_OBB.hxx".}
proc setZComponent*(this: var BndOBB; theZDirection: gp_Dir; theHZSize: cfloat) {.cdecl,
    importcpp: "SetZComponent", header: "Bnd_OBB.hxx".}
proc position*(this: BndOBB): gp_Ax3 {.noSideEffect, cdecl, importcpp: "Position",
                                header: "Bnd_OBB.hxx".}
proc center*(this: BndOBB): gp_Xyz {.noSideEffect, cdecl, importcpp: "Center",
                              header: "Bnd_OBB.hxx".}
proc xDirection*(this: BndOBB): gp_Xyz {.noSideEffect, cdecl, importcpp: "XDirection",
                                  header: "Bnd_OBB.hxx".}
proc yDirection*(this: BndOBB): gp_Xyz {.noSideEffect, cdecl, importcpp: "YDirection",
                                  header: "Bnd_OBB.hxx".}
proc zDirection*(this: BndOBB): gp_Xyz {.noSideEffect, cdecl, importcpp: "ZDirection",
                                  header: "Bnd_OBB.hxx".}
proc xHSize*(this: BndOBB): cfloat {.noSideEffect, cdecl, importcpp: "XHSize",
                                 header: "Bnd_OBB.hxx".}
proc yHSize*(this: BndOBB): cfloat {.noSideEffect, cdecl, importcpp: "YHSize",
                                 header: "Bnd_OBB.hxx".}
proc zHSize*(this: BndOBB): cfloat {.noSideEffect, cdecl, importcpp: "ZHSize",
                                 header: "Bnd_OBB.hxx".}
proc isVoid*(this: BndOBB): bool {.noSideEffect, cdecl, importcpp: "IsVoid",
                               header: "Bnd_OBB.hxx".}
proc setVoid*(this: var BndOBB) {.cdecl, importcpp: "SetVoid", header: "Bnd_OBB.hxx".}
proc setAABox*(this: var BndOBB; theFlag: bool) {.cdecl, importcpp: "SetAABox",
    header: "Bnd_OBB.hxx".}
proc isAABox*(this: BndOBB): bool {.noSideEffect, cdecl, importcpp: "IsAABox",
                                header: "Bnd_OBB.hxx".}
proc enlarge*(this: var BndOBB; theGapAdd: cfloat) {.cdecl, importcpp: "Enlarge",
    header: "Bnd_OBB.hxx".}
proc getVertex*(this: BndOBB; theP: array[8, gp_Pnt]): bool {.noSideEffect, cdecl,
    importcpp: "GetVertex", header: "Bnd_OBB.hxx".}
proc squareExtent*(this: BndOBB): cfloat {.noSideEffect, cdecl,
                                       importcpp: "SquareExtent", header: "Bnd_OBB.hxx".}
proc isOut*(this: BndOBB; theOther: BndOBB): bool {.noSideEffect, cdecl,
    importcpp: "IsOut", header: "Bnd_OBB.hxx".}
proc isOut*(this: BndOBB; theP: gp_Pnt): bool {.noSideEffect, cdecl, importcpp: "IsOut",
                                       header: "Bnd_OBB.hxx".}
proc isCompletelyInside*(this: BndOBB; theOther: BndOBB): bool {.noSideEffect, cdecl,
    importcpp: "IsCompletelyInside", header: "Bnd_OBB.hxx".}
proc add*(this: var BndOBB; theOther: BndOBB) {.cdecl, importcpp: "Add", header: "Bnd_OBB.hxx".}
proc add*(this: var BndOBB; theP: gp_Pnt) {.cdecl, importcpp: "Add", header: "Bnd_OBB.hxx".}
proc dumpJson*(this: BndOBB; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Bnd_OBB.hxx".}
