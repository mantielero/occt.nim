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





proc newGeomParabola*(prb: gp_Parab): GeomParabola {.cdecl, constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc newGeomParabola*(a2: Ax2Obj; focal: cfloat): GeomParabola {.cdecl, constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc newGeomParabola*(d: Ax1Obj; f: gp_Pnt): GeomParabola {.cdecl, constructor,
    importcpp: "Geom_Parabola(@)", header: "Geom_Parabola.hxx".}
proc setFocal*(this: var GeomParabola; focal: cfloat) {.cdecl, importcpp: "SetFocal",
    header: "Geom_Parabola.hxx".}
proc setParab*(this: var GeomParabola; prb: gp_Parab) {.cdecl, importcpp: "SetParab",
    header: "Geom_Parabola.hxx".}
proc parab*(this: GeomParabola): gp_Parab {.noSideEffect, cdecl, importcpp: "Parab",
                                     header: "Geom_Parabola.hxx".}
proc reversedParameter*(this: GeomParabola; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Parabola.hxx".}
proc firstParameter*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Parabola.hxx".}
proc lastParameter*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Parabola.hxx".}
proc isClosed*(this: GeomParabola): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                       header: "Geom_Parabola.hxx".}
proc isPeriodic*(this: GeomParabola): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom_Parabola.hxx".}
proc directrix*(this: GeomParabola): Ax1Obj {.noSideEffect, cdecl,
                                       importcpp: "Directrix", header: "Geom_Parabola.hxx".}
proc eccentricity*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom_Parabola.hxx".}
proc focus*(this: GeomParabola): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus",
                                   header: "Geom_Parabola.hxx".}
proc focal*(this: GeomParabola): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                      header: "Geom_Parabola.hxx".}
proc parameter*(this: GeomParabola): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom_Parabola.hxx".}
proc d0*(this: GeomParabola; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom_Parabola.hxx".}
proc d1*(this: GeomParabola; u: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Parabola.hxx".}
proc d2*(this: GeomParabola; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Parabola.hxx".}
proc d3*(this: GeomParabola; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Parabola.hxx".}
proc dn*(this: GeomParabola; u: cfloat; n: cint): gp_Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_Parabola.hxx".}
proc transform*(this: var GeomParabola; t: gp_Trsf) {.cdecl, importcpp: "Transform",
    header: "Geom_Parabola.hxx".}
proc transformedParameter*(this: GeomParabola; u: cfloat; t: gp_Trsf): cfloat {.
    noSideEffect, cdecl, importcpp: "TransformedParameter", header: "Geom_Parabola.hxx".}
proc parametricTransformation*(this: GeomParabola; t: gp_Trsf): cfloat {.noSideEffect,
    cdecl, importcpp: "ParametricTransformation", header: "Geom_Parabola.hxx".}
proc copy*(this: GeomParabola): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Parabola.hxx".}
proc dumpJson*(this: GeomParabola; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Parabola.hxx".}



