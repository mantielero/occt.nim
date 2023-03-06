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





proc reverse*(this: var GeomVector) {.cdecl, importcpp: "Reverse", header: "Geom_Vector.hxx".}
proc reversed*(this: GeomVector): Handle[GeomVector] {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "Geom_Vector.hxx".}
proc angle*(this: GeomVector; other: Handle[GeomVector]): cfloat {.noSideEffect, cdecl,
    importcpp: "Angle", header: "Geom_Vector.hxx".}
proc angleWithRef*(this: GeomVector; other: Handle[GeomVector];
                  vRef: Handle[GeomVector]): cfloat {.noSideEffect, cdecl,
    importcpp: "AngleWithRef", header: "Geom_Vector.hxx".}
proc coord*(this: GeomVector; x: var cfloat; y: var cfloat; z: var cfloat) {.noSideEffect,
    cdecl, importcpp: "Coord", header: "Geom_Vector.hxx".}
proc magnitude*(this: GeomVector): cfloat {.noSideEffect, cdecl,
                                        importcpp: "Magnitude", header: "Geom_Vector.hxx".}
proc squareMagnitude*(this: GeomVector): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "Geom_Vector.hxx".}
proc x*(this: GeomVector): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "Geom_Vector.hxx".}
proc y*(this: GeomVector): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "Geom_Vector.hxx".}
proc z*(this: GeomVector): cfloat {.noSideEffect, cdecl, importcpp: "Z", header: "Geom_Vector.hxx".}
proc cross*(this: var GeomVector; other: Handle[GeomVector]) {.cdecl,
    importcpp: "Cross", header: "Geom_Vector.hxx".}
proc crossed*(this: GeomVector; other: Handle[GeomVector]): Handle[GeomVector] {.
    noSideEffect, cdecl, importcpp: "Crossed", header: "Geom_Vector.hxx".}
proc crossCross*(this: var GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]) {.
    cdecl, importcpp: "CrossCross", header: "Geom_Vector.hxx".}
proc crossCrossed*(this: GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]): Handle[
    GeomVector] {.noSideEffect, cdecl, importcpp: "CrossCrossed", header: "Geom_Vector.hxx".}
proc dot*(this: GeomVector; other: Handle[GeomVector]): cfloat {.noSideEffect, cdecl,
    importcpp: "Dot", header: "Geom_Vector.hxx".}
proc dotCross*(this: GeomVector; v1: Handle[GeomVector]; v2: Handle[GeomVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "DotCross", header: "Geom_Vector.hxx".}
proc vec*(this: GeomVector): gp_Vec {.noSideEffect, cdecl, importcpp: "Vec", header: "Geom_Vector.hxx".}



