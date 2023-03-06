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





proc newGeomAxis1Placement*(a1: Ax1Obj): GeomAxis1Placement {.cdecl, constructor,
    importcpp: "Geom_Axis1Placement(@)", header: "Geom_Axis1Placement.hxx".}
proc newGeomAxis1Placement*(p: PntObj; v: DirObj): GeomAxis1Placement {.cdecl, constructor,
    importcpp: "Geom_Axis1Placement(@)", header: "Geom_Axis1Placement.hxx".}
proc ax1*(this: GeomAxis1Placement): Ax1Obj {.noSideEffect, cdecl, importcpp: "Ax1",
                                       header: "Geom_Axis1Placement.hxx".}
proc reverse*(this: var GeomAxis1Placement) {.cdecl, importcpp: "Reverse",
    header: "Geom_Axis1Placement.hxx".}
proc reversed*(this: GeomAxis1Placement): Handle[GeomAxis1Placement] {.noSideEffect,
    cdecl, importcpp: "Reversed", header: "Geom_Axis1Placement.hxx".}
proc setDirection*(this: var GeomAxis1Placement; v: DirObj) {.cdecl,
    importcpp: "SetDirection", header: "Geom_Axis1Placement.hxx".}
proc transform*(this: var GeomAxis1Placement; t: TrsfObj) {.cdecl, importcpp: "Transform",
    header: "Geom_Axis1Placement.hxx".}
proc copy*(this: GeomAxis1Placement): Handle[GeomGeometry] {.noSideEffect, cdecl,
    importcpp: "Copy", header: "Geom_Axis1Placement.hxx".}












