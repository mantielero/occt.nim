import ../gp/gp_types
import ../standard/standard_types
import geom_types







##  Created on: 1993-03-10
##  Created by: JCV
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





proc newGeomCircle*(c: CircObj): GeomCircle {.cdecl, constructor,
                                       importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
proc newGeomCircle*(a2: Ax2Obj; radius: cfloat): GeomCircle {.cdecl, constructor,
    importcpp: "Geom_Circle(@)", header: "Geom_Circle.hxx".}
proc setCirc*(this: var GeomCircle; c: CircObj) {.cdecl, importcpp: "SetCirc", header: "Geom_Circle.hxx".}
proc setRadius*(this: var GeomCircle; r: cfloat) {.cdecl, importcpp: "SetRadius",
    header: "Geom_Circle.hxx".}
proc circ*(this: GeomCircle): CircObj {.noSideEffect, cdecl, importcpp: "Circ",
                                 header: "Geom_Circle.hxx".}
proc radius*(this: GeomCircle): cfloat {.noSideEffect, cdecl, importcpp: "Radius",
                                     header: "Geom_Circle.hxx".}
proc reversedParameter*(this: GeomCircle; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Circle.hxx".}
proc eccentricity*(this: GeomCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom_Circle.hxx".}
proc firstParameter*(this: GeomCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Circle.hxx".}
proc lastParameter*(this: GeomCircle): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Circle.hxx".}
proc isClosed*(this: GeomCircle): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                     header: "Geom_Circle.hxx".}
proc isPeriodic*(this: GeomCircle): bool {.noSideEffect, cdecl,
                                       importcpp: "IsPeriodic", header: "Geom_Circle.hxx".}
proc d0*(this: GeomCircle; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    header: "Geom_Circle.hxx".}
proc d1*(this: GeomCircle; u: cfloat; p: var gp_Pnt; v1: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Circle.hxx".}
proc d2*(this: GeomCircle; u: cfloat; p: var gp_Pnt; v1: var VecObj; v2: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Circle.hxx".}
proc d3*(this: GeomCircle; u: cfloat; p: var gp_Pnt; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Circle.hxx".}
proc dn*(this: GeomCircle; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_Circle.hxx".}
proc transform*(this: var GeomCircle; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Circle.hxx".}
proc copy*(this: GeomCircle): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Circle.hxx".}
proc dumpJson*(this: GeomCircle; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Geom_Circle.hxx".}



