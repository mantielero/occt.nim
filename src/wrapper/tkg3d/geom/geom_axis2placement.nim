import ../../tkmath/gp/gp_types
import ../../tkernel/standard/standard_types
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





proc newGeomAxis2Placement*(a2: Ax2Obj): GeomAxis2Placement {.cdecl, constructor,
    importcpp: "Geom_Axis2Placement(@)", header: "Geom_Axis2Placement.hxx".}
proc newGeomAxis2Placement*(p: PntObj; n: DirObj; vx: DirObj): GeomAxis2Placement {.cdecl,
    constructor, importcpp: "Geom_Axis2Placement(@)", header: "Geom_Axis2Placement.hxx".}
proc setAx2*(this: var GeomAxis2Placement; a2: Ax2Obj) {.cdecl, importcpp: "SetAx2",
    header: "Geom_Axis2Placement.hxx".}
proc setDirection*(this: var GeomAxis2Placement; v: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom_Axis2Placement.hxx".}
proc setXDirection*(this: var GeomAxis2Placement; vx: DirObj) {.cdecl,
    importcpp: "SetXDirection", header: "Geom_Axis2Placement.hxx".}
proc setYDirection*(this: var GeomAxis2Placement; vy: DirObj) {.cdecl,
    importcpp: "SetYDirection", header: "Geom_Axis2Placement.hxx".}
proc ax2*(this: GeomAxis2Placement): Ax2Obj {.noSideEffect, cdecl, importcpp: "Ax2",
                                       header: "Geom_Axis2Placement.hxx".}
proc xDirection*(this: GeomAxis2Placement): DirObj {.noSideEffect, cdecl,
    importcpp: "XDirection", header: "Geom_Axis2Placement.hxx".}
proc yDirection*(this: GeomAxis2Placement): DirObj {.noSideEffect, cdecl,
    importcpp: "YDirection", header: "Geom_Axis2Placement.hxx".}
proc transform*(this: var GeomAxis2Placement; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Axis2Placement.hxx".}
proc copy*(this: GeomAxis2Placement): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Axis2Placement.hxx".}









