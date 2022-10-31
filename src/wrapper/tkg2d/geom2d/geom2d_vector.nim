import geom2d_types
import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types



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





proc reverse*(this: var Geom2dVector) {.cdecl, importcpp: "Reverse", header: "Geom2d_Vector.hxx".}
proc reversed*(this: Geom2dVector): Handle[Geom2dVector] {.noSideEffect, cdecl,
    importcpp: "Reversed", header: "Geom2d_Vector.hxx".}
proc angle*(this: Geom2dVector; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "Angle", header: "Geom2d_Vector.hxx".}
proc coord*(this: Geom2dVector; x: var cfloat; y: var cfloat) {.noSideEffect, cdecl,
    importcpp: "Coord", header: "Geom2d_Vector.hxx".}
proc magnitude*(this: Geom2dVector): cfloat {.noSideEffect, cdecl,
    importcpp: "Magnitude", header: "Geom2d_Vector.hxx".}
proc squareMagnitude*(this: Geom2dVector): cfloat {.noSideEffect, cdecl,
    importcpp: "SquareMagnitude", header: "Geom2d_Vector.hxx".}
proc x*(this: Geom2dVector): cfloat {.noSideEffect, cdecl, importcpp: "X", header: "Geom2d_Vector.hxx".}
proc y*(this: Geom2dVector): cfloat {.noSideEffect, cdecl, importcpp: "Y", header: "Geom2d_Vector.hxx".}
proc crossed*(this: Geom2dVector; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "Crossed", header: "Geom2d_Vector.hxx".}
proc dot*(this: Geom2dVector; other: Handle[Geom2dVector]): cfloat {.noSideEffect,
    cdecl, importcpp: "Dot", header: "Geom2d_Vector.hxx".}
proc vec2d*(this: Geom2dVector): Vec2dObj {.noSideEffect, cdecl, importcpp: "Vec2d",
                                     header: "Geom2d_Vector.hxx".}

