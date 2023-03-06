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





proc newGeomEllipse*(e: gp_Elips): GeomEllipse {.cdecl, constructor,
    importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc newGeomEllipse*(a2: Ax2Obj; majorRadius: cfloat; minorRadius: cfloat): GeomEllipse {.
    cdecl, constructor, importcpp: "Geom_Ellipse(@)", header: "Geom_Ellipse.hxx".}
proc setElips*(this: var GeomEllipse; e: gp_Elips) {.cdecl, importcpp: "SetElips",
    header: "Geom_Ellipse.hxx".}
proc setMajorRadius*(this: var GeomEllipse; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "Geom_Ellipse.hxx".}
proc setMinorRadius*(this: var GeomEllipse; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "Geom_Ellipse.hxx".}
proc elips*(this: GeomEllipse): gp_Elips {.noSideEffect, cdecl, importcpp: "Elips",
                                    header: "Geom_Ellipse.hxx".}
proc reversedParameter*(this: GeomEllipse; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom_Ellipse.hxx".}
proc directrix1*(this: GeomEllipse): Ax1Obj {.noSideEffect, cdecl,
                                       importcpp: "Directrix1", header: "Geom_Ellipse.hxx".}
proc directrix2*(this: GeomEllipse): Ax1Obj {.noSideEffect, cdecl,
                                       importcpp: "Directrix2", header: "Geom_Ellipse.hxx".}
proc eccentricity*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom_Ellipse.hxx".}
proc focal*(this: GeomEllipse): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                     header: "Geom_Ellipse.hxx".}
proc focus1*(this: GeomEllipse): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus1",
                                   header: "Geom_Ellipse.hxx".}
proc focus2*(this: GeomEllipse): gp_Pnt {.noSideEffect, cdecl, importcpp: "Focus2",
                                   header: "Geom_Ellipse.hxx".}
proc majorRadius*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", header: "Geom_Ellipse.hxx".}
proc minorRadius*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", header: "Geom_Ellipse.hxx".}
proc parameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom_Ellipse.hxx".}
proc firstParameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom_Ellipse.hxx".}
proc lastParameter*(this: GeomEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom_Ellipse.hxx".}
proc isClosed*(this: GeomEllipse): bool {.noSideEffect, cdecl, importcpp: "IsClosed",
                                      header: "Geom_Ellipse.hxx".}
proc isPeriodic*(this: GeomEllipse): bool {.noSideEffect, cdecl,
                                        importcpp: "IsPeriodic", header: "Geom_Ellipse.hxx".}
proc d0*(this: GeomEllipse; u: cfloat; p: var gp_Pnt) {.noSideEffect, cdecl, importcpp: "D0",
    header: "Geom_Ellipse.hxx".}
proc d1*(this: GeomEllipse; u: cfloat; p: var gp_Pnt; v1: var gp_Vec) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom_Ellipse.hxx".}
proc d2*(this: GeomEllipse; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec) {.noSideEffect,
    cdecl, importcpp: "D2", header: "Geom_Ellipse.hxx".}
proc d3*(this: GeomEllipse; u: cfloat; p: var gp_Pnt; v1: var gp_Vec; v2: var gp_Vec; v3: var gp_Vec) {.
    noSideEffect, cdecl, importcpp: "D3", header: "Geom_Ellipse.hxx".}
proc dn*(this: GeomEllipse; u: cfloat; n: cint): gp_Vec {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom_Ellipse.hxx".}
proc transform*(this: var GeomEllipse; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Ellipse.hxx".}
proc copy*(this: GeomEllipse): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Ellipse.hxx".}
proc dumpJson*(this: GeomEllipse; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom_Ellipse.hxx".}



