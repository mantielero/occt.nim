import ../gp/gp_types
import ../standard/standard_types
import geom_types







##  Created on: 1993-03-09
##  Created by: JVC
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





proc mirror*(this: var GeomGeometry; p: gp_Pnt) {.cdecl, importcpp: "Mirror", header: "Geom_Geometry.hxx".}
proc mirror*(this: var GeomGeometry; a1: Ax1Obj) {.cdecl, importcpp: "Mirror", header: "Geom_Geometry.hxx".}
proc mirror*(this: var GeomGeometry; a2: Ax2Obj) {.cdecl, importcpp: "Mirror", header: "Geom_Geometry.hxx".}
proc rotate*(this: var GeomGeometry; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate",
    header: "Geom_Geometry.hxx".}
proc scale*(this: var GeomGeometry; p: gp_Pnt; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "Geom_Geometry.hxx".}
proc translate*(this: var GeomGeometry; v: gp_Vec) {.cdecl, importcpp: "Translate",
    header: "Geom_Geometry.hxx".}
proc translate*(this: var GeomGeometry; p1: gp_Pnt; p2: gp_Pnt) {.cdecl,
    importcpp: "Translate", header: "Geom_Geometry.hxx".}
proc transform*(this: var GeomGeometry; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Geometry.hxx".}
proc mirrored*(this: GeomGeometry; p: gp_Pnt): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Mirrored", header: "Geom_Geometry.hxx".}
proc mirrored*(this: GeomGeometry; a1: Ax1Obj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom_Geometry.hxx".}
proc mirrored*(this: GeomGeometry; a2: Ax2Obj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom_Geometry.hxx".}
proc rotated*(this: GeomGeometry; a1: Ax1Obj; ang: cfloat): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Rotated", header: "Geom_Geometry.hxx".}
proc scaled*(this: GeomGeometry; p: gp_Pnt; s: cfloat): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Scaled", header: "Geom_Geometry.hxx".}
proc transformed*(this: GeomGeometry; t: TrsfObj): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Transformed", header: "Geom_Geometry.hxx".}
proc translated*(this: GeomGeometry; v: gp_Vec): Handle[GeomGeometry] {.noSideEffect,
    cdecl, importcpp: "Translated", header: "Geom_Geometry.hxx".}
proc translated*(this: GeomGeometry; p1: gp_Pnt; p2: gp_Pnt): Handle[GeomGeometry] {.
    noSideEffect, cdecl, importcpp: "Translated", header: "Geom_Geometry.hxx".}
proc copy*(this: GeomGeometry): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Geometry.hxx".}
proc dumpJson*(this: GeomGeometry; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Geometry.hxx".}



