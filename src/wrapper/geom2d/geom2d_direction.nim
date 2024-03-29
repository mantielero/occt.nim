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





proc newGeom2dDirection*(x: cfloat; y: cfloat): Geom2dDirection {.cdecl, constructor,
    importcpp: "Geom2d_Direction(@)", header: "Geom2d_Direction.hxx".}
proc newGeom2dDirection*(v: gp_Dir2d): Geom2dDirection {.cdecl, constructor,
    importcpp: "Geom2d_Direction(@)", header: "Geom2d_Direction.hxx".}
    
proc setCoord*(this: var Geom2dDirection; x: cfloat; y: cfloat) {.cdecl,
    importcpp: "SetCoord", header: "Geom2d_Direction.hxx".}
proc setDir2d*(this: var Geom2dDirection; v: gp_Dir2d) {.cdecl, importcpp: "SetDir2d",
    header: "Geom2d_Direction.hxx".}
proc setX*(this: var Geom2dDirection; x: cfloat) {.cdecl, importcpp: "SetX",
    header: "Geom2d_Direction.hxx".}
proc setY*(this: var Geom2dDirection; y: cfloat) {.cdecl, importcpp: "SetY",
    header: "Geom2d_Direction.hxx".}
proc dir2d*(this: Geom2dDirection): gp_Dir2d {.noSideEffect, cdecl, importcpp: "Dir2d",
                                        header: "Geom2d_Direction.hxx".}
proc magnitude*(this: Geom2dDirection): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", header: "Geom2d_Direction.hxx".}
proc squareMagnitude*(this: Geom2dDirection): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "Geom2d_Direction.hxx".}
proc crossed*(this: Geom2dDirection; other: Handle[Geom2dVector]): cfloat {.
    noSideEffect, cdecl, importcpp: "Crossed", header: "Geom2d_Direction.hxx".}
proc `^`*(this: Geom2dDirection; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "(# ^ #)", header: "Geom2d_Direction.hxx".}
proc transform*(this: var Geom2dDirection; t: gp_Trsf2d) {.cdecl, importcpp: "Transform",
    header: "Geom2d_Direction.hxx".}
proc copy*(this: Geom2dDirection): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_Direction.hxx".}


