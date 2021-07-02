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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of gp_Trsf"
discard "forward decl of Geom_Geometry"
discard "forward decl of Geom_Axis2Placement"
discard "forward decl of Geom_Axis2Placement"
type
  HandleGeomAxis2Placement* = Handle[GeomAxis2Placement]

## ! Describes a right-handed coordinate system in 3D space.
## ! A coordinate system is defined by:
## ! - its origin, also termed the "Location point" of the coordinate system,
## ! - three orthogonal unit vectors, termed respectively
## ! the "X Direction", "Y Direction" and "Direction" (or
## ! "main Direction") of the coordinate system.
## ! As a Geom_Axis2Placement coordinate system is
## ! right-handed, its "Direction" is always equal to the
## ! cross product of its "X Direction" and "Y Direction".
## ! The "Direction" of a coordinate system is called the
## ! "main Direction" because when this unit vector is
## ! modified, the "X Direction" and "Y Direction" are
## ! recomputed, whereas when the "X Direction" or "Y
## ! Direction" is changed, the "main Direction" is
## ! retained. The "main Direction" is also the "Z Direction".
## ! Note: Geom_Axis2Placement coordinate systems
## ! provide the same kind of "geometric" services as
## ! gp_Ax2 coordinate systems but have more complex
## ! data structures. The geometric objects provided by
## ! the Geom package use gp_Ax2 objects to include
## ! coordinate systems in their data structures, or to
## ! define the geometric transformations, which are applied to them.
## ! Geom_Axis2Placement coordinate systems are
## ! used in a context where they can be shared by
## ! several objects contained inside a common data structure.

type
  GeomAxis2Placement* {.importcpp: "Geom_Axis2Placement",
                       header: "Geom_Axis2Placement.hxx", bycopy.} = object of GeomAxisPlacement ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## a
                                                                                          ## transient
                                                                                          ## copy
                                                                                          ## of
                                                                                          ## A2.


proc constructGeomAxis2Placement*(a2: GpAx2): GeomAxis2Placement {.constructor,
    importcpp: "Geom_Axis2Placement(@)", header: "Geom_Axis2Placement.hxx".}
proc constructGeomAxis2Placement*(p: GpPnt; n: GpDir; vx: GpDir): GeomAxis2Placement {.
    constructor, importcpp: "Geom_Axis2Placement(@)",
    header: "Geom_Axis2Placement.hxx".}
proc setAx2*(this: var GeomAxis2Placement; a2: GpAx2) {.importcpp: "SetAx2",
    header: "Geom_Axis2Placement.hxx".}
proc setDirection*(this: var GeomAxis2Placement; v: GpDir) {.
    importcpp: "SetDirection", header: "Geom_Axis2Placement.hxx".}
proc setXDirection*(this: var GeomAxis2Placement; vx: GpDir) {.
    importcpp: "SetXDirection", header: "Geom_Axis2Placement.hxx".}
proc setYDirection*(this: var GeomAxis2Placement; vy: GpDir) {.
    importcpp: "SetYDirection", header: "Geom_Axis2Placement.hxx".}
proc ax2*(this: GeomAxis2Placement): GpAx2 {.noSideEffect, importcpp: "Ax2",
    header: "Geom_Axis2Placement.hxx".}
proc xDirection*(this: GeomAxis2Placement): GpDir {.noSideEffect,
    importcpp: "XDirection", header: "Geom_Axis2Placement.hxx".}
proc yDirection*(this: GeomAxis2Placement): GpDir {.noSideEffect,
    importcpp: "YDirection", header: "Geom_Axis2Placement.hxx".}
proc transform*(this: var GeomAxis2Placement; t: GpTrsf) {.importcpp: "Transform",
    header: "Geom_Axis2Placement.hxx".}
proc copy*(this: GeomAxis2Placement): Handle[GeomGeometry] {.noSideEffect,
    importcpp: "Copy", header: "Geom_Axis2Placement.hxx".}
type
  GeomAxis2PlacementbaseType* = GeomAxisPlacement

proc getTypeName*(): cstring {.importcpp: "Geom_Axis2Placement::get_type_name(@)",
                            header: "Geom_Axis2Placement.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Geom_Axis2Placement::get_type_descriptor(@)",
    header: "Geom_Axis2Placement.hxx".}
proc dynamicType*(this: GeomAxis2Placement): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Geom_Axis2Placement.hxx".}

