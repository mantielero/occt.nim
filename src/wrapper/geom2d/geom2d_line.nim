import geom2d_types
import ../gp/gp_types
import ../standard/standard_types
import ../geomabs/geomabs_types





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





proc newGeom2dLine*(a: Ax2dObj): Geom2dLine {.cdecl, constructor,
                                       importcpp: "Geom2d_Line(@)", header: "Geom2d_Line.hxx".}
proc newGeom2dLine*(L: gp_Lin2d): Geom2dLine {.cdecl, constructor,
                                        importcpp: "Geom2d_Line(@)", header: "Geom2d_Line.hxx".}
proc newGeom2dLine*(p: gp_Pnt2d; v: Dir2dObj): Geom2dLine {.cdecl, constructor,
    importcpp: "Geom2d_Line(@)", header: "Geom2d_Line.hxx".}
proc setLin2d*(this: var Geom2dLine; L: gp_Lin2d) {.cdecl, importcpp: "SetLin2d",
    header: "Geom2d_Line.hxx".}
proc setDirection*(this: var Geom2dLine; v: Dir2dObj) {.cdecl, importcpp: "SetDirection",
    header: "Geom2d_Line.hxx".}
proc direction*(this: Geom2dLine): Dir2dObj {.noSideEffect, cdecl,
                                       importcpp: "Direction", header: "Geom2d_Line.hxx".}
proc setLocation*(this: var Geom2dLine; p: gp_Pnt2d) {.cdecl, importcpp: "SetLocation",
    header: "Geom2d_Line.hxx".}
proc location*(this: Geom2dLine): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Location",
                                      header: "Geom2d_Line.hxx".}
proc setPosition*(this: var Geom2dLine; a: Ax2dObj) {.cdecl, importcpp: "SetPosition",
    header: "Geom2d_Line.hxx".}
proc position*(this: Geom2dLine): Ax2dObj {.noSideEffect, cdecl, importcpp: "Position",
                                     header: "Geom2d_Line.hxx".}
proc lin2d*(this: Geom2dLine): gp_Lin2d {.noSideEffect, cdecl, importcpp: "Lin2d",
                                   header: "Geom2d_Line.hxx".}
proc reverse*(this: var Geom2dLine) {.cdecl, importcpp: "Reverse", header: "Geom2d_Line.hxx".}
proc reversedParameter*(this: Geom2dLine; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom2d_Line.hxx".}
proc firstParameter*(this: Geom2dLine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_Line.hxx".}
proc lastParameter*(this: Geom2dLine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_Line.hxx".}
proc isClosed*(this: Geom2dLine): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                     header: "Geom2d_Line.hxx".}
proc isPeriodic*(this: Geom2dLine): bool {.noSideEffect, cdecl,
                                       importcpp: "IsPeriodic", header: "Geom2d_Line.hxx".}
proc continuity*(this: Geom2dLine): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom2d_Line.hxx".}
proc distance*(this: Geom2dLine; p: gp_Pnt2d): cfloat {.noSideEffect, cdecl,
    importcpp: "Distance", header: "Geom2d_Line.hxx".}
proc isCN*(this: Geom2dLine; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                        header: "Geom2d_Line.hxx".}
proc d0*(this: Geom2dLine; u: cfloat; p: var gp_Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_Line.hxx".}
proc d1*(this: Geom2dLine; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom2d_Line.hxx".}
proc d2*(this: Geom2dLine; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_Line.hxx".}
proc d3*(this: Geom2dLine; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d;
        v3: var gp_Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_Line.hxx".}
proc dn*(this: Geom2dLine; u: cfloat; n: cint): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_Line.hxx".}
proc transform*(this: var Geom2dLine; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Line.hxx".}
proc transformedParameter*(this: Geom2dLine; u: cfloat; t: Trsf2dObj): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom2d_Line.hxx".}
proc parametricTransformation*(this: Geom2dLine; t: Trsf2dObj): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom2d_Line.hxx".}
proc copy*(this: Geom2dLine): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Line.hxx".}
proc dumpJson*(this: Geom2dLine; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Geom2d_Line.hxx".}


