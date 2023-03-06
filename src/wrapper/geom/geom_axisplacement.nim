import ../gp/gp_types
import ../standard/standard_types
import geom_types





















##  Created on: 1993-03-09
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





proc setAxis*(this: var GeomAxisPlacement; a1: Ax1Obj) {.cdecl, importcpp: "SetAxis",
    header: "Geom_AxisPlacement.hxx".}
proc setDirection*(this: var GeomAxisPlacement; v: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom_AxisPlacement.hxx".}
proc setLocation*(this: var GeomAxisPlacement; p: gp_Pnt) {.cdecl,
    importcpp: "SetLocation", header: "Geom_AxisPlacement.hxx".}
proc angle*(this: GeomAxisPlacement; other: Handle[GeomAxisPlacement]): cfloat {.
    noSideEffect, cdecl, importcpp: "Angle", header: "Geom_AxisPlacement.hxx".}
proc axis*(this: GeomAxisPlacement): Ax1Obj {.noSideEffect, cdecl, importcpp: "Axis",
                                       header: "Geom_AxisPlacement.hxx".}
proc direction*(this: GeomAxisPlacement): DirObj {.noSideEffect, cdecl,
    importcpp: "Direction", header: "Geom_AxisPlacement.hxx".}
proc location*(this: GeomAxisPlacement): gp_Pnt {.noSideEffect, cdecl,
    importcpp: "Location", header: "Geom_AxisPlacement.hxx".}










