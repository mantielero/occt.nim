import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
import geom_types
import ../../tkmath/geomabs/geomabs_types







##  Created on: 1993-03-10
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





proc newGeomLine*(a1: Ax1Obj): GeomLine {.cdecl, constructor, importcpp: "Geom_Line(@)",
                                   header: "Geom_Line.hxx".}
proc newGeomLine*(L: LinObj): GeomLine {.cdecl, constructor, importcpp: "Geom_Line(@)",
                                  header: "Geom_Line.hxx".}
proc newGeomLine*(p: PntObj; v: DirObj): GeomLine {.cdecl, constructor,
                                        importcpp: "Geom_Line(@)", header: "Geom_Line.hxx".}
proc setLin*(this: var GeomLine; L: LinObj) {.cdecl, importcpp: "SetLin", header: "Geom_Line.hxx".}
proc setDirection*(this: var GeomLine; v: DirObj) {.cdecl, importcpp: "SetDirection",
    header: "Geom_Line.hxx".}
proc setLocation*(this: var GeomLine; p: PntObj) {.cdecl, importcpp: "SetLocation",
    header: "Geom_Line.hxx".}
proc setPosition*(this: var GeomLine; a1: Ax1Obj) {.cdecl, importcpp: "SetPosition",
    header: "Geom_Line.hxx".}
proc lin*(this: GeomLine): LinObj {.noSideEffect, cdecl, importcpp: "Lin", header: "Geom_Line.hxx".}
proc position*(this: GeomLine): Ax1Obj {.noSideEffect, cdecl, importcpp: "Position",
                                  header: "Geom_Line.hxx".}
proc reverse*(this: var GeomLine) {.cdecl, importcpp: "Reverse", header: "Geom_Line.hxx".}
proc reversedParameter*(this: GeomLine; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Line.hxx".}
proc firstParameter*(this: GeomLine): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Line.hxx".}
proc lastParameter*(this: GeomLine): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Line.hxx".}
proc isClosed*(this: GeomLine): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                   header: "Geom_Line.hxx".}
proc isPeriodic*(this: GeomLine): bool {.noSideEffect, cdecl, importcpp: "IsPeriodic",
                                     header: "Geom_Line.hxx".}
proc continuity*(this: GeomLine): GeomAbsShape {.noSideEffect, cdecl,
    importcpp: "Continuity", header: "Geom_Line.hxx".}
proc isCN*(this: GeomLine; n: cint): bool {.noSideEffect, cdecl, importcpp: "IsCN",
                                      header: "Geom_Line.hxx".}
proc d0*(this: GeomLine; u: cfloat; p: var PntObj) {.noSideEffect, cdecl, importcpp: "D0",
    header: "Geom_Line.hxx".}
proc d1*(this: GeomLine; u: cfloat; p: var PntObj; v1: var VecObj) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Line.hxx".}
proc d2*(this: GeomLine; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Line.hxx".}
proc d3*(this: GeomLine; u: cfloat; p: var PntObj; v1: var VecObj; v2: var VecObj; v3: var VecObj) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Line.hxx".}
proc dn*(this: GeomLine; u: cfloat; n: cint): VecObj {.noSideEffect, cdecl, importcpp: "DN",
    header: "Geom_Line.hxx".}
proc transform*(this: var GeomLine; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Line.hxx".}
proc transformedParameter*(this: GeomLine; u: cfloat; t: TrsfObj): cfloat {.noSideEffect,
    cdecl, importcpp: "TransformedParameter", header: "Geom_Line.hxx".}
proc parametricTransformation*(this: GeomLine; t: TrsfObj): cfloat {.noSideEffect, cdecl,
    importcpp: "ParametricTransformation", header: "Geom_Line.hxx".}
proc copy*(this: GeomLine): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Line.hxx".}
proc dumpJson*(this: GeomLine; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, cdecl, importcpp: "DumpJson", header: "Geom_Line.hxx".}



