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





proc newGeom2dAxisPlacement*(a: Ax2dObj): Geom2dAxisPlacement {.cdecl, constructor,
    importcpp: "Geom2d_AxisPlacement(@)", header: "Geom2d_AxisPlacement.hxx".}
proc newGeom2dAxisPlacement*(p: gp_Pnt2d; v: Dir2dObj): Geom2dAxisPlacement {.cdecl,
    constructor, importcpp: "Geom2d_AxisPlacement(@)", header: "Geom2d_AxisPlacement.hxx".}
proc reverse*(this: var Geom2dAxisPlacement) {.cdecl, importcpp: "Reverse",
    header: "Geom2d_AxisPlacement.hxx".}
proc reversed*(this: Geom2dAxisPlacement): Handle[Geom2dAxisPlacement] {.
    noSideEffect, cdecl, importcpp: "Reversed", header: "Geom2d_AxisPlacement.hxx".}
proc setAxis*(this: var Geom2dAxisPlacement; a: Ax2dObj) {.cdecl, importcpp: "SetAxis",
    header: "Geom2d_AxisPlacement.hxx".}
proc setDirection*(this: var Geom2dAxisPlacement; v: Dir2dObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom2d_AxisPlacement.hxx".}
proc setLocation*(this: var Geom2dAxisPlacement; p: gp_Pnt2d) {.cdecl,
    importcpp: "SetLocation", header: "Geom2d_AxisPlacement.hxx".}
proc angle*(this: Geom2dAxisPlacement; other: Handle[Geom2dAxisPlacement]): cfloat {.
    noSideEffect, cdecl, importcpp: "Angle", header: "Geom2d_AxisPlacement.hxx".}
proc ax2d*(this: Geom2dAxisPlacement): Ax2dObj {.noSideEffect, cdecl, importcpp: "Ax2d",
    header: "Geom2d_AxisPlacement.hxx".}
proc direction*(this: Geom2dAxisPlacement): Dir2dObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Geom2d_AxisPlacement.hxx".}
proc location*(this: Geom2dAxisPlacement): gp_Pnt2d {.noSideEffect, cdecl,
    importcpp: "Location", header: "Geom2d_AxisPlacement.hxx".}
proc transform*(this: var Geom2dAxisPlacement; t: Trsf2dObj) {.cdecl,
    importcpp: "Transform", header: "Geom2d_AxisPlacement.hxx".}
proc copy*(this: Geom2dAxisPlacement): Handle[Geom2dGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom2d_AxisPlacement.hxx".}


