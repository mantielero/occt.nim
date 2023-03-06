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





proc newGeom2dEllipse*(e: gp_Elips2d): Geom2dEllipse {.cdecl, constructor,
    importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc newGeom2dEllipse*(majorAxis: Ax2dObj; majorRadius: cfloat; minorRadius: cfloat;
                      sense: bool = true): Geom2dEllipse {.cdecl, constructor,
    importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
proc newGeom2dEllipse*(axis: Ax22dObj; majorRadius: cfloat; minorRadius: cfloat): Geom2dEllipse {.
    cdecl, constructor, importcpp: "Geom2d_Ellipse(@)", header: "Geom2d_Ellipse.hxx".}
    
proc setElips2d*(this: var Geom2dEllipse; e: gp_Elips2d) {.cdecl, importcpp: "SetElips2d",
    header: "Geom2d_Ellipse.hxx".}
proc setMajorRadius*(this: var Geom2dEllipse; majorRadius: cfloat) {.cdecl,
    importcpp: "SetMajorRadius", header: "Geom2d_Ellipse.hxx".}
proc setMinorRadius*(this: var Geom2dEllipse; minorRadius: cfloat) {.cdecl,
    importcpp: "SetMinorRadius", header: "Geom2d_Ellipse.hxx".}
proc elips2d*(this: Geom2dEllipse): gp_Elips2d {.noSideEffect, cdecl,
    importcpp: "Elips2d", header: "Geom2d_Ellipse.hxx".}
proc reversedParameter*(this: Geom2dEllipse; u: cfloat): cfloat {.noSideEffect, cdecl,
    importcpp: "ReversedParameter", header: "Geom2d_Ellipse.hxx".}
proc directrix1*(this: Geom2dEllipse): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Directrix1", header: "Geom2d_Ellipse.hxx".}
proc directrix2*(this: Geom2dEllipse): Ax2dObj {.noSideEffect, cdecl,
    importcpp: "Directrix2", header: "Geom2d_Ellipse.hxx".}
proc eccentricity*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Eccentricity", header: "Geom2d_Ellipse.hxx".}
proc focal*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl, importcpp: "Focal",
                                       header: "Geom2d_Ellipse.hxx".}
proc focus1*(this: Geom2dEllipse): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Focus1",
                                       header: "Geom2d_Ellipse.hxx".}
proc focus2*(this: Geom2dEllipse): gp_Pnt2d {.noSideEffect, cdecl, importcpp: "Focus2",
                                       header: "Geom2d_Ellipse.hxx".}
proc majorRadius*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MajorRadius", header: "Geom2d_Ellipse.hxx".}
proc minorRadius*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "MinorRadius", header: "Geom2d_Ellipse.hxx".}
proc parameter*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "Parameter", header: "Geom2d_Ellipse.hxx".}
proc firstParameter*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "FirstParameter", header: "Geom2d_Ellipse.hxx".}
proc lastParameter*(this: Geom2dEllipse): cfloat {.noSideEffect, cdecl,
    importcpp: "LastParameter", header: "Geom2d_Ellipse.hxx".}
proc isClosed*(this: Geom2dEllipse): bool {.noSideEffect, cdecl,
                                        importcpp: "IsClosed", header: "Geom2d_Ellipse.hxx".}
proc isPeriodic*(this: Geom2dEllipse): bool {.noSideEffect, cdecl,
    importcpp: "IsPeriodic", header: "Geom2d_Ellipse.hxx".}
proc d0*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d) {.noSideEffect, cdecl,
    importcpp: "D0", header: "Geom2d_Ellipse.hxx".}
proc d1*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d) {.noSideEffect, cdecl,
    importcpp: "D1", header: "Geom2d_Ellipse.hxx".}
proc d2*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d) {.
    noSideEffect, cdecl, importcpp: "D2", header: "Geom2d_Ellipse.hxx".}
proc d3*(this: Geom2dEllipse; u: cfloat; p: var gp_Pnt2d; v1: var gp_Vec2d; v2: var gp_Vec2d;
        v3: var gp_Vec2d) {.noSideEffect, cdecl, importcpp: "D3", header: "Geom2d_Ellipse.hxx".}
proc dn*(this: Geom2dEllipse; u: cfloat; n: cint): gp_Vec2d {.noSideEffect, cdecl,
    importcpp: "DN", header: "Geom2d_Ellipse.hxx".}
proc transform*(this: var Geom2dEllipse; t: Trsf2dObj) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Ellipse.hxx".}
proc copy*(this: Geom2dEllipse): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Ellipse.hxx".}
proc dumpJson*(this: Geom2dEllipse; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Geom2d_Ellipse.hxx".}


