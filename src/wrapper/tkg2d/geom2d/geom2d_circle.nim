import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types



##  Created on: 1993-03-24
##  Created by: Philippe DAUTRY
##  Copyright (c) 1993-1999 Matra Datavision
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





proc newGeom2dCircle*(c: Circ2dObj): Geom2dCircle {.cdecl, constructor,
    importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc newGeom2dCircle*(a: Ax2dObj; radius: cfloat; sense: bool = true): Geom2dCircle {.cdecl,
    constructor, importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc newGeom2dCircle*(a: Ax22dObj; radius: cfloat): Geom2dCircle {.cdecl, constructor,
    importcpp: "Geom2d_Circle(@)", header: "Geom2d_Circle.hxx".}
proc setCirc2d*(this: var Geom2dCircle; c: Circ2dObj) {.cdecl, importcpp: "SetCirc2d",
    header: "Geom2d_Circle.hxx".}
proc setRadius*(this: var Geom2dCircle; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "Geom2d_Circle.hxx".}
proc circ2d*(this: Geom2dCircle): Circ2dObj {.noSideEffect, cdecl, importcpp: "Circ2d",
                                       header: "Geom2d_Circle.hxx".}
proc radius*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                       header: "Geom2d_Circle.hxx".}
proc reversedParameter*(this: Geom2dCircle; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom2d_Circle.hxx".}
proc eccentricity*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom2d_Circle.hxx".}
proc firstParameter*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_Circle.hxx".}
proc lastParameter*(this: Geom2dCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_Circle.hxx".}
proc isClosed*(this: Geom2dCircle): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                       header: "Geom2d_Circle.hxx".}
proc isPeriodic*(this: Geom2dCircle): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_Circle.hxx".}
proc d0*(this: Geom2dCircle; u: cfloat; p: var Pnt2dObj) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_Circle.hxx".}
proc d1*(this: Geom2dCircle; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom2d_Circle.hxx".}
proc d2*(this: Geom2dCircle; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_Circle.hxx".}
proc d3*(this: Geom2dCircle; u: cfloat; p: var Pnt2dObj; v1: var Vec2dObj; v2: var Vec2dObj;
        v3: var Vec2dObj) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_Circle.hxx".}
proc dn*(this: Geom2dCircle; u: cfloat; n: cint): Vec2dObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_Circle.hxx".}
proc transform*(this: var Geom2dCircle; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Circle.hxx".}
proc copy*(this: Geom2dCircle): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Circle.hxx".}
proc dumpJson*(this: Geom2dCircle; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Circle.hxx".}

