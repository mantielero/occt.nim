import geom2d_types
import ../gp/gp_types
import ../standard/standard_types





##  Created on: 1993-03-24
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





proc mirror*(this: var Geom2dGeometry; p: gp_Pnt2d) {.cdecl, importcpp: "Mirror",
    header: "Geom2d_Geometry.hxx".}
proc mirror*(this: var Geom2dGeometry; a: Ax2dObj) {.cdecl, importcpp: "Mirror",
    header: "Geom2d_Geometry.hxx".}
proc rotate*(this: var Geom2dGeometry; p: gp_Pnt2d; ang: cfloat) {.cdecl,
    importcpp: "Rotate", header: "Geom2d_Geometry.hxx".}
proc scale*(this: var Geom2dGeometry; p: gp_Pnt2d; s: cfloat) {.cdecl, importcpp: "Scale",
    header: "Geom2d_Geometry.hxx".}
proc translate*(this: var Geom2dGeometry; v: gp_Vec2d) {.cdecl, importcpp: "Translate",
    header: "Geom2d_Geometry.hxx".}
proc translate*(this: var Geom2dGeometry; p1: gp_Pnt2d; p2: gp_Pnt2d) {.cdecl,
    importcpp: "Translate", header: "Geom2d_Geometry.hxx".}
proc transform*(this: var Geom2dGeometry; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Geometry.hxx".}
proc mirrored*(this: Geom2dGeometry; p: gp_Pnt2d): Handle[Geom2dGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom2d_Geometry.hxx".}
proc mirrored*(this: Geom2dGeometry; a: Ax2dObj): Handle[Geom2dGeometry] {.noSideEffect,
    cdecl, importcpp: "Mirrored", header: "Geom2d_Geometry.hxx".}
proc rotated*(this: Geom2dGeometry; p: gp_Pnt2d; ang: cfloat): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Rotated", header: "Geom2d_Geometry.hxx".}
proc scaled*(this: Geom2dGeometry; p: gp_Pnt2d; s: cfloat): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Scaled", header: "Geom2d_Geometry.hxx".}
proc transformed*(this: Geom2dGeometry; t: Trsf2dObj): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Transformed", header: "Geom2d_Geometry.hxx".}
proc translated*(this: Geom2dGeometry; v: gp_Vec2d): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Translated", header: "Geom2d_Geometry.hxx".}
proc translated*(this: Geom2dGeometry; p1: gp_Pnt2d; p2: gp_Pnt2d): Handle[Geom2dGeometry] {.
    noSideEffect, cdecl, importcpp: "Translated", header: "Geom2d_Geometry.hxx".}
proc copy*(this: Geom2dGeometry): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Geometry.hxx".}
proc dumpJson*(this: Geom2dGeometry; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Geometry.hxx".}


